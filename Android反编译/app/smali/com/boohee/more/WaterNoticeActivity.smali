.class public Lcom/boohee/more/WaterNoticeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "WaterNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;
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

.field private tb_notice_water_eight:Landroid/widget/ToggleButton;

.field private tb_notice_water_five:Landroid/widget/ToggleButton;

.field private tb_notice_water_four:Landroid/widget/ToggleButton;

.field private tb_notice_water_one:Landroid/widget/ToggleButton;

.field private tb_notice_water_seven:Landroid/widget/ToggleButton;

.field private tb_notice_water_six:Landroid/widget/ToggleButton;

.field private tb_notice_water_three:Landroid/widget/ToggleButton;

.field private tb_notice_water_two:Landroid/widget/ToggleButton;

.field private txt_notice_water_time_eight:Landroid/widget/TextView;

.field private txt_notice_water_time_five:Landroid/widget/TextView;

.field private txt_notice_water_time_four:Landroid/widget/TextView;

.field private txt_notice_water_time_one:Landroid/widget/TextView;

.field private txt_notice_water_time_seven:Landroid/widget/TextView;

.field private txt_notice_water_time_six:Landroid/widget/TextView;

.field private txt_notice_water_time_three:Landroid/widget/TextView;

.field private txt_notice_water_time_two:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/more/WaterNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/WaterNoticeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/WaterNoticeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/WaterNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/more/WaterNoticeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/WaterNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/more/WaterNoticeActivity;)Lcom/boohee/modeldao/AlarmDao;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/WaterNoticeActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0e07a0

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_one:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e07a3

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_two:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0e07a6

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_three:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0e07a9

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_four:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0e07ac

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_five:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0e07af

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_six:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0e07b2

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_seven:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0e07b5

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_eight:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0e07a1

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_one:Landroid/widget/ToggleButton;

    .line 55
    const v0, 0x7f0e07a4

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_two:Landroid/widget/ToggleButton;

    .line 56
    const v0, 0x7f0e07a7

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_three:Landroid/widget/ToggleButton;

    .line 57
    const v0, 0x7f0e07aa

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_four:Landroid/widget/ToggleButton;

    .line 58
    const v0, 0x7f0e07ad

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_five:Landroid/widget/ToggleButton;

    .line 59
    const v0, 0x7f0e07b0

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_six:Landroid/widget/ToggleButton;

    .line 60
    const v0, 0x7f0e07b3

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_seven:Landroid/widget/ToggleButton;

    .line 61
    const v0, 0x7f0e07b6

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_eight:Landroid/widget/ToggleButton;

    .line 62
    return-void
.end method


# virtual methods
.method addListener()V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_one:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$1;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_two:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$2;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_three:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$3;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_four:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$4;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_five:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$5;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_six:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$6;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$6;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_seven:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$7;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_eight:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/WaterNoticeActivity$8;

    invoke-direct {v1, p0}, Lcom/boohee/more/WaterNoticeActivity$8;-><init>(Lcom/boohee/more/WaterNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_one:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_one:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_two:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_two:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_three:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_three:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_four:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_four:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_five:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_five:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_six:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_six:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_seven:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_seven:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_eight:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;

    iget-object v3, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_eight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-direct {v2, p0, v3, v0}, Lcom/boohee/more/WaterNoticeActivity$TimeOnclick;-><init>(Lcom/boohee/more/WaterNoticeActivity;Landroid/widget/TextView;Lcom/boohee/model/Alarm;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method initData()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    .line 66
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->DRINK:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v1}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method initUI()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_one:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_two:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_three:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_four:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_five:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_six:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_seven:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->txt_notice_water_time_eight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_one:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 174
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_two:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 175
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_three:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 176
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_four:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 177
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_five:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 178
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_six:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_seven:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/boohee/more/WaterNoticeActivity;->tb_notice_water_eight:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarms:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f07062a

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->setTitle(I)V

    .line 37
    const v0, 0x7f03027f

    invoke-virtual {p0, v0}, Lcom/boohee/more/WaterNoticeActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/boohee/more/WaterNoticeActivity;->initData()V

    .line 39
    invoke-direct {p0}, Lcom/boohee/more/WaterNoticeActivity;->findView()V

    .line 40
    invoke-virtual {p0}, Lcom/boohee/more/WaterNoticeActivity;->addListener()V

    .line 41
    invoke-virtual {p0}, Lcom/boohee/more/WaterNoticeActivity;->initUI()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 214
    return-void
.end method

.method openOrClose(Lcom/boohee/model/Alarm;Z)V
    .locals 1
    .param p1, "alarm"    # Lcom/boohee/model/Alarm;
    .param p2, "isChecked"    # Z

    .prologue
    .line 201
    if-eqz p2, :cond_0

    .line 202
    const/4 v0, 0x1

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0, p1}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 207
    iget-object v0, p0, Lcom/boohee/more/WaterNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 208
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/boohee/model/Alarm;->enabled:I

    goto :goto_0
.end method
