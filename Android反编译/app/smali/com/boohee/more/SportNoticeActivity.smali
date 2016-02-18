.class public Lcom/boohee/more/SportNoticeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SportNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/SportNoticeActivity$TimeOnclick;
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

.field private tb_notice_sport:Landroid/widget/ToggleButton;

.field private txt_notice_sport_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/boohee/more/SportNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/SportNoticeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/SportNoticeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/SportNoticeActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/more/SportNoticeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/SportNoticeActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/more/SportNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/SportNoticeActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0e0575

    invoke-virtual {p0, v0}, Lcom/boohee/more/SportNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->txt_notice_sport_time:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0e0294

    invoke-virtual {p0, v0}, Lcom/boohee/more/SportNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->tb_notice_sport:Landroid/widget/ToggleButton;

    .line 63
    return-void
.end method


# virtual methods
.method addListener()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/SportNoticeActivity;->txt_notice_sport_time:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/SportNoticeActivity;->txt_notice_sport_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/SportNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/SportNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->tb_notice_sport:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/SportNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/SportNoticeActivity$1;-><init>(Lcom/boohee/more/SportNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method initData()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    iget-object v1, p0, Lcom/boohee/more/SportNoticeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    .line 57
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->SPORT:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v1}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/SportNoticeActivity;->txt_notice_sport_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/boohee/more/SportNoticeActivity;->tb_notice_sport:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarms:Ljava/util/ArrayList;

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
    .line 30
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0704ee

    invoke-virtual {p0, v0}, Lcom/boohee/more/SportNoticeActivity;->setTitle(I)V

    .line 32
    const v0, 0x7f0301c4

    invoke-virtual {p0, v0}, Lcom/boohee/more/SportNoticeActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/boohee/more/SportNoticeActivity;->initData()V

    .line 34
    invoke-direct {p0}, Lcom/boohee/more/SportNoticeActivity;->findView()V

    .line 35
    invoke-virtual {p0}, Lcom/boohee/more/SportNoticeActivity;->addListener()V

    .line 36
    invoke-virtual {p0}, Lcom/boohee/more/SportNoticeActivity;->initUI()V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 102
    return-void
.end method

.method openOrClose(Lcom/boohee/model/Alarm;Z)V
    .locals 1
    .param p1, "alarm"    # Lcom/boohee/model/Alarm;
    .param p2, "isChecked"    # Z

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    const/4 v0, 0x1

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0, p1}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 95
    iget-object v0, p0, Lcom/boohee/more/SportNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 96
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    goto :goto_0
.end method
