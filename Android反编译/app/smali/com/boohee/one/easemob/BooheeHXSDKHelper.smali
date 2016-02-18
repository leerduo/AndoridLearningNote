.class public Lcom/boohee/one/easemob/BooheeHXSDKHelper;
.super Lcom/boohee/one/easemob/HXSDKHelper;
.source "BooheeHXSDKHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/easemob/BooheeHXSDKHelper$5;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private contactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/easemob/domain/HXUser;",
            ">;"
        }
    .end annotation
.end field

.field protected eventListener:Lcom/easemob/EMEventListener;

.field private robotList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/easemob/domain/RobotUser;",
            ">;"
        }
    .end annotation
.end field

.field private userProManager:Lcom/boohee/one/easemob/HXUserProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/one/easemob/HXSDKHelper;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->eventListener:Lcom/easemob/EMEventListener;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->activityList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/easemob/BooheeHXSDKHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->activityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/easemob/BooheeHXSDKHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected createModel()Lcom/boohee/one/easemob/HXSDKModel;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lcom/boohee/one/easemob/BooheeHXSDKModel;

    iget-object v1, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/one/easemob/BooheeHXSDKModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method endCall()V
    .locals 2

    .prologue
    .line 519
    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->endCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/easemob/domain/HXUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getHXId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/easemob/BooheeHXSDKModel;->getContactList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    return-object v0
.end method

.method public getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->hxModel:Lcom/boohee/one/easemob/HXSDKModel;

    check-cast v0, Lcom/boohee/one/easemob/BooheeHXSDKModel;

    return-object v0
.end method

.method public bridge synthetic getModel()Lcom/boohee/one/easemob/HXSDKModel;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationListener()Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper$3;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper$3;-><init>(Lcom/boohee/one/easemob/BooheeHXSDKHelper;)V

    return-object v0
.end method

.method public getRobotList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/easemob/domain/RobotUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getHXId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->robotList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/easemob/BooheeHXSDKModel;->getRobotList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->robotList:Ljava/util/Map;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->robotList:Ljava/util/Map;

    return-object v0
.end method

.method public getRobotMenuMessageDigest(Lcom/easemob/chat/EMMessage;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;

    .prologue
    .line 447
    const-string v2, ""

    .line 449
    .local v2, "title":Ljava/lang/String;
    :try_start_0
    const-string v3, "msgtype"

    invoke-virtual {p1, v3}, Lcom/easemob/chat/EMMessage;->getJSONObjectAttribute(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 450
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "choice"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    const-string v3, "choice"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 452
    .local v0, "jsonChoice":Lorg/json/JSONObject;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 456
    .end local v0    # "jsonChoice":Lorg/json/JSONObject;
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 454
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getUserProfileManager()Lcom/boohee/one/easemob/HXUserProfileManager;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->userProManager:Lcom/boohee/one/easemob/HXUserProfileManager;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/boohee/one/easemob/HXUserProfileManager;

    invoke-direct {v0}, Lcom/boohee/one/easemob/HXUserProfileManager;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->userProManager:Lcom/boohee/one/easemob/HXUserProfileManager;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->userProManager:Lcom/boohee/one/easemob/HXUserProfileManager;

    return-object v0
.end method

.method protected initEventListener()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper$1;-><init>(Lcom/boohee/one/easemob/BooheeHXSDKHelper;)V

    iput-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->eventListener:Lcom/easemob/EMEventListener;

    .line 204
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->eventListener:Lcom/easemob/EMEventListener;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->registerEventListener(Lcom/easemob/EMEventListener;)V

    .line 206
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/easemob/BooheeHXSDKHelper$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper$2;-><init>(Lcom/boohee/one/easemob/BooheeHXSDKHelper;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->addChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V

    .line 261
    return-void
.end method

.method protected initHXOptions()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->initHXOptions()V

    .line 100
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    .line 101
    .local v0, "options":Lcom/easemob/chat/EMChatOptions;
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/easemob/BooheeHXSDKModel;->isChatroomOwnerLeaveAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatOptions;->allowChatroomOwnerLeave(Z)V

    .line 102
    return-void
.end method

.method protected initListener()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/boohee/one/easemob/HXSDKHelper;->initListener()V

    .line 116
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->initEventListener()V

    .line 117
    return-void
.end method

.method public isRobotMenuMessage(Lcom/easemob/chat/EMMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;

    .prologue
    .line 437
    :try_start_0
    const-string v1, "msgtype"

    invoke-virtual {p1, v1}, Lcom/easemob/chat/EMMessage;->getJSONObjectAttribute(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 438
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "choice"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v1, 0x1

    .line 443
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v1

    .line 443
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->logout(Lcom/easemob/EMCallBack;)V

    .line 483
    return-void
.end method

.method public logout(Lcom/easemob/EMCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/easemob/EMCallBack;

    .prologue
    .line 488
    new-instance v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/boohee/one/easemob/BooheeHXSDKHelper$4;-><init>(Lcom/boohee/one/easemob/BooheeHXSDKHelper;Lcom/easemob/EMCallBack;)V

    invoke-super {p0, v0}, Lcom/boohee/one/easemob/HXSDKHelper;->logout(Lcom/easemob/EMCallBack;)V

    .line 515
    return-void
.end method

.method protected onConnectionConflict()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method protected onCurrentAccountRemoved()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public declared-synchronized onInit(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/boohee/one/easemob/HXSDKHelper;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getUserProfileManager()Lcom/boohee/one/easemob/HXUserProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boohee/one/easemob/HXUserProfileManager;->onInit(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public popActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public pushActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->activityList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method

.method public saveContact(Lcom/boohee/one/easemob/domain/HXUser;)V
    .locals 2
    .param p1, "HXUser"    # Lcom/boohee/one/easemob/domain/HXUser;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/boohee/one/easemob/domain/HXUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boohee/one/easemob/BooheeHXSDKModel;->saveContact(Lcom/boohee/one/easemob/domain/HXUser;)V

    .line 479
    return-void
.end method

.method public setContactList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/easemob/domain/HXUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "contactList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/boohee/one/easemob/domain/HXUser;>;"
    iput-object p1, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    .line 471
    return-void
.end method

.method public setRobotList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/easemob/domain/RobotUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "robotList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/boohee/one/easemob/domain/RobotUser;>;"
    iput-object p1, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->robotList:Ljava/util/Map;

    .line 462
    return-void
.end method

.method public updateContactList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/easemob/domain/HXUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "contactInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/easemob/domain/HXUser;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/one/easemob/domain/HXUser;

    .line 532
    .local v2, "u":Lcom/boohee/one/easemob/domain/HXUser;
    iget-object v3, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/boohee/one/easemob/domain/HXUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 534
    .end local v2    # "u":Lcom/boohee/one/easemob/domain/HXUser;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/one/easemob/domain/HXUser;>;"
    iget-object v3, p0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->contactList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 536
    invoke-virtual {p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getModel()Lcom/boohee/one/easemob/BooheeHXSDKModel;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/boohee/one/easemob/BooheeHXSDKModel;->saveContactList(Ljava/util/List;)Z

    .line 537
    return-void
.end method
