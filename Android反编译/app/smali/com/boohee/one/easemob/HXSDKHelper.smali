.class public abstract Lcom/boohee/one/easemob/HXSDKHelper;
.super Ljava/lang/Object;
.source "HXSDKHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HXSDKHelper"

.field private static me:Lcom/boohee/one/easemob/HXSDKHelper;


# instance fields
.field private alreadyNotified:Z

.field protected appContext:Landroid/content/Context;

.field protected avatarUrl:Ljava/lang/String;

.field protected booheeGroupId:Ljava/lang/String;

.field protected booheeUserName:Ljava/lang/String;

.field protected connectionListener:Lcom/easemob/EMConnectionListener;

.field protected groupId:Ljava/lang/String;

.field protected hxId:Ljava/lang/String;

.field protected hxModel:Lcom/boohee/one/easemob/HXSDKModel;

.field private isBlackListSyncedWithServer:Z

.field private isContactsSyncedWithServer:Z

.field private isGroupsSyncedWithServer:Z

.field private isSyncingBlackListWithServer:Z

.field private isSyncingContactsWithServer:Z

.field private isSyncingGroupsWithServer:Z

.field public isVideoCalling:Z

.field public isVoiceCalling:Z

.field protected loginRetryCount:I

.field protected notifier:Lcom/boohee/one/easemob/HXNotifier;

.field protected password:Ljava/lang/String;

.field private sdkInited:Z

.field private syncBlackListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private syncContactsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;",
            ">;"
        }
    .end annotation
.end field

.field private syncGroupsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/boohee/one/easemob/HXSDKHelper;->me:Lcom/boohee/one/easemob/HXSDKHelper;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    .line 87
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->connectionListener:Lcom/easemob/EMConnectionListener;

    .line 92
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->booheeUserName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->avatarUrl:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->sdkInited:Z

    .line 124
    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->notifier:Lcom/boohee/one/easemob/HXNotifier;

    .line 141
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingGroupsWithServer:Z

    .line 143
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingContactsWithServer:Z

    .line 145
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingBlackListWithServer:Z

    .line 147
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isGroupsSyncedWithServer:Z

    .line 149
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isContactsSyncedWithServer:Z

    .line 151
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isBlackListSyncedWithServer:Z

    .line 153
    iput-boolean v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->alreadyNotified:Z

    .line 159
    sput-object p0, Lcom/boohee/one/easemob/HXSDKHelper;->me:Lcom/boohee/one/easemob/HXSDKHelper;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/easemob/HXSDKHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/easemob/HXSDKHelper;->loginHX(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/easemob/HXSDKHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->getHXAccountFromBoohee()V

    return-void
.end method

.method static synthetic access$202(Lcom/boohee/one/easemob/HXSDKHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isGroupsSyncedWithServer:Z

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/one/easemob/HXSDKHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingGroupsWithServer:Z

    return p1
.end method

.method static synthetic access$402(Lcom/boohee/one/easemob/HXSDKHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isContactsSyncedWithServer:Z

    return p1
.end method

.method static synthetic access$502(Lcom/boohee/one/easemob/HXSDKHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingContactsWithServer:Z

    return p1
.end method

.method static synthetic access$602(Lcom/boohee/one/easemob/HXSDKHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isBlackListSyncedWithServer:Z

    return p1
.end method

.method static synthetic access$702(Lcom/boohee/one/easemob/HXSDKHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/HXSDKHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingBlackListWithServer:Z

    return p1
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 10
    .param p1, "pID"    # I

    .prologue
    .line 689
    const/4 v6, 0x0

    .line 690
    .local v6, "processName":Ljava/lang/String;
    iget-object v8, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 691
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 692
    .local v4, "l":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 693
    .local v2, "i":Ljava/util/Iterator;
    iget-object v8, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 694
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 695
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v8

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 697
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_0

    .line 698
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 702
    .local v1, "c":Ljava/lang/CharSequence;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .line 709
    .end local v1    # "c":Ljava/lang/CharSequence;
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "processName":Ljava/lang/String;
    .local v7, "processName":Ljava/lang/String;
    :goto_1
    return-object v7

    .end local v7    # "processName":Ljava/lang/String;
    .restart local v6    # "processName":Ljava/lang/String;
    :cond_1
    move-object v7, v6

    .end local v6    # "processName":Ljava/lang/String;
    .restart local v7    # "processName":Ljava/lang/String;
    goto :goto_1

    .line 705
    .end local v7    # "processName":Ljava/lang/String;
    .restart local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v6    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private getHXAccountFromBoohee()V
    .locals 3

    .prologue
    .line 451
    const-string v0, "/api/v1/user/im"

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$3;

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/easemob/HXSDKHelper$3;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 482
    return-void
.end method

.method public static getInstance()Lcom/boohee/one/easemob/HXSDKHelper;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/boohee/one/easemob/HXSDKHelper;->me:Lcom/boohee/one/easemob/HXSDKHelper;

    return-object v0
.end method

.method private loginHX(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imUserName"    # Ljava/lang/String;
    .param p2, "imPwd"    # Ljava/lang/String;

    .prologue
    .line 485
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/HXSDKHelper$4;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/easemob/chat/EMChatManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/easemob/EMCallBack;)V

    .line 502
    return-void
.end method


# virtual methods
.method public addSyncBlackListListener(Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .prologue
    .line 750
    if-nez p1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncBlackListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncBlackListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSyncContactListener(Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .prologue
    .line 732
    if-nez p1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncContactsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncContactsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSyncGroupListener(Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .prologue
    .line 714
    if-nez p1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncGroupsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncGroupsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public asyncFetchBlackListFromServer()V
    .locals 2

    .prologue
    .line 658
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$9;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/HXSDKHelper$9;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchBlackListFromServer(Lcom/easemob/EMValueCallBack;)V

    .line 672
    return-void
.end method

.method public asyncFetchBlackListFromServer(Lcom/easemob/EMValueCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/EMValueCallBack",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, "callback":Lcom/easemob/EMValueCallBack;, "Lcom/easemob/EMValueCallBack<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingBlackListWithServer:Z

    if-eqz v0, :cond_0

    .line 929
    :goto_0
    return-void

    .line 894
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingBlackListWithServer:Z

    .line 896
    new-instance v0, Lcom/boohee/one/easemob/HXSDKHelper$12;

    invoke-direct {v0, p0, p1}, Lcom/boohee/one/easemob/HXSDKHelper$12;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;Lcom/easemob/EMValueCallBack;)V

    invoke-virtual {v0}, Lcom/boohee/one/easemob/HXSDKHelper$12;->start()V

    goto :goto_0
.end method

.method public asyncFetchContactsFromServer()V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/boohee/one/easemob/HXSDKHelper$7;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/HXSDKHelper$7;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchContactsFromServer(Lcom/easemob/EMValueCallBack;)V

    .line 638
    return-void
.end method

.method public asyncFetchContactsFromServer(Lcom/easemob/EMValueCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/EMValueCallBack",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p1, "callback":Lcom/easemob/EMValueCallBack;, "Lcom/easemob/EMValueCallBack<Ljava/util/List<Ljava/lang/String;>;>;"
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingContactsWithServer:Z

    if-eqz v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 847
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingContactsWithServer:Z

    .line 849
    new-instance v0, Lcom/boohee/one/easemob/HXSDKHelper$11;

    invoke-direct {v0, p0, p1}, Lcom/boohee/one/easemob/HXSDKHelper$11;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;Lcom/easemob/EMValueCallBack;)V

    invoke-virtual {v0}, Lcom/boohee/one/easemob/HXSDKHelper$11;->start()V

    goto :goto_0
.end method

.method public asyncFetchGroupsFromServer()V
    .locals 2

    .prologue
    .line 561
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$6;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/HXSDKHelper$6;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchGroupsFromServer(Lcom/easemob/EMCallBack;)V

    .line 583
    return-void
.end method

.method public declared-synchronized asyncFetchGroupsFromServer(Lcom/easemob/EMCallBack;)V
    .locals 3
    .param p1, "callback"    # Lcom/easemob/EMCallBack;

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingGroupsWithServer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 833
    :goto_0
    monitor-exit p0

    return-void

    .line 779
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingGroupsWithServer:Z

    .line 781
    const-string v0, "/api/v1/user/team_members"

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$10;

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/one/easemob/HXSDKHelper$10;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;Landroid/content/Context;Lcom/easemob/EMCallBack;)V

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createModel()Lcom/boohee/one/easemob/HXSDKModel;
.end method

.method protected createNotifier()Lcom/boohee/one/easemob/HXNotifier;
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lcom/boohee/one/easemob/HXNotifier;

    invoke-direct {v0}, Lcom/boohee/one/easemob/HXNotifier;-><init>()V

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getBooheeGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/HXSDKModel;->getBooheeGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getHXId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/HXSDKModel;->getHXId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Lcom/boohee/one/easemob/HXSDKModel;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    return-object v0
.end method

.method protected getNotificationListener()Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotifier()Lcom/boohee/one/easemob/HXNotifier;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->notifier:Lcom/boohee/one/easemob/HXNotifier;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/HXSDKModel;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfoWithHXId(Ljava/lang/String;)V
    .locals 3
    .param p1, "imUserName"    # Ljava/lang/String;

    .prologue
    .line 641
    const-string v0, "/api/v1/user/member?name=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$8;

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/easemob/HXSDKHelper$8;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 655
    return-void
.end method

.method protected initHXOptions()V
    .locals 3

    .prologue
    .line 310
    const-string v1, "HXSDKHelper"

    const-string v2, "init HuanXin Options"

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    .line 315
    .local v0, "options":Lcom/easemob/chat/EMChatOptions;
    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXSDKModel;->getAcceptInvitationAlways()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatOptions;->setAcceptInvitationAlways(Z)V

    .line 317
    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXSDKModel;->getUseHXRoster()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatOptions;->setUseRoster(Z)V

    .line 319
    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXSDKModel;->getRequireReadAck()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatOptions;->setRequireAck(Z)V

    .line 321
    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXSDKModel;->getRequireDeliveryAck()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatOptions;->setRequireDeliveryAck(Z)V

    .line 323
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatOptions;->setNumberOfMessagesLoaded(I)V

    .line 325
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->createNotifier()Lcom/boohee/one/easemob/HXNotifier;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->notifier:Lcom/boohee/one/easemob/HXNotifier;

    .line 326
    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->notifier:Lcom/boohee/one/easemob/HXNotifier;

    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/boohee/one/easemob/HXNotifier;->init(Landroid/content/Context;)Lcom/boohee/one/easemob/HXNotifier;

    .line 328
    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->notifier:Lcom/boohee/one/easemob/HXNotifier;

    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->getNotificationListener()Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/easemob/HXNotifier;->setNotificationInfoProvider(Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;)V

    .line 329
    return-void
.end method

.method protected initListener()V
    .locals 2

    .prologue
    .line 393
    const-string v0, "HXSDKHelper"

    const-string v1, "init listener"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/boohee/one/easemob/HXSDKHelper$2;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/HXSDKHelper$2;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;)V

    iput-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->connectionListener:Lcom/easemob/EMConnectionListener;

    .line 418
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->connectionListener:Lcom/easemob/EMConnectionListener;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->addConnectionListener(Lcom/easemob/EMConnectionListener;)V

    .line 419
    return-void
.end method

.method public isBlackListSyncedWithServer()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isBlackListSyncedWithServer:Z

    return v0
.end method

.method public isContactsSyncedWithServer()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isContactsSyncedWithServer:Z

    return v0
.end method

.method public isGroupsSyncedWithServer()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isGroupsSyncedWithServer:Z

    return v0
.end method

.method public isLogined()Z
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isSyncingBlackListWithServer()Z
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingBlackListWithServer:Z

    return v0
.end method

.method public isSyncingContactsWithServer()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingContactsWithServer:Z

    return v0
.end method

.method public isSyncingGroupsWithServer()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingGroupsWithServer:Z

    return v0
.end method

.method public login()V
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->onLoginSuccess()V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->getHXAccountFromBoohee()V

    goto :goto_0
.end method

.method public logout(Lcom/easemob/EMCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/easemob/EMCallBack;

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/HXSDKHelper;->setPassword(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->reset()V

    .line 350
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/easemob/HXSDKHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/boohee/one/easemob/HXSDKHelper$1;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;Lcom/easemob/EMCallBack;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->logout(Lcom/easemob/EMCallBack;)V

    .line 374
    return-void
.end method

.method public noitifyGroupSyncListeners(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 837
    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncGroupsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .line 838
    .local v1, "listener":Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    invoke-interface {v1, p1}, Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;->onSyncSucess(Z)V

    goto :goto_0

    .line 840
    .end local v1    # "listener":Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    :cond_0
    return-void
.end method

.method public notifyBlackListSyncListener(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 932
    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncBlackListListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .line 933
    .local v1, "listener":Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    invoke-interface {v1, p1}, Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;->onSyncSucess(Z)V

    goto :goto_0

    .line 935
    .end local v1    # "listener":Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    :cond_0
    return-void
.end method

.method public notifyContactsSyncListener(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 883
    iget-object v2, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncContactsListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .line 884
    .local v1, "listener":Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    invoke-interface {v1, p1}, Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;->onSyncSucess(Z)V

    goto :goto_0

    .line 886
    .end local v1    # "listener":Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized notifyForRecevingEvents()V
    .locals 1

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->alreadyNotified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 969
    :goto_0
    monitor-exit p0

    return-void

    .line 967
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->setAppInited()V

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->alreadyNotified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onConnectionConflict()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method protected onConnectionConnected()V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->onLoginSuccess()V

    .line 440
    return-void
.end method

.method protected onConnectionDisconnected(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 680
    return-void
.end method

.method protected onCurrentAccountRemoved()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public declared-synchronized onInit(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->sdkInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 237
    :goto_0
    monitor-exit p0

    return v2

    .line 185
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->createModel()Lcom/boohee/one/easemob/HXSDKModel;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    .line 191
    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    if-nez v3, :cond_1

    .line 192
    new-instance v3, Lcom/boohee/one/easemob/DefaultHXSDKModel;

    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->appContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/boohee/one/easemob/DefaultHXSDKModel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    .line 195
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 196
    .local v0, "pid":I
    invoke-direct {p0, v0}, Lcom/boohee/one/easemob/HXSDKHelper;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "processAppName":Ljava/lang/String;
    const-string v3, "HXSDKHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process app name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/HXSDKModel;->getAppProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    :cond_2
    const-string v2, "HXSDKHelper"

    const-string v3, "enter the service process!"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    :cond_3
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/easemob/chat/EMChat;->init(Landroid/content/Context;)V

    .line 214
    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/HXSDKModel;->isSandboxMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMChatConfig$EMEnvMode;->EMSandboxMode:Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    invoke-virtual {v3, v4}, Lcom/easemob/chat/EMChat;->setEnv(Lcom/easemob/chat/EMChatConfig$EMEnvMode;)V

    .line 218
    :cond_4
    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/HXSDKModel;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/easemob/chat/EMChat;->setDebugMode(Z)V

    .line 223
    :cond_5
    const-string v3, "HXSDKHelper"

    const-string v4, "initialize EMChat SDK"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->initHXOptions()V

    .line 226
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->initListener()V

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncGroupsListeners:Ljava/util/List;

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncContactsListeners:Ljava/util/List;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncBlackListListeners:Ljava/util/List;

    .line 232
    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/HXSDKModel;->isGroupsSynced()Z

    move-result v3

    iput-boolean v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isGroupsSyncedWithServer:Z

    .line 233
    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/HXSDKModel;->isContactSynced()Z

    move-result v3

    iput-boolean v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isContactsSyncedWithServer:Z

    .line 234
    iget-object v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/HXSDKModel;->isBacklistSynced()Z

    move-result v3

    iput-boolean v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isBlackListSyncedWithServer:Z

    .line 236
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/boohee/one/easemob/HXSDKHelper;->sdkInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 181
    .end local v0    # "pid":I
    .end local v1    # "processAppName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onLoginSuccess()V
    .locals 6

    .prologue
    .line 508
    const-string v4, "HXSDKHelper"

    const-string v5, "onLoginSuccess"

    invoke-static {v4, v5}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMGroupManager;->loadAllGroups()V

    .line 510
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChatManager;->loadAllConversations()V

    .line 511
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/one/easemob/HXSDKHelper;->isGroupsSyncedWithServer()Z

    move-result v3

    .line 512
    .local v3, "groupSynced":Z
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/one/easemob/HXSDKHelper;->isContactsSyncedWithServer()Z

    move-result v0

    .line 514
    .local v0, "contactSynced":Z
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 515
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/boohee/one/easemob/HXSDKHelper;->setHXId(Ljava/lang/String;)V

    .line 517
    :cond_0
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->booheeUserName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 518
    invoke-static {}, Lcom/boohee/one/easemob/HXPreferenceUtils;->getInstance()Lcom/boohee/one/easemob/HXPreferenceUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/easemob/HXSDKHelper;->booheeUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/boohee/one/easemob/HXPreferenceUtils;->setCurrentUserBooheeeName(Ljava/lang/String;)V

    .line 520
    :cond_1
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->avatarUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 521
    invoke-static {}, Lcom/boohee/one/easemob/HXPreferenceUtils;->getInstance()Lcom/boohee/one/easemob/HXPreferenceUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/easemob/HXSDKHelper;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/boohee/one/easemob/HXPreferenceUtils;->setCurrentUserAvatar(Ljava/lang/String;)V

    .line 523
    :cond_2
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 524
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/boohee/one/easemob/HXSDKHelper;->setPassword(Ljava/lang/String;)V

    .line 526
    :cond_3
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 527
    iget-object v4, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/boohee/one/easemob/HXSDKHelper;->setBooheeGroupId(Ljava/lang/String;)V

    .line 528
    const/4 v2, 0x0

    .line 530
    .local v2, "group":Lcom/easemob/chat/EMGroup;
    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/easemob/HXSDKHelper;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/easemob/chat/EMGroupManager;->getGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v2

    .line 531
    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v2    # "group":Lcom/easemob/chat/EMGroup;
    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 539
    new-instance v4, Lcom/boohee/one/easemob/HXSDKHelper$5;

    invoke-direct {v4, p0}, Lcom/boohee/one/easemob/HXSDKHelper$5;-><init>(Lcom/boohee/one/easemob/HXSDKHelper;)V

    invoke-virtual {v4}, Lcom/boohee/one/easemob/HXSDKHelper$5;->start()V

    .line 558
    :cond_5
    :goto_1
    return-void

    .line 532
    .restart local v2    # "group":Lcom/easemob/chat/EMGroup;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Lcom/easemob/exceptions/EaseMobException;
    invoke-virtual {v1}, Lcom/easemob/exceptions/EaseMobException;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v1    # "e":Lcom/easemob/exceptions/EaseMobException;
    .end local v2    # "group":Lcom/easemob/chat/EMGroup;
    :cond_6
    if-nez v3, :cond_7

    .line 547
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchGroupsFromServer()V

    .line 550
    :cond_7
    if-nez v0, :cond_8

    .line 551
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchContactsFromServer()V

    .line 554
    :cond_8
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/one/easemob/HXSDKHelper;->isBlackListSyncedWithServer()Z

    move-result v4

    if-nez v4, :cond_5

    .line 555
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchBlackListFromServer()V

    goto :goto_1
.end method

.method public removeSyncBlackListListener(Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .prologue
    .line 759
    if-nez p1, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncBlackListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncBlackListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeSyncContactListener(Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .prologue
    .line 741
    if-nez p1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncContactsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncContactsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeSyncGroupListener(Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boohee/one/easemob/HXSDKHelper$HXSyncListener;

    .prologue
    .line 723
    if-nez p1, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncGroupsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->syncGroupsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method declared-synchronized reset()V
    .locals 2

    .prologue
    .line 972
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingGroupsWithServer:Z

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingContactsWithServer:Z

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isSyncingBlackListWithServer:Z

    .line 976
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/HXSDKModel;->setGroupsSynced(Z)V

    .line 977
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/HXSDKModel;->setContactSynced(Z)V

    .line 978
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/HXSDKModel;->setBlacklistSynced(Z)V

    .line 980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isGroupsSyncedWithServer:Z

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isContactsSyncedWithServer:Z

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->isBlackListSyncedWithServer:Z

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->alreadyNotified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    monitor-exit p0

    return-void

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBooheeGroupId(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v0, p1}, Lcom/boohee/one/easemob/HXSDKModel;->saveBooheeGroupId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iput-object p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->booheeGroupId:Ljava/lang/String;

    .line 290
    :cond_0
    return-void
.end method

.method public setHXId(Ljava/lang/String;)V
    .locals 1
    .param p1, "hxId"    # Ljava/lang/String;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v0, p1}, Lcom/boohee/one/easemob/HXSDKModel;->saveHXId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxId:Ljava/lang/String;

    .line 277
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/boohee/one/easemob/HXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    invoke-virtual {v0, p1}, Lcom/boohee/one/easemob/HXSDKModel;->savePassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iput-object p1, p0, Lcom/boohee/one/easemob/HXSDKHelper;->password:Ljava/lang/String;

    .line 296
    :cond_0
    return-void
.end method
