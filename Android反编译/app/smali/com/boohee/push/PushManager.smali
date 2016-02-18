.class public abstract Lcom/boohee/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field public static final KEY_IS_BINDED:Ljava/lang/String; = "KEY_IS_BINDED"

.field public static final KEY_REG_ID:Ljava/lang/String; = "KEY_REG_ID"

.field protected static pref:Lcom/boohee/database/UserPreference;

.field private static final pushManager:Lcom/boohee/push/PushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/boohee/push/XMPush;

    invoke-direct {v0}, Lcom/boohee/push/XMPush;-><init>()V

    sput-object v0, Lcom/boohee/push/PushManager;->pushManager:Lcom/boohee/push/PushManager;

    .line 39
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    sput-object v0, Lcom/boohee/push/PushManager;->pref:Lcom/boohee/database/UserPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/boohee/push/PushManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/boohee/push/PushManager;->pushManager:Lcom/boohee/push/PushManager;

    return-object v0
.end method

.method private static handleRegId(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBind"    # Z

    .prologue
    .line 77
    sget-object v2, Lcom/boohee/push/PushManager;->pref:Lcom/boohee/database/UserPreference;

    const-string v3, "KEY_REG_ID"

    invoke-virtual {v2, v3}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "regId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 82
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v2, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "pkg_name"

    const-string v3, "com.boohee.one"

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "reg_id"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz p1, :cond_1

    const-string v2, "/api/v1/devices/android_dove_connect"

    :goto_1
    new-instance v3, Lcom/boohee/push/PushManager$1;

    invoke-direct {v3, p0, p1}, Lcom/boohee/push/PushManager$1;-><init>(Landroid/content/Context;Z)V

    invoke-static {v2, v0, v3, p0}, Lcom/boohee/one/http/client/MessengerClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v2, "/api/v1/devices/android_dove_disconnect"

    goto :goto_1
.end method


# virtual methods
.method public bindRegId(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v2, Lcom/boohee/push/PushManager;->pref:Lcom/boohee/database/UserPreference;

    const-string v3, "KEY_IS_BINDED"

    invoke-virtual {v2, v3}, Lcom/boohee/database/UserPreference;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "isBind":Z
    invoke-static {p1}, Lcom/boohee/utils/AccountUtils;->isVisitorAccount(Landroid/content/Context;)Z

    move-result v1

    .line 63
    .local v1, "isVistor":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 64
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/boohee/push/PushManager;->handleRegId(Landroid/content/Context;Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public abstract initPush(Landroid/content/Context;)V
.end method

.method protected isMainProcess(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 112
    .local v5, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "mainProcessName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 114
    .local v4, "myPid":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 115
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_0

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    const/4 v6, 0x1

    .line 119
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public abstract pausePush()V
.end method

.method public abstract resumePush()V
.end method

.method public saveToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_REG_ID"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected shouldInitPush(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, "defaultPre":Landroid/content/SharedPreferences;
    const-string v3, "isReceivePush"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 106
    .local v1, "isReceivePush":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/boohee/push/PushManager;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unBindRegId(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/boohee/push/PushManager;->handleRegId(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method
