.class public Lcom/boohee/more/RemindReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemindReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private alarmTip:Lcom/boohee/model/AlarmTip;

.field private ctx:Landroid/content/Context;

.field private noticeCode:Ljava/lang/String;

.field private noticeId:I

.field private noticeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/more/RemindReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/RemindReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addNotice(Lcom/boohee/model/AlarmTip;)V
    .locals 2
    .param p1, "alarmTip"    # Lcom/boohee/model/AlarmTip;

    .prologue
    .line 54
    new-instance v0, Lcom/boohee/modeldao/NoticeDao;

    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    invoke-virtual {v0, p1}, Lcom/boohee/modeldao/NoticeDao;->add(Lcom/boohee/model/AlarmTip;)J

    .line 56
    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 57
    iget v1, p1, Lcom/boohee/model/AlarmTip;->id:I

    iput v1, p0, Lcom/boohee/more/RemindReceiver;->noticeId:I

    .line 58
    return-void
.end method

.method private getAlarmMsg(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const-string v2, "other_receiveRemind"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const-string v1, "notice_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/RemindReceiver;->noticeCode:Ljava/lang/String;

    .line 43
    const-string v1, "notice_type"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/more/RemindReceiver;->noticeType:I

    .line 45
    new-instance v0, Lcom/boohee/modeldao/AlarmTipDao;

    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/AlarmTipDao;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "tipDao":Lcom/boohee/modeldao/AlarmTipDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmTipDao;->getRandomTip()Lcom/boohee/model/AlarmTip;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/RemindReceiver;->alarmTip:Lcom/boohee/model/AlarmTip;

    .line 47
    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmTipDao;->closeDB()V

    .line 48
    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->alarmTip:Lcom/boohee/model/AlarmTip;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->alarmTip:Lcom/boohee/model/AlarmTip;

    invoke-direct {p0, v1}, Lcom/boohee/more/RemindReceiver;->addNotice(Lcom/boohee/model/AlarmTip;)V

    .line 51
    :cond_0
    return-void
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/boohee/more/RemindReceiver;->hasPwd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/MyApplication;

    invoke-virtual {v1}, Lcom/boohee/one/MyApplication;->getIsMainOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/more/PasscodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.boohee.one.action.PASSWORD_INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :goto_0
    const-string v1, "notice_id"

    iget v2, p0, Lcom/boohee/more/RemindReceiver;->noticeId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "from_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v1, "notice_message"

    iget-object v2, p0, Lcom/boohee/more/RemindReceiver;->alarmTip:Lcom/boohee/model/AlarmTip;

    iget-object v2, v2, Lcom/boohee/model/AlarmTip;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/more/ViewTipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasPwd()Z
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/boohee/database/OnePreference;

    iget-object v1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "prefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p2}, Lcom/boohee/more/RemindReceiver;->getAlarmMsg(Landroid/content/Intent;)V

    .line 36
    iget-object v0, p0, Lcom/boohee/more/RemindReceiver;->alarmTip:Lcom/boohee/model/AlarmTip;

    invoke-direct {p0}, Lcom/boohee/more/RemindReceiver;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/RemindReceiver;->setNotification(Lcom/boohee/model/AlarmTip;Landroid/content/Intent;)V

    .line 37
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/boohee/utils/BadgeUtils;->setIconBadge(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public setNotification(Lcom/boohee/model/AlarmTip;Landroid/content/Intent;)V
    .locals 8
    .param p1, "alarmTip"    # Lcom/boohee/model/AlarmTip;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    sget-object v3, Lcom/boohee/more/RemindReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53d1\u9001Notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/boohee/model/AlarmTip;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/boohee/model/AlarmTip;->code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/boohee/model/AlarmTip;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/boohee/model/AlarmTip;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f02030c

    iget-object v4, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const v5, 0x7f0700e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 66
    .local v0, "nfc":Landroid/app/Notification;
    const/4 v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 67
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 68
    iget-object v3, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 70
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const-string v4, "\u8584\u8377\u63d0\u9192"

    iget-object v5, p1, Lcom/boohee/model/AlarmTip;->message:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 71
    iget-object v3, p0, Lcom/boohee/more/RemindReceiver;->ctx:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 73
    .local v1, "nfcManager":Landroid/app/NotificationManager;
    iget v3, p0, Lcom/boohee/more/RemindReceiver;->noticeType:I

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 74
    return-void
.end method
