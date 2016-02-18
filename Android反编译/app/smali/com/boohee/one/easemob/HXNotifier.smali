.class public Lcom/boohee/one/easemob/HXNotifier;
.super Ljava/lang/Object;
.source "HXNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/easemob/HXNotifier$2;,
        Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "notify"

.field protected static foregroundNotifyID:I

.field protected static final msg_ch:[Ljava/lang/String;

.field protected static final msg_eng:[Ljava/lang/String;

.field protected static notifyID:I


# instance fields
.field protected appContext:Landroid/content/Context;

.field protected audioManager:Landroid/media/AudioManager;

.field protected fromUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lastNotifiyTime:J

.field protected msgs:[Ljava/lang/String;

.field protected notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

.field protected notificationManager:Landroid/app/NotificationManager;

.field protected notificationNum:I

.field protected packageName:Ljava/lang/String;

.field ringtone:Landroid/media/Ringtone;

.field protected vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sent a message"

    aput-object v1, v0, v3

    const-string v1, "sent a picture"

    aput-object v1, v0, v4

    const-string v1, "sent a voice"

    aput-object v1, v0, v5

    const-string v1, "sent location message"

    aput-object v1, v0, v6

    const-string v1, "sent a video"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sent a file"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%1 contacts sent %2 messages"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/easemob/HXNotifier;->msg_eng:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u53d1\u6765\u4e00\u6761\u6d88\u606f"

    aput-object v1, v0, v3

    const-string v1, "\u53d1\u6765\u4e00\u5f20\u56fe\u7247"

    aput-object v1, v0, v4

    const-string v1, "\u53d1\u6765\u4e00\u6bb5\u8bed\u97f3"

    aput-object v1, v0, v5

    const-string v1, "\u53d1\u6765\u4f4d\u7f6e\u4fe1\u606f"

    aput-object v1, v0, v6

    const-string v1, "\u53d1\u6765\u4e00\u4e2a\u89c6\u9891"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u53d1\u6765\u4e00\u4e2a\u6587\u4ef6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "%1\u4e2a\u8054\u7cfb\u4eba\u53d1\u6765%2\u6761\u6d88\u606f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/easemob/HXNotifier;->msg_ch:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x155

    sput v0, Lcom/boohee/one/easemob/HXNotifier;->notifyID:I

    .line 48
    const/16 v0, 0x16d

    sput v0, Lcom/boohee/one/easemob/HXNotifier;->foregroundNotifyID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->ringtone:Landroid/media/Ringtone;

    .line 50
    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->fromUsers:Ljava/util/HashSet;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    .line 64
    return-void
.end method


# virtual methods
.method cancelNotificaton()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/boohee/one/easemob/HXNotifier;->notifyID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)Lcom/boohee/one/easemob/HXNotifier;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    .line 74
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    .line 76
    iget-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->packageName:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/boohee/one/easemob/HXNotifier;->msg_ch:[Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->audioManager:Landroid/media/AudioManager;

    .line 84
    iget-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->vibrator:Landroid/os/Vibrator;

    .line 86
    return-object p0

    .line 80
    :cond_0
    sget-object v0, Lcom/boohee/one/easemob/HXNotifier;->msg_eng:[Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized onNewMesg(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/easemob/chat/EMMessage;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatManager;->isSlientMessage(Lcom/easemob/chat/EMMessage;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNewMsg(Lcom/easemob/chat/EMMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->isSlientMessage(Lcom/easemob/chat/EMMessage;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXNotifier;->resetNotificationCount()V

    .line 95
    invoke-virtual {p0}, Lcom/boohee/one/easemob/HXNotifier;->cancelNotificaton()V

    .line 96
    return-void
.end method

.method resetNotificationCount()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    .line 100
    iget-object v0, p0, Lcom/boohee/one/easemob/HXNotifier;->fromUsers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 101
    return-void
.end method

.method protected sendNotification(Lcom/easemob/chat/EMMessage;Z)V
    .locals 1
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "isForeground"    # Z

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/boohee/one/easemob/HXNotifier;->sendNotification(Lcom/easemob/chat/EMMessage;ZZ)V

    .line 165
    return-void
.end method

.method protected sendNotification(Lcom/easemob/chat/EMMessage;ZZ)V
    .locals 24
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "isForeground"    # Z
    .param p3, "numIncrease"    # Z

    .prologue
    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v19

    .line 175
    .local v19, "username":Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 176
    .local v14, "notifyText":Ljava/lang/String;
    sget-object v20, Lcom/boohee/one/easemob/HXNotifier$2;->$SwitchMap$com$easemob$chat$EMMessage$Type:[I

    invoke-virtual/range {p1 .. p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 198
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 199
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 202
    .local v4, "appname":Ljava/lang/String;
    move-object v5, v4

    .line 203
    .local v5, "contentTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;->getDisplayedText(Lcom/easemob/chat/EMMessage;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "customNotifyText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;->getTitle(Lcom/easemob/chat/EMMessage;)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "customCotentTitle":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 208
    move-object v14, v7

    .line 211
    :cond_0
    if-eqz v6, :cond_1

    .line 213
    move-object v5, v6

    .line 218
    .end local v6    # "customCotentTitle":Ljava/lang/String;
    .end local v7    # "customNotifyText":Ljava/lang/String;
    :cond_1
    new-instance v20, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 223
    .local v11, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 224
    .local v12, "msgIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;->getLaunchIntent(Lcom/easemob/chat/EMMessage;)Landroid/content/Intent;

    move-result-object v12

    .line 229
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget v21, Lcom/boohee/one/easemob/HXNotifier;->notifyID:I

    const/high16 v22, 0x8000000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 231
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p3, :cond_3

    .line 233
    if-nez p2, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->fromUsers:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->fromUsers:Ljava/util/HashSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v10

    .line 240
    .local v10, "fromUsersNum":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-object v20, v20, v21

    const-string v21, "%1"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "%2"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 242
    .local v18, "summaryBody":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-interface {v0, v1, v10, v2}, Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;->getLatestText(Lcom/easemob/chat/EMMessage;II)Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, "customSummaryBody":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 246
    move-object/from16 v18, v8

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;->getSmallIcon(Lcom/easemob/chat/EMMessage;)I

    move-result v17

    .line 251
    .local v17, "smallIcon":I
    if-eqz v17, :cond_5

    .line 252
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    .end local v8    # "customSummaryBody":Ljava/lang/String;
    .end local v17    # "smallIcon":I
    :cond_5
    invoke-virtual {v11, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 257
    invoke-virtual {v11, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 258
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 261
    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 263
    .local v13, "notification":Landroid/app/Notification;
    if-eqz p2, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    sget v21, Lcom/boohee/one/easemob/HXNotifier;->foregroundNotifyID:I

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    sget v21, Lcom/boohee/one/easemob/HXNotifier;->foregroundNotifyID:I

    invoke-virtual/range {v20 .. v21}, Landroid/app/NotificationManager;->cancel(I)V

    .line 273
    .end local v4    # "appname":Ljava/lang/String;
    .end local v5    # "contentTitle":Ljava/lang/String;
    .end local v10    # "fromUsersNum":I
    .end local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v12    # "msgIntent":Landroid/content/Intent;
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "notifyText":Ljava/lang/String;
    .end local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "summaryBody":Ljava/lang/String;
    :goto_1
    return-void

    .line 178
    .restart local v14    # "notifyText":Ljava/lang/String;
    :pswitch_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 179
    goto/16 :goto_0

    .line 181
    :pswitch_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 182
    goto/16 :goto_0

    .line 185
    :pswitch_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 186
    goto/16 :goto_0

    .line 188
    :pswitch_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 189
    goto/16 :goto_0

    .line 191
    :pswitch_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 192
    goto/16 :goto_0

    .line 194
    :pswitch_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->msgs:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 267
    .restart local v4    # "appname":Ljava/lang/String;
    .restart local v5    # "contentTitle":Ljava/lang/String;
    .restart local v10    # "fromUsersNum":I
    .restart local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v12    # "msgIntent":Landroid/content/Intent;
    .restart local v13    # "notification":Landroid/app/Notification;
    .restart local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v18    # "summaryBody":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/one/easemob/HXNotifier;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    sget v21, Lcom/boohee/one/easemob/HXNotifier;->notifyID:I

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 270
    .end local v4    # "appname":Ljava/lang/String;
    .end local v5    # "contentTitle":Ljava/lang/String;
    .end local v10    # "fromUsersNum":I
    .end local v11    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v12    # "msgIntent":Landroid/content/Intent;
    .end local v13    # "notification":Landroid/app/Notification;
    .end local v14    # "notifyText":Ljava/lang/String;
    .end local v15    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "summaryBody":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 271
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 176
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

.method protected sendNotification(Ljava/util/List;Z)V
    .locals 4
    .param p2, "isForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/easemob/chat/EMMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMMessage;

    .line 155
    .local v1, "message":Lcom/easemob/chat/EMMessage;
    if-nez p2, :cond_0

    .line 156
    iget v2, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationNum:I

    .line 157
    iget-object v2, p0, Lcom/boohee/one/easemob/HXNotifier;->fromUsers:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v1    # "message":Lcom/easemob/chat/EMMessage;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/easemob/chat/EMMessage;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/boohee/one/easemob/HXNotifier;->sendNotification(Lcom/easemob/chat/EMMessage;ZZ)V

    .line 161
    return-void
.end method

.method public setNotificationInfoProvider(Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/boohee/one/easemob/HXNotifier;->notificationInfoProvider:Lcom/boohee/one/easemob/HXNotifier$HXNotificationInfoProvider;

    .line 357
    return-void
.end method

.method public viberateAndPlayTone(Lcom/easemob/chat/EMMessage;)V
    .locals 10
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;

    .prologue
    .line 279
    if-eqz p1, :cond_1

    .line 280
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/easemob/chat/EMChatManager;->isSlientMessage(Lcom/easemob/chat/EMMessage;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/boohee/one/easemob/HXSDKHelper;->getModel()Lcom/boohee/one/easemob/HXSDKModel;

    move-result-object v2

    .line 286
    .local v2, "model":Lcom/boohee/one/easemob/HXSDKModel;
    invoke-virtual {v2}, Lcom/boohee/one/easemob/HXSDKModel;->getSettingMsgNotification()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/boohee/one/easemob/HXNotifier;->lastNotifiyTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 296
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/boohee/one/easemob/HXNotifier;->lastNotifiyTime:J

    .line 299
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-nez v6, :cond_2

    .line 300
    const-string v6, "notify"

    const-string v7, "in slient mode now"

    invoke-static {v6, v7}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/boohee/one/easemob/HXSDKModel;->getSettingMsgVibrate()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    const/4 v6, 0x4

    new-array v4, v6, [J

    fill-array-data v4, :array_0

    .line 306
    .local v4, "pattern":[J
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->vibrator:Landroid/os/Vibrator;

    const/4 v7, -0x1

    invoke-virtual {v6, v4, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 309
    .end local v4    # "pattern":[J
    :cond_3
    invoke-virtual {v2}, Lcom/boohee/one/easemob/HXSDKModel;->getSettingMsgSound()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->ringtone:Landroid/media/Ringtone;

    if-nez v6, :cond_4

    .line 311
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 313
    .local v3, "notificationUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->appContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    iput-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->ringtone:Landroid/media/Ringtone;

    .line 314
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->ringtone:Landroid/media/Ringtone;

    if-nez v6, :cond_4

    .line 315
    const-string v6, "notify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cant find ringtone at:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v3    # "notificationUri":Landroid/net/Uri;
    :cond_4
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 323
    .local v5, "vendor":Ljava/lang/String;
    iget-object v6, p0, Lcom/boohee/one/easemob/HXNotifier;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    .line 328
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "samsung"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    new-instance v0, Lcom/boohee/one/easemob/HXNotifier$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/HXNotifier$1;-><init>(Lcom/boohee/one/easemob/HXNotifier;)V

    .line 340
    .local v0, "ctlThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 305
    :array_0
    .array-data 8
        0x0
        0xb4
        0x50
        0x78
    .end array-data
.end method
