.class public Lcom/boohee/one/ui/fragment/HomeNewFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "HomeNewFragment.java"


# static fields
.field public static final REFRESH_ONE_KEY_STATUS:Ljava/lang/String; = "refresh_one_key_status"

.field public static final TIME_BREAKFAST:I = 0x0

.field public static final TIME_DINNER:I = 0x3

.field public static final TIME_EXTRAL_MEAL:I = 0x2

.field public static final TIME_LUNCH:I = 0x1

.field public static toolBarColor:I


# instance fields
.field private KEY_LAST_OPEN_DAY:Ljava/lang/String;

.field private badgeView:Lcom/boohee/myview/BadgeView;

.field btnBeginSport:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0409
    .end annotation
.end field

.field btnMoreDiet:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03fc
    .end annotation
.end field

.field private callback:Lcom/boohee/one/http/JsonCallback;

.field private checkInCount:I

.field private consultorCard:Lcom/boohee/model/home/HomeCard;

.field consultorLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03aa
    .end annotation
.end field

.field private consultorMessage:Ljava/lang/String;

.field private currentTime:I

.field private day:Ljava/lang/String;

.field private dietImageCircle:I

.field private dietPlanCardData:Lcom/boohee/model/home/HomeCard;

.field private home:Lcom/boohee/model/home/Home;

.field private homePopView:Lcom/boohee/myview/HomePopView;

.field private isCheckin:Z

.field private isFirstLoad:Z

.field ivConsultorAvatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03ab
    .end annotation
.end field

.field ivRead:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03ff
    .end annotation
.end field

.field ivSport:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0330
    .end annotation
.end field

.field ivTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0179
    .end annotation
.end field

.field layoutDietContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03fb
    .end annotation
.end field

.field layoutPullDown:Lcom/boohee/myview/PullToZoomScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0346
    .end annotation
.end field

.field layoutTop:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0347
    .end annotation
.end field

.field private loadDataTime:Ljava/lang/String;

.field private messageCount:I

.field private month:Ljava/lang/String;

.field private oldRefreshTime:I

.field simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private sportCardData:Lcom/boohee/model/home/HomeCard;

.field private sportLessonExist:Z

.field sportProgressLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0408
    .end annotation
.end field

.field private tipsCardData:Lcom/boohee/model/home/HomeCard;

.field tvCheckIn:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e034b
    .end annotation
.end field

.field tvConsultorContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03ac
    .end annotation
.end field

.field tvDay:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0348
    .end annotation
.end field

.field tvDietSubtitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03fa
    .end annotation
.end field

.field tvDietTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03f9
    .end annotation
.end field

.field tvMonth:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0349
    .end annotation
.end field

.field tvReadLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0400
    .end annotation
.end field

.field tvReadMore:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0403
    .end annotation
.end field

.field tvReadSubtitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0401
    .end annotation
.end field

.field tvReadTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e03fd
    .end annotation
.end field

.field tvSportContent:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0407
    .end annotation
.end field

.field tvSportLevel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0406
    .end annotation
.end field

.field tvSportSubtitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0405
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f9
    .end annotation
.end field

.field tvWeek:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e034a
    .end annotation
.end field

.field private weekDay:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput v0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->toolBarColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isFirstLoad:Z

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isCheckin:Z

    .line 181
    const-string v0, "KEY_LAST_OPEN_DAY"

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->KEY_LAST_OPEN_DAY:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->showHighLight()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/HomeNewFragment;)Lcom/boohee/model/home/Home;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshConsultorInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/HomeNewFragment;)Lcom/boohee/myview/HomePopView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->homePopView:Lcom/boohee/myview/HomePopView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/HomeNewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isCheckin:Z

    return p1
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/fragment/HomeNewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->checkInCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->checkGuide()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshCheckInView()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/HomeNewFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$802(Lcom/boohee/one/ui/fragment/HomeNewFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->messageCount:I

    return p1
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/fragment/HomeNewFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeNewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private checkDietTime()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0xd

    const/16 v3, 0xa

    .line 769
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 770
    .local v0, "hour":I
    if-ltz v0, :cond_2

    if-ge v0, v3, :cond_2

    .line 771
    const/4 v1, 0x0

    iput v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    .line 779
    :cond_0
    :goto_0
    iget v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    iget v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->oldRefreshTime:I

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isFirstLoad:Z

    if-nez v1, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshDietPlanView()V

    .line 782
    :cond_1
    iget v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    iput v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->oldRefreshTime:I

    .line 783
    return-void

    .line 772
    :cond_2
    if-lt v0, v3, :cond_3

    if-ge v0, v4, :cond_3

    .line 773
    const/4 v1, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    goto :goto_0

    .line 774
    :cond_3
    if-lt v0, v4, :cond_4

    if-ge v0, v5, :cond_4

    .line 775
    const/4 v1, 0x2

    iput v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    goto :goto_0

    .line 776
    :cond_4
    if-lt v0, v5, :cond_0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 777
    const/4 v1, 0x3

    iput v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    goto :goto_0
.end method

.method private checkGuide()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {}, Lcom/boohee/database/OnePreference;->isNewHomeGuide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment$1;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getDate()V
    .locals 4

    .prologue
    .line 553
    :try_start_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v2, v2, Lcom/boohee/model/home/Home;->date:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "dates":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->year:Ljava/lang/String;

    .line 555
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->month:Ljava/lang/String;

    .line 556
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->day:Ljava/lang/String;

    .line 557
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/DateHelper;->getWeekOfDate(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->weekDay:Ljava/lang/String;

    .line 558
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v2, v2, Lcom/boohee/model/home/Home;->date:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->loadDataTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v0    # "dates":[Ljava/lang/String;
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getLastestWeight()V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/HomeNewFragment$5;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/RecordApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 332
    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 545
    :cond_0
    const-class v0, Lcom/boohee/model/home/Home;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/home/Home;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    .line 546
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "new_home"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 547
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getDate()V

    .line 548
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshView()V

    goto :goto_0
.end method

.method private initDataCallBack()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcom/boohee/one/ui/fragment/HomeNewFragment$8;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/fragment/HomeNewFragment$8;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->callback:Lcom/boohee/one/http/JsonCallback;

    .line 489
    return-void
.end method

.method private initPopView()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/boohee/myview/HomePopView;

    invoke-direct {v0}, Lcom/boohee/myview/HomePopView;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->homePopView:Lcom/boohee/myview/HomePopView;

    .line 303
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->showLoading()V

    .line 243
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->initDataCallBack()V

    .line 245
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->initPopView()V

    .line 247
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->layoutPullDown:Lcom/boohee/myview/PullToZoomScrollView;

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment$4;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/PullToZoomScrollView;->setOnPullToZoomListener(Lcom/boohee/myview/PullToZoomScrollView$OnPullToZoomListener;)V

    .line 296
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivSport:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3, v2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 297
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivRead:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3, v2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 298
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvReadLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v3, v2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 299
    return-void
.end method

.method private postCheckIn()V
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$7;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/HomeNewFragment$7;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->checkIn(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 375
    return-void
.end method

.method private refreshAvatarInToolBar()V
    .locals 4

    .prologue
    .line 666
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v0, v0, Lcom/boohee/model/home/Home;->user:Lcom/boohee/model/User;

    if-nez v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v1, v1, Lcom/boohee/model/home/Home;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->avatar_url:Ljava/lang/String;

    sget-object v2, Lcom/boohee/one/ui/MainActivity;->ivAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method private refreshCheckInView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 379
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isCheckin:Z

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const v1, 0x7f07010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 382
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fde\u7eed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->checkInCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5929"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const v1, 0x7f020229

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 386
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 387
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private refreshConsultorInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 508
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    iget-boolean v2, v2, Lcom/boohee/model/home/HomeCard;->show:Z

    if-eqz v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    :goto_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshMessageCount()V

    .line 514
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->data:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/home/HomeCardData;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCardData;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 518
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x12

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 520
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvConsultorContent:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .end local v0    # "spannableString":Landroid/text/SpannableString;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v2, v2, Lcom/boohee/model/home/Home;->status:Ljava/lang/String;

    const-string v3, "to_profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvConsultorContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    iget-object v3, v3, Lcom/boohee/model/home/HomeCard;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->data:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/home/HomeCardData;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCardData;->avatar_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivConsultorAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v3, v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 528
    :cond_2
    return-void

    .line 511
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private refreshDietPlanView()V
    .locals 15

    .prologue
    .line 676
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    if-nez v10, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvDietTitle:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v11, v11, Lcom/boohee/model/home/HomeCard;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    const-string v5, ""

    .line 681
    .local v5, "itemName":Ljava/lang/String;
    iget v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    packed-switch v10, :pswitch_data_0

    .line 695
    :goto_1
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvDietTitle:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u8ba1\u5212"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v0, v10, Lcom/boohee/model/home/HomeCard;->data:Ljava/util/List;

    .line 697
    .local v0, "cardDatas":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/HomeCardData;>;"
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->layoutDietContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 698
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_3

    .line 699
    iget v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/boohee/model/home/HomeCardData;

    iget-object v1, v10, Lcom/boohee/model/home/HomeCardData;->detail:Ljava/util/List;

    .line 700
    .local v1, "details":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/DietDetail;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 703
    iget-object v11, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvDietSubtitle:Landroid/widget/TextView;

    const v10, 0x7f070511

    invoke-virtual {p0, v10}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->currentTime:I

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/boohee/model/home/HomeCardData;

    iget v10, v10, Lcom/boohee/model/home/HomeCardData;->calory:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_2

    const/4 v10, 0x3

    :goto_3
    if-ge v4, v10, :cond_0

    .line 706
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/home/DietDetail;

    .line 707
    .local v2, "dietDetail":Lcom/boohee/model/home/DietDetail;
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030133

    iget-object v12, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->layoutDietContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 708
    .local v9, "view":Landroid/widget/RelativeLayout;
    const v10, 0x7f0e03ea

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 709
    .local v3, "dietTvLayout":Landroid/widget/LinearLayout;
    const v10, 0x7f0e0129

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 710
    .local v7, "tvFoodName":Landroid/widget/TextView;
    const v10, 0x7f0e00c9

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 711
    .local v8, "tvFoodUnit":Landroid/widget/TextView;
    const v10, 0x7f0e03e9

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 712
    .local v6, "ivFood":Lde/hdodenhof/circleimageview/CircleImageView;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v12, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietImageCircle:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 713
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v12, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietImageCircle:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 714
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v11, v2, Lcom/boohee/model/home/DietDetail;->image_url:Ljava/lang/String;

    const v12, 0x7f020255

    invoke-static {v12}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 715
    iget-object v10, v2, Lcom/boohee/model/home/DietDetail;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/boohee/model/home/DietDetail;->amount:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/boohee/model/home/DietDetail;->unit:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->layoutDietContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 718
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->btnMoreDiet:Landroid/widget/TextView;

    const v11, 0x7f07039b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 705
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 683
    .end local v0    # "cardDatas":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/HomeCardData;>;"
    .end local v1    # "details":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/DietDetail;>;"
    .end local v2    # "dietDetail":Lcom/boohee/model/home/DietDetail;
    .end local v3    # "dietTvLayout":Landroid/widget/LinearLayout;
    .end local v4    # "i":I
    .end local v6    # "ivFood":Lde/hdodenhof/circleimageview/CircleImageView;
    .end local v7    # "tvFoodName":Landroid/widget/TextView;
    .end local v8    # "tvFoodUnit":Landroid/widget/TextView;
    .end local v9    # "view":Landroid/widget/RelativeLayout;
    :pswitch_0
    const-string v5, "\u65e9\u9910"

    .line 684
    goto/16 :goto_1

    .line 686
    :pswitch_1
    const-string v5, "\u5348\u9910"

    .line 687
    goto/16 :goto_1

    .line 689
    :pswitch_2
    const-string v5, "\u52a0\u9910"

    .line 690
    goto/16 :goto_1

    .line 692
    :pswitch_3
    const-string v5, "\u665a\u9910"

    goto/16 :goto_1

    .line 705
    .restart local v0    # "cardDatas":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/HomeCardData;>;"
    .restart local v1    # "details":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/DietDetail;>;"
    .restart local v4    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    goto/16 :goto_3

    .line 721
    .end local v1    # "details":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/home/DietDetail;>;"
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030133

    iget-object v12, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->layoutDietContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 722
    .restart local v9    # "view":Landroid/widget/RelativeLayout;
    const v10, 0x7f0e03ea

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 723
    .restart local v3    # "dietTvLayout":Landroid/widget/LinearLayout;
    const v10, 0x7f0e0129

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 724
    .restart local v7    # "tvFoodName":Landroid/widget/TextView;
    const v10, 0x7f0e00c9

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 725
    .restart local v8    # "tvFoodUnit":Landroid/widget/TextView;
    const v10, 0x7f0e03e9

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 726
    .restart local v6    # "ivFood":Lde/hdodenhof/circleimageview/CircleImageView;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v12, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietImageCircle:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 727
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v6}, Lde/hdodenhof/circleimageview/CircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v12, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietImageCircle:I

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 730
    const v10, 0x7f020255

    invoke-virtual {v6, v10}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageResource(I)V

    .line 731
    const-string v10, ""

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    const-string v10, ""

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->layoutDietContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 734
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->btnMoreDiet:Landroid/widget/TextView;

    const v11, 0x7f070271

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 735
    iget-object v10, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvDietSubtitle:Landroid/widget/TextView;

    const v11, 0x7f0701e2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshMessageCount()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    if-eqz v0, :cond_0

    .line 532
    iget v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->messageCount:I

    if-lez v0, :cond_2

    .line 533
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    iget v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->messageCount:I

    const/16 v2, 0x63

    if-le v0, v2, :cond_1

    const-string v0, "99+"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/boohee/myview/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->show()V

    .line 539
    :cond_0
    :goto_1
    return-void

    .line 533
    :cond_1
    iget v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->messageCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->hide()V

    goto :goto_1
.end method

.method private refreshView()V
    .locals 13

    .prologue
    .line 565
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    if-nez v7, :cond_1

    .line 663
    :cond_0
    return-void

    .line 569
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshAvatarInToolBar()V

    .line 571
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvMonth:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->month:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvDay:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->day:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvWeek:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->weekDay:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v8, v8, Lcom/boohee/model/home/Home;->back_img_small:Ljava/lang/String;

    iget-object v9, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivTop:Landroid/widget/ImageView;

    const v10, 0x7f02007d

    invoke-static {v10}, Lcom/boohee/utility/ImageLoaderOptions;->custom(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 576
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->homePopView:Lcom/boohee/myview/HomePopView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v9, v9, Lcom/boohee/model/home/Home;->back_img:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/boohee/myview/HomePopView;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->home:Lcom/boohee/model/home/Home;

    iget-object v7, v7, Lcom/boohee/model/home/Home;->cards:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/home/HomeCard;

    .line 590
    .local v0, "homeCard":Lcom/boohee/model/home/HomeCard;
    iget-boolean v7, v0, Lcom/boohee/model/home/HomeCard;->show:Z

    if-eqz v7, :cond_2

    .line 593
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->name:Ljava/lang/String;

    const-string v8, "consultor"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 594
    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    .line 595
    new-instance v7, Lcom/boohee/myview/BadgeView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivConsultorAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {v7, v8, v9}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    .line 596
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/boohee/myview/BadgeView;->setBadgeBackgroundColor(I)V

    .line 597
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d012e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/boohee/myview/BadgeView;->setTextColor(I)V

    .line 598
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->badgeView:Lcom/boohee/myview/BadgeView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/boohee/myview/BadgeView;->setBadgeMargin(II)V

    .line 599
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshConsultorInfo()V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->name:Ljava/lang/String;

    const-string v8, "bingo_post"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 602
    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    .line 603
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvReadTitle:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/boohee/model/home/HomeCard;->sub_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvReadSubtitle:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/boohee/model/home/HomeCard;->content:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->link_more:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 606
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvReadMore:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/boohee/model/home/HomeCard;->link_more:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 608
    :cond_4
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, v0, Lcom/boohee/model/home/HomeCard;->back_ground:Ljava/lang/String;

    iget-object v9, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivRead:Landroid/widget/ImageView;

    const v10, 0x7f0202ae

    invoke-static {v10}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 609
    :cond_5
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->name:Ljava/lang/String;

    const-string v8, "diet_plan"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 611
    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    .line 612
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->refreshDietPlanView()V

    goto/16 :goto_0

    .line 614
    :cond_6
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->name:Ljava/lang/String;

    const-string v8, "sport_plan"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 616
    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    .line 617
    iget-boolean v7, v0, Lcom/boohee/model/home/HomeCard;->lesson_exist:Z

    iput-boolean v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportLessonExist:Z

    .line 618
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 619
    iget-boolean v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportLessonExist:Z

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    if-eqz v7, :cond_d

    .line 620
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v8, v8, Lcom/boohee/model/home/HomeSportPlan;->pic_url:Ljava/lang/String;

    iget-object v9, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivSport:Landroid/widget/ImageView;

    const v10, 0x7f020251

    invoke-static {v10}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 621
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->btnBeginSport:Landroid/widget/TextView;

    const-string v8, "\u9a6c\u4e0a\u8bad\u7ec3"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvSportSubtitle:Landroid/widget/TextView;

    const-string v8, "\u5b8c\u6210\u4eca\u65e5\u8fd0\u52a8\u53ef\u4ee5\u6d88\u8017%d\u5343\u5361"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget v11, v11, Lcom/boohee/model/home/HomeSportPlan;->calorie:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const-string v3, ""

    .line 624
    .local v3, "level":Ljava/lang/String;
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v7, v7, Lcom/boohee/model/home/HomeSportPlan;->difficulty:Ljava/lang/String;

    const-string v8, "easy"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 625
    const-string v3, "\u521d\u7ea7"

    .line 631
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvSportLevel:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u00b7"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u7b2c%d\u9636\u6bb5"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget v12, v12, Lcom/boohee/model/home/HomeSportPlan;->level:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvSportContent:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v8, v8, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v8, v8, Lcom/boohee/model/home/HomeSportPlan;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v7, v7, Lcom/boohee/model/home/HomeSportPlan;->progresses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 634
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v7, v7, Lcom/boohee/model/home/HomeSportPlan;->progresses:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;

    .line 635
    .local v5, "progress":Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 636
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, v5, Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;->number:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 638
    iget-object v7, v5, Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;->status:Ljava/lang/String;

    const-string v8, "finished"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 639
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    const v7, 0x7f020088

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 649
    :cond_8
    :goto_3
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {v7, v8}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const/high16 v9, 0x41c80000    # 25.0f

    invoke-static {v8, v9}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 651
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v9, v10}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 652
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportProgressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 626
    .end local v1    # "i":I
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "progress":Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_9
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v7, v7, Lcom/boohee/model/home/HomeSportPlan;->difficulty:Ljava/lang/String;

    const-string v8, "normal"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 627
    const-string v3, "\u4e2d\u7ea7"

    goto/16 :goto_1

    .line 628
    :cond_a
    iget-object v7, v0, Lcom/boohee/model/home/HomeCard;->plan:Lcom/boohee/model/home/HomeSportPlan;

    iget-object v7, v7, Lcom/boohee/model/home/HomeSportPlan;->difficulty:Ljava/lang/String;

    const-string v8, "hard"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 629
    const-string v3, "\u9ad8\u7ea7"

    goto/16 :goto_1

    .line 641
    .restart local v1    # "i":I
    .restart local v5    # "progress":Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_b
    iget-object v7, v5, Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;->status:Ljava/lang/String;

    const-string v8, "pre"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 642
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0115

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    const v7, 0x7f020086

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 644
    :cond_c
    iget-object v7, v5, Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;->status:Ljava/lang/String;

    const-string v8, "normal"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 645
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    const v7, 0x7f020074

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 654
    .end local v1    # "i":I
    .end local v3    # "level":Ljava/lang/String;
    .end local v5    # "progress":Lcom/boohee/model/home/HomeSportPlan$ProgressesEntity;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_d
    iget-boolean v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportLessonExist:Z

    if-nez v7, :cond_2

    .line 655
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvSportSubtitle:Landroid/widget/TextView;

    const-string v8, "\u4f60\u8fd8\u5dee\u4e00\u4e2a\u81ea\u5df1\u7684\u8fd0\u52a8\u8ba1\u5212\u54e6"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->ivSport:Landroid/widget/ImageView;

    const v8, 0x7f020251

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->btnBeginSport:Landroid/widget/TextView;

    const-string v8, "\u83b7\u53d6\u8fd0\u52a8\u8ba1\u5212"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvSportContent:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v7, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvSportLevel:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private requestCheckIn()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$6;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/HomeNewFragment$6;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->getCheckIn(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 353
    return-void
.end method

.method private requestData()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestHomeData()V

    .line 307
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestMessageCount()V

    .line 308
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestCheckIn()V

    .line 309
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getLastestWeight()V

    .line 310
    return-void
.end method

.method private requestHomeData()V
    .locals 3

    .prologue
    .line 457
    const-string v0, "/api/v1/home/cards"

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->callback:Lcom/boohee/one/http/JsonCallback;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 458
    return-void
.end method

.method private requestMessageCount()V
    .locals 3

    .prologue
    .line 492
    const-string v0, "/api/v1/conversations/status"

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$9;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/HomeNewFragment$9;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 505
    return-void
.end method

.method private showHighLight()V
    .locals 5

    .prologue
    .line 222
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v1, Lcom/boohee/myview/highlight/HighLight;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boohee/myview/highlight/HighLight;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e034b

    const v3, 0x7f030247

    new-instance v4, Lcom/boohee/one/ui/fragment/HomeNewFragment$2;

    invoke-direct {v4, p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment$2;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    move-result-object v0

    .line 232
    .local v0, "highLight":Lcom/boohee/myview/highlight/HighLight;
    invoke-virtual {v0}, Lcom/boohee/myview/highlight/HighLight;->show()V

    .line 233
    new-instance v1, Lcom/boohee/one/ui/fragment/HomeNewFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment$3;-><init>(Lcom/boohee/one/ui/fragment/HomeNewFragment;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/highlight/HighLight;->setOnHighLightClickListener(Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/ResolutionUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utility/DensityUtil;->getDensity(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietImageCircle:I

    .line 207
    return-void
.end method

.method protected onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e034b,
            0x7f0e03aa,
            0x7f0e03f8,
            0x7f0e0330,
            0x7f0e03ff,
            0x7f0e0403
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 423
    :sswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_clickExercise"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :sswitch_1
    iget-boolean v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isCheckin:Z

    if-nez v1, :cond_3

    .line 400
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_clickCheckin"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 402
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->postCheckIn()V

    goto :goto_0

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_viewCheckinPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/ui/DiamondSignActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 409
    :sswitch_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_clickConversations"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->comeOn(Landroid/content/Context;)V

    goto :goto_0

    .line 413
    :sswitch_3
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_clickDiet"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    :cond_4
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :cond_5
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->dietPlanCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 428
    :cond_6
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->sportCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 433
    :sswitch_4
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_clickTips"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v1, v1, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 436
    :cond_7
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_8
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tipsCardData:Lcom/boohee/model/home/HomeCard;

    iget-object v2, v2, Lcom/boohee/model/home/HomeCard;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 443
    :sswitch_5
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvReadMore:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, "linkMore":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "bingo_clickMoreTips"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 447
    :cond_9
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/boohee/one/ui/JumpBrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_a
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x7f0e0330 -> :sswitch_0
        0x7f0e034b -> :sswitch_1
        0x7f0e03aa -> :sswitch_2
        0x7f0e03f8 -> :sswitch_3
        0x7f0e03ff -> :sswitch_4
        0x7f0e0403 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    const v1, 0x7f0300e3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 190
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 788
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 789
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 790
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/LeDongLiHelper;->destroy(Landroid/app/Activity;)V

    .line 791
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 745
    const-string v0, "refresh_one_key_status"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestData()V

    .line 748
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 752
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onResume()V

    .line 753
    iget-boolean v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isFirstLoad:Z

    if-nez v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "date":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->loadDataTime:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestData()V

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->checkDietTime()V

    .line 759
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->consultorCard:Lcom/boohee/model/home/HomeCard;

    iget-boolean v1, v1, Lcom/boohee/model/home/HomeCard;->show:Z

    if-eqz v1, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestMessageCount()V

    .line 766
    .end local v0    # "date":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 763
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->isFirstLoad:Z

    .line 764
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestMessageCount()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 196
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->checkDietTime()V

    .line 197
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->initView()V

    .line 198
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeNewFragment;->requestData()V

    .line 199
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeNewFragment;->tvCheckIn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 200
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
