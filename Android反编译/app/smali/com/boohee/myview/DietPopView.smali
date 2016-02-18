.class public Lcom/boohee/myview/DietPopView;
.super Landroid/widget/LinearLayout;
.source "DietPopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/myview/DietPopView$OnDateClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/boohee/calendar/DietCalendarAdapter;

.field bottomShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06cd
    .end annotation
.end field

.field calendarGrid:Landroid/widget/GridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f0
    .end annotation
.end field

.field private chooseDate:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public dateClickListener:Lcom/boohee/myview/DietPopView$OnDateClickListener;

.field flipper:Landroid/widget/ViewFlipper;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ef
    .end annotation
.end field

.field itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;"
        }
    .end annotation
.end field

.field private record_on:Ljava/lang/String;

.field tvDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e031c
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/boohee/myview/DietPopView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/myview/DietPopView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/myview/DietPopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/myview/DietPopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/myview/DietPopView;->mRecords:Ljava/util/List;

    .line 218
    new-instance v0, Lcom/boohee/myview/DietPopView$5;

    invoke-direct {v0, p0}, Lcom/boohee/myview/DietPopView$5;-><init>(Lcom/boohee/myview/DietPopView;)V

    iput-object v0, p0, Lcom/boohee/myview/DietPopView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 75
    iput-object p1, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030231

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/boohee/myview/DietPopView;->initListener()V

    .line 79
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/boohee/myview/DietPopView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/myview/DietPopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/DietPopView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/myview/DietPopView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/DietPopView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->mRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/myview/DietPopView;)Lcom/boohee/calendar/DietCalendarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/DietPopView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->adapter:Lcom/boohee/calendar/DietCalendarAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/myview/DietPopView;Lcom/boohee/calendar/DietCalendarAdapter;)Lcom/boohee/calendar/DietCalendarAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/myview/DietPopView;
    .param p1, "x1"    # Lcom/boohee/calendar/DietCalendarAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/myview/DietPopView;->adapter:Lcom/boohee/calendar/DietCalendarAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/myview/DietPopView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/DietPopView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/myview/DietPopView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/DietPopView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->chooseDate:Ljava/lang/String;

    return-object v0
.end method

.method private getDietRecord()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utils/DateFormatUtils;->getNextMonthFirstDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/myview/DietPopView$2;

    iget-object v3, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/boohee/myview/DietPopView$2;-><init>(Lcom/boohee/myview/DietPopView;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->getCanRecordsDates(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 129
    return-void
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->calendarGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/boohee/myview/DietPopView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->bottomShadow:Landroid/view/View;

    new-instance v1, Lcom/boohee/myview/DietPopView$1;

    invoke-direct {v1, p0}, Lcom/boohee/myview/DietPopView$1;-><init>(Lcom/boohee/myview/DietPopView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    .line 182
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 183
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    new-instance v1, Lcom/boohee/myview/DietPopView$4;

    invoke-direct {v1, p0}, Lcom/boohee/myview/DietPopView$4;-><init>(Lcom/boohee/myview/DietPopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 207
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/boohee/myview/DietPopView;->chooseDate:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/boohee/myview/DietPopView;->initDate()V

    .line 85
    invoke-direct {p0}, Lcom/boohee/myview/DietPopView;->getDietRecord()V

    .line 86
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/boohee/myview/DietPopView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e06b3,
            0x7f0e06b4
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    invoke-direct {p0}, Lcom/boohee/myview/DietPopView;->getDietRecord()V

    .line 146
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/myview/DietPopView;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/boohee/myview/DietPopView;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e06b3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDateClickListener(Lcom/boohee/myview/DietPopView$OnDateClickListener;)V
    .locals 0
    .param p1, "dateClickListener"    # Lcom/boohee/myview/DietPopView$OnDateClickListener;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/boohee/myview/DietPopView;->dateClickListener:Lcom/boohee/myview/DietPopView$OnDateClickListener;

    .line 216
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v1, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/boohee/myview/DietPopView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, v4}, Lcom/boohee/myview/DietPopView;->setVisibility(I)V

    .line 151
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/boohee/myview/DietPopView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 152
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    new-instance v1, Lcom/boohee/myview/DietPopView$3;

    invoke-direct {v1, p0}, Lcom/boohee/myview/DietPopView$3;-><init>(Lcom/boohee/myview/DietPopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
