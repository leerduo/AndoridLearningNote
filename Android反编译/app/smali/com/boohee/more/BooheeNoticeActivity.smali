.class public Lcom/boohee/more/BooheeNoticeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "BooheeNoticeActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private alarm_dao:Lcom/boohee/modeldao/AlarmDao;

.field private isDietOpen:Z

.field private isGoodmorningOpen:Z

.field private isSportOpen:Z

.field private isWaterOpen:Z

.field private noticeDao:Lcom/boohee/modeldao/NoticeDao;

.field private tb_notice_diet:Landroid/widget/ToggleButton;

.field private tb_notice_good_morning:Landroid/widget/ToggleButton;

.field private tb_notice_sport:Landroid/widget/ToggleButton;

.field private tb_notice_water:Landroid/widget/ToggleButton;

.field private txt_notice_box_count:Landroid/widget/TextView;

.field private txt_notice_diet_sub_title:Landroid/widget/TextView;

.field private txt_notice_good_morning_sub_title:Landroid/widget/TextView;

.field private txt_notice_sport_sub_title:Landroid/widget/TextView;

.field private txt_notice_water_sub_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/boohee/more/BooheeNoticeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/BooheeNoticeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isGoodmorningOpen:Z

    .line 31
    iput-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isDietOpen:Z

    .line 32
    iput-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isSportOpen:Z

    .line 33
    iput-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isWaterOpen:Z

    return-void
.end method

.method static synthetic access$002(Lcom/boohee/more/BooheeNoticeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/BooheeNoticeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/boohee/more/BooheeNoticeActivity;->isGoodmorningOpen:Z

    return p1
.end method

.method static synthetic access$102(Lcom/boohee/more/BooheeNoticeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/BooheeNoticeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/boohee/more/BooheeNoticeActivity;->isDietOpen:Z

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/more/BooheeNoticeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/BooheeNoticeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/boohee/more/BooheeNoticeActivity;->isSportOpen:Z

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/more/BooheeNoticeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/BooheeNoticeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/boohee/more/BooheeNoticeActivity;->isWaterOpen:Z

    return p1
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 235
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_good_morning_sub_title:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f0e028f

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_diet_sub_title:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f0e0293

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_sport_sub_title:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0e0297

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_water_sub_title:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0e029c

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_box_count:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_good_morning_sub_title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 242
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_diet_sub_title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 243
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_sport_sub_title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 244
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_water_sub_title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 246
    const v0, 0x7f0e028c

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_good_morning:Landroid/widget/ToggleButton;

    .line 247
    const v0, 0x7f0e0290

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_diet:Landroid/widget/ToggleButton;

    .line 248
    const v0, 0x7f0e0294

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_sport:Landroid/widget/ToggleButton;

    .line 249
    const v0, 0x7f0e0298

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_water:Landroid/widget/ToggleButton;

    .line 250
    return-void
.end method


# virtual methods
.method addListener()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_good_morning:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/BooheeNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/BooheeNoticeActivity$1;-><init>(Lcom/boohee/more/BooheeNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_diet:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/BooheeNoticeActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/more/BooheeNoticeActivity$2;-><init>(Lcom/boohee/more/BooheeNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_sport:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/BooheeNoticeActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/more/BooheeNoticeActivity$3;-><init>(Lcom/boohee/more/BooheeNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_water:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/more/BooheeNoticeActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/more/BooheeNoticeActivity$4;-><init>(Lcom/boohee/more/BooheeNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    return-void
.end method

.method closeAllNotice(ILandroid/widget/TextView;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 170
    iget-object v3, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v3, p1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 171
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    .line 176
    .local v0, "alarm":Lcom/boohee/model/Alarm;
    const/4 v3, 0x0

    iput v3, v0, Lcom/boohee/model/Alarm;->enabled:I

    .line 177
    iget-object v3, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v3, v0}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 178
    iget-object v3, p0, Lcom/boohee/more/BooheeNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v0    # "alarm":Lcom/boohee/model/Alarm;
    :cond_2
    const v3, 0x7f070166

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method initData()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    .line 87
    new-instance v0, Lcom/boohee/modeldao/NoticeDao;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->noticeDao:Lcom/boohee/modeldao/NoticeDao;

    .line 88
    return-void
.end method

.method initNotice(ILandroid/widget/ToggleButton;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "toggleButton"    # Landroid/widget/ToggleButton;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 117
    iget-object v4, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v4, p1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 118
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v3, ""

    .line 122
    .local v3, "timeString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    .line 124
    .local v0, "alarm":Lcom/boohee/model/Alarm;
    invoke-virtual {v0}, Lcom/boohee/model/Alarm;->is_open()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/Alarm;

    invoke-virtual {v4}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v4, v0}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 127
    iget-object v4, p0, Lcom/boohee/more/BooheeNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 122
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "alarm":Lcom/boohee/model/Alarm;
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 132
    const v4, 0x7f070166

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 134
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6bcf\u5929 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method initUI()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->MORNING:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_good_morning:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_good_morning_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/boohee/more/BooheeNoticeActivity;->initNotice(ILandroid/widget/ToggleButton;Landroid/widget/TextView;)V

    .line 104
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->DIET:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_diet:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_diet_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/boohee/more/BooheeNoticeActivity;->initNotice(ILandroid/widget/ToggleButton;Landroid/widget/TextView;)V

    .line 105
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->SPORT:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_sport:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_sport_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/boohee/more/BooheeNoticeActivity;->initNotice(ILandroid/widget/ToggleButton;Landroid/widget/TextView;)V

    .line 106
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->DRINK:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->tb_notice_water:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_water_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/boohee/more/BooheeNoticeActivity;->initNotice(ILandroid/widget/ToggleButton;Landroid/widget/TextView;)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/GoodMorningNoticeActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 189
    :pswitch_2
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/DietNoticeActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 192
    :pswitch_3
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/SportNoticeActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 195
    :pswitch_4
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/WaterNoticeActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 198
    :pswitch_5
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/NoticeListActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 201
    :pswitch_6
    iget-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isGoodmorningOpen:Z

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->MORNING:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_good_morning_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->openAllNotice(ILandroid/widget/TextView;)V

    goto :goto_0

    .line 204
    :cond_0
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->MORNING:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_good_morning_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->closeAllNotice(ILandroid/widget/TextView;)V

    goto :goto_0

    .line 208
    :pswitch_7
    iget-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isDietOpen:Z

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->DIET:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_diet_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->openAllNotice(ILandroid/widget/TextView;)V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->DIET:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_diet_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->closeAllNotice(ILandroid/widget/TextView;)V

    goto :goto_0

    .line 215
    :pswitch_8
    iget-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isSportOpen:Z

    if-eqz v0, :cond_2

    .line 216
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->SPORT:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_sport_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->openAllNotice(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 218
    :cond_2
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->SPORT:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_sport_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->closeAllNotice(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 222
    :pswitch_9
    iget-boolean v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->isWaterOpen:Z

    if-eqz v0, :cond_3

    .line 223
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->DRINK:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_water_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->openAllNotice(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 225
    :cond_3
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->DRINK:Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, Lcom/boohee/model/Alarm$AlarmType;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_water_sub_title:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/more/BooheeNoticeActivity;->closeAllNotice(ILandroid/widget/TextView;)V

    goto/16 :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0289
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0703a1

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->setTitle(I)V

    .line 38
    const v0, 0x7f03009f

    invoke-virtual {p0, v0}, Lcom/boohee/more/BooheeNoticeActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/boohee/more/BooheeNoticeActivity;->initData()V

    .line 40
    invoke-direct {p0}, Lcom/boohee/more/BooheeNoticeActivity;->findView()V

    .line 41
    invoke-virtual {p0}, Lcom/boohee/more/BooheeNoticeActivity;->addListener()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 255
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 256
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity;->noticeDao:Lcom/boohee/modeldao/NoticeDao;

    invoke-virtual {v0}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 257
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/boohee/more/BooheeNoticeActivity;->initUI()V

    .line 49
    return-void
.end method

.method openAllNotice(ILandroid/widget/TextView;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 146
    iget-object v4, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v4, p1}, Lcom/boohee/modeldao/AlarmDao;->getAlarmsByNoticeType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v3, ""

    .line 151
    .local v3, "timeString":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm;

    .line 153
    .local v0, "alarm":Lcom/boohee/model/Alarm;
    const/4 v4, 0x1

    iput v4, v0, Lcom/boohee/model/Alarm;->enabled:I

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/Alarm;

    invoke-virtual {v4}, Lcom/boohee/model/Alarm;->formatTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/boohee/more/BooheeNoticeActivity;->alarm_dao:Lcom/boohee/modeldao/AlarmDao;

    invoke-virtual {v4, v0}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 156
    iget-object v4, p0, Lcom/boohee/more/BooheeNoticeActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v0    # "alarm":Lcom/boohee/model/Alarm;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6bcf\u5929 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setUnReadCount()V
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->noticeDao:Lcom/boohee/modeldao/NoticeDao;

    invoke-virtual {v1}, Lcom/boohee/modeldao/NoticeDao;->unReadCount()I

    move-result v0

    .line 92
    .local v0, "unReadCount":I
    if-nez v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_box_count:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_box_count:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/boohee/more/BooheeNoticeActivity;->txt_notice_box_count:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
