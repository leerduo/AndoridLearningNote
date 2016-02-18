.class public Lcom/boohee/one/ui/ClubHomeActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "ClubHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;
.implements Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_DAMPING:F = 1.5f

.field private static final DEFAULT_DURATION:J = 0x12cL

.field public static final KEY_CLUB:Ljava/lang/String; = "key_club"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private actFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

.field private cardview_timeline:Landroid/view/View;

.field private clubId:I

.field private expFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

.field private hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

.field private isFourthLoad:Z

.field private isSecondLoad:Z

.field private isThirdLoad:Z

.field private iv_circle_thumb:Lcom/boohee/widgets/CircularImage;

.field private mClubHome:Lcom/boohee/model/status/ClubHome;

.field private mContentFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderHeight:I

.field private mHeaderLayoutView:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMessageBadge:Lcom/boohee/myview/BadgeView;

.field private mPosition:I

.field private mTabHeight:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

.field private messageCount:I

.field private recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

.field private slidingTabLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;

.field private tv_circle_members:Landroid/widget/TextView;

.field private tv_circle_name:Landroid/widget/TextView;

.field private tv_circle_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/ClubHomeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    .line 75
    iput-boolean v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isSecondLoad:Z

    .line 76
    iput-boolean v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isThirdLoad:Z

    .line 77
    iput-boolean v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isFourthLoad:Z

    .line 90
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/myview/BadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/ClubHomeActivity;Lcom/boohee/myview/BadgeView;)Lcom/boohee/myview/BadgeView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # Lcom/boohee/myview/BadgeView;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/ClubHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->refreshUnreadMsg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->expFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/boohee/one/ui/ClubHomeActivity;Lcom/boohee/model/status/ClubHome;)Lcom/boohee/model/status/ClubHome;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # Lcom/boohee/model/status/ClubHome;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/boohee/one/ui/ClubHomeActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ClubHomeActivity;->getClubMemberCount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_members:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/widgets/CircularImage;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->iv_circle_thumb:Lcom/boohee/widgets/CircularImage;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/boohee/one/ui/ClubHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->initViewPager()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/ClubHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getApnUnread()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/ClubHomeActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ClubHomeActivity;->showBadge(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/ClubHomeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/ClubHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isSecondLoad:Z

    return v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/ClubHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isSecondLoad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/one/ui/TimeLineFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/ClubHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isThirdLoad:Z

    return v0
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/ClubHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isThirdLoad:Z

    return p1
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->actFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/ClubHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isFourthLoad:Z

    return v0
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/ClubHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ClubHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->isFourthLoad:Z

    return p1
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 147
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mTouchSlop:I

    .line 148
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mTabHeight:I

    .line 149
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    .line 150
    new-instance v1, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-direct {v1, p0, p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;-><init>(Landroid/content/Context;Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;)V

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    .line 151
    const v1, 0x7f0e00db

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;

    .line 152
    .local v0, "touchCallbackLayout":Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;
    invoke-virtual {v0, p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->setTouchEventListener(Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;)V

    .line 154
    const v1, 0x7f0e00dc

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderLayoutView:Landroid/view/View;

    .line 156
    const v1, 0x7f0e00f1

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->slidingTabLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;

    .line 157
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->slidingTabLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 158
    const v1, 0x7f0e058f

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;

    .line 160
    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v1, 0x7f0e06c4

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_name:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f0e06c6

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_title:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f0e06c5

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_members:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0e06c3

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boohee/widgets/CircularImage;

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->iv_circle_thumb:Lcom/boohee/widgets/CircularImage;

    .line 166
    const v1, 0x7f0e0591

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f0e0592

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 170
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    return-void
.end method

.method private getApnUnread()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/boohee/one/ui/ClubHomeActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/ClubHomeActivity$3;-><init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ApnApi;->checkUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 197
    return-void
.end method

.method private getClubMemberCount(I)Ljava/lang/String;
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/16 v1, 0x2710

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 472
    const-string v0, ""

    .line 473
    .local v0, "countStr":Ljava/lang/String;
    if-le p1, v1, :cond_0

    .line 474
    const v1, 0x7f07016a

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-float v3, p1

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    .line 475
    :cond_0
    if-ge p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    .line 476
    const v1, 0x7f07016b

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :cond_1
    const v1, 0x7f070169

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_club"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    .line 116
    return-void
.end method

.method private headerExpand(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 439
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderLayoutView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 445
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 450
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->setHeaderExpand(Z)V

    .line 451
    return-void
.end method

.method private headerFold(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 426
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderLayoutView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 432
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 435
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->setHeaderExpand(Z)V

    .line 436
    return-void
.end method

.method private headerMoveDuration(ZFZF)J
    .locals 7
    .param p1, "isExpand"    # Z
    .param p2, "currentHeaderY"    # F
    .param p3, "isFling"    # Z
    .param p4, "velocityY"    # F

    .prologue
    const-wide/16 v4, 0x12c

    .line 408
    const-wide/16 v0, 0x12c

    .line 410
    .local v0, "defaultDuration":J
    if-eqz p3, :cond_0

    .line 412
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v2, v3, v6

    .line 414
    .local v2, "distance":F
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float p4, v3, v6

    .line 416
    div-float v3, v2, p4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v6

    float-to-long v0, v3

    .line 418
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    move-wide v0, v4

    .line 422
    .end local v2    # "distance":F
    :cond_0
    return-wide v0

    .line 412
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_0
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    .line 214
    sget-object v0, Lcom/boohee/one/ui/TimeLineFragment$Type;->RECENT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    invoke-static {v0, v1}, Lcom/boohee/one/ui/TimeLineFragment;->newInstance(Lcom/boohee/one/ui/TimeLineFragment$Type;I)Lcom/boohee/one/ui/TimeLineFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    .line 215
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    invoke-virtual {v0, p0}, Lcom/boohee/one/ui/TimeLineFragment;->setOnScrollUpListener(Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;)V

    .line 217
    sget-object v0, Lcom/boohee/one/ui/TimeLineFragment$Type;->HOT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    invoke-static {v0, v1}, Lcom/boohee/one/ui/TimeLineFragment;->newInstance(Lcom/boohee/one/ui/TimeLineFragment$Type;I)Lcom/boohee/one/ui/TimeLineFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    .line 218
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    invoke-virtual {v0, p0}, Lcom/boohee/one/ui/TimeLineFragment;->setOnScrollUpListener(Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;)V

    .line 220
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;

    iget-object v0, v0, Lcom/boohee/model/status/ClubHome;->act_page_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->actFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    .line 221
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->actFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;

    iget-object v0, v0, Lcom/boohee/model/status/ClubHome;->exp_page_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->expFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    .line 223
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->expFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method private initViewPager()V
    .locals 4

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->initFragments()V

    .line 228
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 230
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/boohee/one/ui/ClubHomeActivity$ClubPagerAdapter;-><init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 232
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->slidingTabLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 233
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->slidingTabLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;

    new-instance v1, Lcom/boohee/one/ui/ClubHomeActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ClubHomeActivity$4;-><init>(Lcom/boohee/one/ui/ClubHomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 258
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshUnreadMsg()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/ClubHomeActivity$2;

    iget-object v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/ClubHomeActivity$2;-><init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 184
    return-void
.end method

.method private requestClubs()V
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->showLoading()V

    .line 292
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "/api/v1/clubs/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/ClubHomeActivity$5;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/ClubHomeActivity$5;-><init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showBadge(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->messageCount:I

    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->messageCount:I

    .line 203
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->messageCount:I

    if-lez v0, :cond_2

    .line 204
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->messageCount:I

    const/16 v2, 0x63

    if-le v0, v2, :cond_1

    const-string v0, "99+"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/boohee/myview/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->show()V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->messageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->hide()V

    goto :goto_0
.end method

.method public static startMe(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clubId"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_club"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 457
    :cond_0
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->isViewBeingDragged(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 320
    :sswitch_0
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->ctx:Landroid/content/Context;

    const-string v1, "club_viewUsers"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/ClubMembersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_club"

    iget v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubHomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    :sswitch_1
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mPosition:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    iget-object v0, v0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0}, Lcom/boohee/utils/ListViewUtils;->smoothScrollListViewToTop(Landroid/widget/ListView;)V

    .line 328
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    iget-object v0, v0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing(Z)V

    goto :goto_0

    .line 329
    :cond_1
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    iget-object v0, v0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0}, Lcom/boohee/utils/ListViewUtils;->smoothScrollListViewToTop(Landroid/widget/ListView;)V

    .line 331
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    iget-object v0, v0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing(Z)V

    goto :goto_0

    .line 335
    :sswitch_2
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    if-eq v0, v1, :cond_0

    .line 336
    iget v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->clubId:I

    invoke-static {p0, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->startClubPost(Landroid/content/Context;I)V

    goto :goto_0

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00f0 -> :sswitch_0
        0x7f0e0591 -> :sswitch_1
        0x7f0e0592 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubHomeActivity;->setContentView(I)V

    .line 96
    const v0, 0x7f070168

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubHomeActivity;->setTitle(I)V

    .line 97
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->handleIntent()V

    .line 98
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->findViews()V

    .line 99
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->requestClubs()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 121
    invoke-virtual {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/ClubHomeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ClubHomeActivity$1;-><init>(Lcom/boohee/one/ui/ClubHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 486
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mContentFragments:Ljava/util/List;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 495
    :cond_1
    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->recentFragment:Lcom/boohee/one/ui/TimeLineFragment;

    .line 496
    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;

    .line 497
    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->actFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    .line 498
    iput-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->expFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    .line 499
    return-void
.end method

.method public onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mTabHeight:I

    iget v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMove(FF)V
    .locals 6
    .param p1, "y"    # F
    .param p2, "yDx"    # F

    .prologue
    const-wide/16 v4, 0x0

    .line 364
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderLayoutView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float v0, v1, p2

    .line 365
    .local v0, "headerTranslationY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 366
    invoke-direct {p0, v4, v5}, Lcom/boohee/one/ui/ClubHomeActivity;->headerExpand(J)V

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 368
    invoke-direct {p0, v4, v5}, Lcom/boohee/one/ui/ClubHomeActivity;->headerFold(J)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderLayoutView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 374
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public onMoveEnded(ZF)V
    .locals 5
    .param p1, "isFling"    # Z
    .param p2, "flingVelocityY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderLayoutView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 385
    .local v0, "headerY":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getInitialMotionY()F

    move-result v1

    iget-object v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getLastMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mTouchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 391
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/boohee/one/ui/ClubHomeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/ClubHomeActivity;->headerExpand(J)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getInitialMotionY()F

    move-result v1

    iget-object v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getLastMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 395
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/boohee/one/ui/ClubHomeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/ClubHomeActivity;->headerFold(J)V

    goto :goto_0

    .line 397
    :cond_3
    iget v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 398
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/boohee/one/ui/ClubHomeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/ClubHomeActivity;->headerExpand(J)V

    goto :goto_0

    .line 400
    :cond_4
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/boohee/one/ui/ClubHomeActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/one/ui/ClubHomeActivity;->headerFold(J)V

    goto :goto_0
.end method

.method public onMoveStarted(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 360
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/status/MsgCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ClubHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f0e07c3
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onResume()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->messageCount:I

    .line 106
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->refreshUnreadMsg()V

    .line 107
    invoke-direct {p0}, Lcom/boohee/one/ui/ClubHomeActivity;->getApnUnread()V

    .line 108
    return-void
.end method

.method public onScrollUp(Z)V
    .locals 3
    .param p1, "isScrollUp"    # Z

    .prologue
    const/4 v2, 0x2

    .line 464
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 465
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 467
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method
