.class public Lcom/boohee/more/GoodMorningNoticeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "GoodMorningNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private alarm_dao:Lcom/boohee/modeldao/AlarmDao;

.field private alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private tb_notice_good_morning:Landroid/widget/ToggleButton;

.field private txt_notice_good_morning_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/more/GoodMorningNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/GoodMorningNoticeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/GoodMorningNoticeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/GoodMorningNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/more/GoodMorningNoticeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/GoodMorningNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/more/GoodMorningNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/GoodMorningNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0e038a

    invoke-virtual {p0, v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->txt_notice_good_morning_time:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e028c

    invoke-virtual {p0, v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->tb_notice_good_morning:Landroid/widget/ToggleButton;

    .line 62
    return-void
.end method


# virtual methods
.method addListener()V
    .locals 5

    .prologue
    .line 41
    iget-object v1, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->txt_notice_good_morning_time:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->txt_notice_good_morning_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/GoodMorningNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/GoodMorningNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->tb_notice_good_morning:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/GoodMorningNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/GoodMorningNoticeActivity$1;-><init>(Lcom/boohee/more/GoodMorningNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    return-void
.end method

.method initData()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    iget-object v1, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    .line 56
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->MORNING:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v1}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->txt_notice_good_morning_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->tb_notice_good_morning:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f070276

    invoke-virtual {p0, v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->setTitle(I)V

    .line 33
    const v0, 0x7f030105

    invoke-virtual {p0, v0}, Lcom/boohee/more/GoodMorningNoticeActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/boohee/more/GoodMorningNoticeActivity;->initData()V

    .line 35
    invoke-direct {p0}, Lcom/boohee/more/GoodMorningNoticeActivity;->findView()V

    .line 36
    invoke-virtual {p0}, Lcom/boohee/more/GoodMorningNoticeActivity;->addListener()V

    .line 37
    invoke-virtual {p0}, Lcom/boohee/more/GoodMorningNoticeActivity;->initUI()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 101
    return-void
.end method

.method openOrClose(Lcom/boohee/model/Alarm;Z)V
    .locals 1
    .param p1, "alarm"    # Lcom/boohee/model/Alarm;
    .param p2, "isChecked"    # Z

    .prologue
    .line 88
    if-eqz p2, :cond_0

    .line 89
    const/4 v0, 0x1

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0, p1}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 94
    iget-object v0, p0, Lcom/boohee/more/GoodMorningNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 95
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    goto :goto_0
.end method
