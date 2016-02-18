.class public Lcom/boohee/more/RemindService;
.super Ljava/lang/Object;
.source "RemindService.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/boohee/more/RemindService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/RemindService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V
    .locals 10
    .param p0, "alarm"    # Lcom/boohee/model/Alarm;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 21
    .local v0, "manager":Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/boohee/more/RemindReceiver;

    invoke-direct {v9, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v9, "intent":Landroid/content/Intent;
    const-string v2, "notice_code"

    iget-object v3, p0, Lcom/boohee/model/Alarm;->code:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v2, "notice_type"

    iget v3, p0, Lcom/boohee/model/Alarm;->type:I

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    sget-object v2, Lcom/boohee/more/RemindService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u542f\u95f9\u949f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/boohee/model/Alarm;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/model/Alarm;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget v2, p0, Lcom/boohee/model/Alarm;->id:I

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 27
    .local v6, "pending":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    sget-object v2, Lcom/boohee/more/RemindService;->TAG:Ljava/lang/String;

    const-string v3, "RemindService start"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 30
    .local v7, "calNow":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 31
    .local v8, "calSet":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 32
    const/16 v2, 0xb

    iget v3, p0, Lcom/boohee/model/Alarm;->hour:I

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 33
    const/16 v2, 0xc

    iget v3, p0, Lcom/boohee/model/Alarm;->minute:I

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 34
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 35
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 36
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 37
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 39
    :cond_0
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 43
    .end local v7    # "calNow":Ljava/util/Calendar;
    .end local v8    # "calSet":Ljava/util/Calendar;
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
