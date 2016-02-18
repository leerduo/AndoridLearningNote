.class public Lcom/boohee/more/SportRemindReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SportRemindReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final beginDate:Ljava/lang/String; = "2015-10-00"

.field private static final noticeType:I = 0x2fa

.field private static final requestCode:I = 0x98

.field private static final tipsStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/boohee/more/SportRemindReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/SportRemindReceiver;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u653e\u5f03\u53ef\u4ee5\u627e\u5230\u4e00\u4e07\u4e2a\u7406\u7531\uff0c\u575a\u6301\u53ea\u9700\u4e00\u4e2a\u4fe1\u5ff5!"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u54ea\u6837\u66f4\u75db\u82e6\uff1f\u52aa\u529b\u8fd8\u662f\u540e\u6094!"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5851\u9020\u81ea\u5df1\u7684\u8fc7\u7a0b\u4e5f\u8bb8\u5f88\u75bc\uff0c\u4f46\u4f60\u6700\u7ec8\u80fd\u6536\u83b7\u4e00\u4e2a\u66f4\u597d\u7684\u81ea\u5df1!"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4f60\u4ee5\u4e3a\u7684\u6781\u9650\u5f04\u4e0d\u597d\u53ea\u662f\u522b\u4eba\u7684\u8d77\u70b9!"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u4e0d\u8bba\u4f60\u8dd1\u5f97\u591a\u6162\uff0c\u90fd\u8981\u6bd4\u8eba\u5728\u6c99\u53d1\u91cc\u7684\u4eba\u5feb!"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5c06\u6765\u7684\u4f60\u4e00\u5b9a\u4f1a\u611f\u6fc0\u73b0\u5728\u62fc\u547d\u7684\u81ea\u5df1!"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u522b\u8ba9\u4eba\u6307\u7740\u4f60\u8bf4\uff0c\u4f60\u7684\u7a0b\u5ea6\u4ec5\u6b64\u800c\u5df2!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u611f\u89c9\u7d2f\uff0c\u4e5f\u8bb8\u662f\u56e0\u4e3a\u4f60\u6b63\u5904\u4e8e\u4eba\u751f\u7684\u4e0a\u5761\u8def!"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4eca\u5929\u5c3d\u529b\u4e86\u5417\uff1f\u51cf\u80a5\u6ca1\u6709\u90a3\u4e48\u5bb9\u6613\uff0c\u6bcf\u5757\u8089\u90fd\u6709\u5b83\u7684\u813e\u6c14!"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/more/SportRemindReceiver;->tipsStr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getTips()I
    .locals 4

    .prologue
    .line 108
    const-string v0, "2015-10-00"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->countDay(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/boohee/more/SportRemindReceiver;->tipsStr:[Ljava/lang/String;

    array-length v2, v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private setNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    new-instance v0, Landroid/app/Notification;

    const v3, 0x7f02030c

    const v4, 0x7f0700e0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 65
    .local v0, "nfc":Landroid/app/Notification;
    const/4 v3, 0x1

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 66
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 67
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p1, v3, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 69
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const v3, 0x7f0704f2

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/boohee/more/SportRemindReceiver;->tipsStr:[Ljava/lang/String;

    invoke-static {}, Lcom/boohee/more/SportRemindReceiver;->getTips()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, p1, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 70
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 72
    .local v1, "nfcManager":Landroid/app/NotificationManager;
    sget-object v3, Lcom/boohee/more/SportRemindReceiver;->TAG:Ljava/lang/String;

    const-string v4, "notify"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/16 v3, 0x2fa

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 74
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 78
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 79
    .local v0, "manager":Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/boohee/more/SportRemindReceiver;

    invoke-direct {v9, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v9, "intent":Landroid/content/Intent;
    const/16 v2, 0x98

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 82
    .local v6, "pending":Landroid/app/PendingIntent;
    sget-object v2, Lcom/boohee/more/SportRemindReceiver;->TAG:Ljava/lang/String;

    const-string v3, "SportRemindReceiver start"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 84
    .local v7, "calNow":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 85
    .local v8, "calSet":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefSportRemindTime()Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "remindTime":Ljava/lang/String;
    const/16 v10, 0x14

    .line 89
    .local v10, "remindHour":I
    const/16 v11, 0x1e

    .line 90
    .local v11, "remindMinute":I
    new-array v2, v4, [Ljava/lang/CharSequence;

    aput-object v12, v2, v1

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "#"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "times":[Ljava/lang/String;
    array-length v2, v13

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 93
    aget-object v2, v13, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 94
    aget-object v2, v13, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 97
    .end local v13    # "times":[Ljava/lang/String;
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 98
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 99
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 102
    const/4 v2, 0x5

    invoke-virtual {v8, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 104
    :cond_1
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    sget-object v1, Lcom/boohee/more/SportRemindReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive start"

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefSoprtRemind()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/boohee/one/video/manager/VideoPreference;

    invoke-direct {v1, p1}, Lcom/boohee/one/video/manager/VideoPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/video/manager/VideoPreference;->todayIsComplete(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "target":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/boohee/more/SportRemindReceiver;->setNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/boohee/utils/BadgeUtils;->setIconBadge(Landroid/content/Context;I)V

    .line 59
    .end local v0    # "target":Landroid/content/Intent;
    :cond_0
    return-void
.end method
