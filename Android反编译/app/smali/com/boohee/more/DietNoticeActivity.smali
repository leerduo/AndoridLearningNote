.class public Lcom/boohee/more/DietNoticeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "DietNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/DietNoticeActivity$TimeOnclick;
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

.field private tb_notice_breakfast:Landroid/widget/ToggleButton;

.field private tb_notice_greedy:Landroid/widget/ToggleButton;

.field private tb_notice_lunch:Landroid/widget/ToggleButton;

.field private tb_notice_supper:Landroid/widget/ToggleButton;

.field private txt_notice_breakfast_time:Landroid/widget/TextView;

.field private txt_notice_greedy_time:Landroid/widget/TextView;

.field private txt_notice_lunch_time:Landroid/widget/TextView;

.field private txt_notice_supper_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/more/DietNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/DietNoticeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/DietNoticeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/DietNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/more/DietNoticeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/DietNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/more/DietNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/DietNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f0e02d9

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_breakfast_time:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0e02db

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_lunch_time:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0e02dd

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_supper_time:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0e02e0

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_greedy_time:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0e02da

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_breakfast:Landroid/widget/ToggleButton;

    .line 142
    const v0, 0x7f0e02dc

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_lunch:Landroid/widget/ToggleButton;

    .line 143
    const v0, 0x7f0e02de

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_supper:Landroid/widget/ToggleButton;

    .line 144
    const v0, 0x7f0e02e1

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_greedy:Landroid/widget/ToggleButton;

    .line 145
    return-void
.end method


# virtual methods
.method addListener()V
    .locals 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_breakfast:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/DietNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/DietNoticeActivity$1;-><init>(Lcom/boohee/more/DietNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_lunch:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/DietNoticeActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/more/DietNoticeActivity$2;-><init>(Lcom/boohee/more/DietNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_supper:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/DietNoticeActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/more/DietNoticeActivity$3;-><init>(Lcom/boohee/more/DietNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_greedy:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/DietNoticeActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/more/DietNoticeActivity$4;-><init>(Lcom/boohee/more/DietNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_breakfast_time:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_breakfast_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/DietNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_lunch_time:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_lunch_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/DietNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_supper_time:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_supper_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/DietNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_greedy_time:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_greedy_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/DietNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/DietNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_breakfast_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_lunch_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_supper_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->txt_notice_greedy_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_breakfast:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 103
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_lunch:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 104
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_supper:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 105
    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->tb_notice_greedy:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method initData()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    iget-object v1, p0, Lcom/boohee/more/DietNoticeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    .line 43
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->DIET:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v1}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarms:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0701e1

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->setTitle(I)V

    .line 34
    const v0, 0x7f0300ba

    invoke-virtual {p0, v0}, Lcom/boohee/more/DietNoticeActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/boohee/more/DietNoticeActivity;->initData()V

    .line 36
    invoke-direct {p0}, Lcom/boohee/more/DietNoticeActivity;->findView()V

    .line 37
    invoke-virtual {p0}, Lcom/boohee/more/DietNoticeActivity;->addListener()V

    .line 38
    invoke-virtual {p0}, Lcom/boohee/more/DietNoticeActivity;->init()V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 151
    return-void
.end method

.method openOrClose(Lcom/boohee/model/Alarm;Z)V
    .locals 1
    .param p1, "alarm"    # Lcom/boohee/model/Alarm;
    .param p2, "isChecked"    # Z

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 112
    const/4 v0, 0x1

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0, p1}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 117
    iget-object v0, p0, Lcom/boohee/more/DietNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 118
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    goto :goto_0
.end method
