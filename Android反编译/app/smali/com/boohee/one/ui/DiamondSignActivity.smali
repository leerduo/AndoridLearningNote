.class public Lcom/boohee/one/ui/DiamondSignActivity;
.super Lcom/boohee/main/GestureActivity;
.source "DiamondSignActivity.java"


# static fields
.field private static final DIAMOND_RULE_URL:Ljava/lang/String; = "http://shop.boohee.com/store/pages/checkin_rule"


# instance fields
.field private adapter:Lcom/boohee/calendar/CheckCalendarAdapter;

.field calendarGrid:Landroid/widget/GridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f0
    .end annotation
.end field

.field checkBox:Lcom/boohee/widgets/AnimCheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0216
    .end annotation
.end field

.field private checkInfo:Lcom/boohee/model/CheckInfo;

.field exchangeBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0111
    .end annotation
.end field

.field flipper:Landroid/widget/ViewFlipper;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ef
    .end annotation
.end field

.field leftDate:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06b3
    .end annotation
.end field

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CheckRecord;",
            ">;"
        }
    .end annotation
.end field

.field private record_on:Ljava/lang/String;

.field repairBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0118
    .end annotation
.end field

.field private repairDate:Ljava/lang/String;

.field rightDate:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06b4
    .end annotation
.end field

.field tvAllDay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0116
    .end annotation
.end field

.field tvContinueDay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0113
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e031c
    .end annotation
.end field

.field tvNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0110
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->mRecords:Ljava/util/List;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->repairDate:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/calendar/CheckCalendarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/DiamondSignActivity;Lcom/boohee/calendar/CheckCalendarAdapter;)Lcom/boohee/calendar/CheckCalendarAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;
    .param p1, "x1"    # Lcom/boohee/calendar/CheckCalendarAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->adapter:Lcom/boohee/calendar/CheckCalendarAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/DiamondSignActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->repairDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/DiamondSignActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->requestCheckNumber()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/DiamondSignActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->requestRecords()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/DiamondSignActivity;)Lcom/boohee/model/CheckInfo;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/DiamondSignActivity;Lcom/boohee/model/CheckInfo;)Lcom/boohee/model/CheckInfo;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;
    .param p1, "x1"    # Lcom/boohee/model/CheckInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->checkInfo:Lcom/boohee/model/CheckInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->mRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/DiamondSignActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/DiamondSignActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    if-eqz p0, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->calendarGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/boohee/one/ui/DiamondSignActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/DiamondSignActivity$1;-><init>(Lcom/boohee/one/ui/DiamondSignActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->checkBox:Lcom/boohee/widgets/AnimCheckBox;

    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefDiamondSignRemind()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/AnimCheckBox;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->checkBox:Lcom/boohee/widgets/AnimCheckBox;

    new-instance v1, Lcom/boohee/one/ui/DiamondSignActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/DiamondSignActivity$2;-><init>(Lcom/boohee/one/ui/DiamondSignActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/AnimCheckBox;->setOnCheckedChangeListener(Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;)V

    .line 163
    return-void
.end method

.method private repair()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->repairDate:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/DiamondSignActivity$3;

    iget-object v3, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/DiamondSignActivity$3;-><init>(Lcom/boohee/one/ui/DiamondSignActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->repair(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 184
    return-void
.end method

.method private requestCheckNumber()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/DiamondSignActivity$4;

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/DiamondSignActivity$4;-><init>(Lcom/boohee/one/ui/DiamondSignActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->getCheckNumber(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 200
    return-void
.end method

.method private requestRecords()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->showLoading()V

    .line 206
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/DiamondSignActivity$5;

    iget-object v3, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/DiamondSignActivity$5;-><init>(Lcom/boohee/one/ui/DiamondSignActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getCheckRecord(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 231
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0111,
            0x7f0e06b3,
            0x7f0e06b4,
            0x7f0e010f,
            0x7f0e0118
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 244
    :sswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    const-string v3, "yyyyMM"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy\u5e74M\u6708"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 247
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->repairBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->requestRecords()V

    goto :goto_0

    .line 251
    :sswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->tvDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/DiamondSignActivity;->record_on:Ljava/lang/String;

    const-string v3, "yyyyMM"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v3, "yyyy\u5e74M\u6708"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 254
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->repairBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->requestRecords()V

    goto :goto_0

    .line 260
    :sswitch_2
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->ctx:Landroid/content/Context;

    const-string v2, "bingo_viewRedeemPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    const-string v1, "home_clickChcekIn"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    const-string v1, "/api/v1/checkin/diamonds"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/http/client/StatusClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "url":Ljava/lang/String;
    const v1, 0x7f07047f

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/DiamondSignActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v0    # "url":Ljava/lang/String;
    :sswitch_3
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->repair()V

    goto/16 :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x7f0e010f -> :sswitch_2
        0x7f0e0111 -> :sswitch_2
        0x7f0e0118 -> :sswitch_3
        0x7f0e06b3 -> :sswitch_0
        0x7f0e06b4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/DiamondSignActivity;->setContentView(I)V

    .line 90
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 91
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->initDate()V

    .line 92
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->initListener()V

    .line 93
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->requestRecords()V

    .line 94
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->initView()V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/DiamondSignActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const v2, 0x7f0701db

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/DiamondSignActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://shop.boohee.com/store/pages/checkin_rule"

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07ce
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/boohee/one/ui/DiamondSignActivity;->requestCheckNumber()V

    .line 101
    return-void
.end method
