.class public Lcom/boohee/more/DailySignReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DailySignReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static final noticeType:I = 0x2d3

.field private static final requestCode:I = 0x1a9


# instance fields
.field private tipsStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/boohee/more/DailySignReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/DailySignReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5c11\u4fa0\uff0c\u8bf7\u7559\u6b65\uff01\u4f60\u5fd8\u8bb0\u6253\u5361\u5566"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6709\u4e86\u8584\u8377\u83cc\u7684\u63d0\u9192\uff0c\u5988\u5988\u518d\u4e5f\u4e0d\u7528\u62c5\u5fc3\u6211\u5fd8\u8bb0\u6253\u5361\u5566"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4eca\u5929\u8fd0\u52a8\u4e86\u5417\uff1f\u522b\u5fd8\u8bb0\u6253\u4e2a\u5361\uff0c\u6709\u94bb\u77f3\u5956\u52b1\u54e6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5361\u662f\u8c01\uff1f\u4e3a\u4ec0\u4e48\u6211\u4eec\u6bcf\u5929\u90fd\u8981\u6253TA\uff1f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/more/DailySignReceiver;->tipsStr:[Ljava/lang/String;

    return-void
.end method

.method private setNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f02030c

    const v4, 0x7f0700e0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 58
    .local v0, "nfc":Landroid/app/Notification;
    const/4 v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 59
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 60
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 62
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const v3, 0x7f07011b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/more/DailySignReceiver;->tipsStr:[Ljava/lang/String;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, p1, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 63
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 65
    .local v1, "nfcManager":Landroid/app/NotificationManager;
    sget-object v3, Lcom/boohee/more/DailySignReceiver;->TAG:Ljava/lang/String;

    const-string v4, "notify"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/16 v3, 0x2d3

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 67
    return-void
.end method

.method private showDialog(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Lcom/boohee/widgets/CheckView;

    invoke-direct {v0, p1}, Lcom/boohee/widgets/CheckView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "checkView":Lcom/boohee/widgets/CheckView;
    iget-object v1, p0, Lcom/boohee/more/DailySignReceiver;->tipsStr:[Ljava/lang/String;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/CheckView;->setMsg(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/boohee/widgets/CheckView;->attachToWindow()V

    .line 52
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x0

    .line 72
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 73
    .local v0, "manager":Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/boohee/more/DailySignReceiver;

    invoke-direct {v9, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v9, "intent":Landroid/content/Intent;
    const/16 v2, 0x1a9

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 76
    .local v6, "pending":Landroid/app/PendingIntent;
    sget-object v2, Lcom/boohee/more/DailySignReceiver;->TAG:Ljava/lang/String;

    const-string v3, "DailySignReceiver start"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 78
    .local v7, "calNow":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 79
    .local v8, "calSet":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 80
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-virtual {v8, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 83
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 85
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 87
    :cond_0
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    sget-object v1, Lcom/boohee/more/DailySignReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrefSignRecord isToday : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefSignRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/boohee/more/DailySignReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrefDiamondSignRemind : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefDiamondSignRemind()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefSignRecord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefDiamondSignRemind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/boohee/more/DailySignReceiver;->showDialog(Landroid/content/Context;)V

    .line 46
    :cond_0
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
