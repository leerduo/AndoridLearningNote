.class public Lcom/boohee/one/easemob/utils/HXCommonUtils;
.super Ljava/lang/Object;
.source "HXCommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/easemob/utils/HXCommonUtils$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/boohee/one/easemob/utils/HXCommonUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/easemob/utils/HXCommonUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static getMessageDigest(Lcom/easemob/chat/EMMessage;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Lcom/easemob/chat/EMMessage;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string v0, ""

    .line 63
    .local v0, "digest":Ljava/lang/String;
    sget-object v2, Lcom/boohee/one/easemob/utils/HXCommonUtils$1;->$SwitchMap$com$easemob$chat$EMMessage$Type:[I

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 98
    sget-object v2, Lcom/boohee/one/easemob/utils/HXCommonUtils;->TAG:Ljava/lang/String;

    const-string v3, "error, unknow type"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, ""

    .line 102
    :goto_0
    return-object v2

    .line 65
    :pswitch_0
    iget-object v2, p0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v3, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v2, v3, :cond_0

    .line 68
    const v2, 0x7f0702ff

    invoke-static {p1, v2}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 69
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 70
    goto :goto_0

    .line 73
    :cond_0
    const v2, 0x7f0702fe

    invoke-static {p1, v2}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 102
    goto :goto_0

    .line 77
    :pswitch_1
    const v2, 0x7f07041b

    invoke-static {p1, v2}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto :goto_1

    .line 80
    :pswitch_2
    const v2, 0x7f070627

    invoke-static {p1, v2}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 81
    goto :goto_1

    .line 83
    :pswitch_3
    const v2, 0x7f070615

    invoke-static {p1, v2}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    goto :goto_1

    .line 86
    :pswitch_4
    const-string v2, "is_voice_call"

    invoke-virtual {p0, v2, v4}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/TextMessageBody;

    .line 88
    .local v1, "txtBody":Lcom/easemob/chat/TextMessageBody;
    invoke-virtual {v1}, Lcom/easemob/chat/TextMessageBody;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_1

    .line 90
    .end local v1    # "txtBody":Lcom/easemob/chat/TextMessageBody;
    :cond_1
    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/TextMessageBody;

    .line 91
    .restart local v1    # "txtBody":Lcom/easemob/chat/TextMessageBody;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070628

    invoke-static {p1, v3}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/easemob/chat/TextMessageBody;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    goto :goto_1

    .line 95
    .end local v1    # "txtBody":Lcom/easemob/chat/TextMessageBody;
    :pswitch_5
    const v2, 0x7f070239

    invoke-static {p1, v2}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTopActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 112
    .local v0, "manager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    .line 115
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 117
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static isExitsSdcard()Z
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    .line 31
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 33
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 38
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
