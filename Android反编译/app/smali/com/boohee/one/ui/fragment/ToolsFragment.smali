.class public Lcom/boohee/one/ui/fragment/ToolsFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "ToolsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

.field cpIndicator:Lcom/viewpagerindicator/CirclePageIndicator;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0174
    .end annotation
.end field

.field dividerView:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0375
    .end annotation
.end field

.field public isLoadFirst:Z

.field ivBgImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e036a
    .end annotation
.end field

.field mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e034f
    .end annotation
.end field

.field private mUser:Lcom/boohee/model/User;

.field pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field rlPeroid:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0376
    .end annotation
.end field

.field topGuideView:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0382
    .end annotation
.end field

.field topLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0369
    .end annotation
.end field

.field tvCanCalory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e036d
    .end annotation
.end field

.field tvMeasureDes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0373
    .end annotation
.end field

.field tvPeroidDes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0378
    .end annotation
.end field

.field tvWeightDes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e036f
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/boohee/one/ui/fragment/ToolsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/fragment/ToolsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->isLoadFirst:Z

    .line 443
    new-instance v0, Lcom/boohee/one/ui/fragment/ToolsFragment$9;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$9;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ToolsFragment;)Lcom/boohee/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/ToolsFragment;Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;
    .param p1, "x1"    # Lcom/boohee/model/User;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ToolsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshPeroid(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->initTopView()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->initTopGuideView()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshWeightRecord()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshMeasureRecord()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshCaloryRecord()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ToolsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->loadUserData()V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mPullRefreshScrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ToolsFragment$7;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$7;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 322
    return-void
.end method

.method private getItemIndex(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 464
    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefToolChoose()I

    move-result v0

    .line 465
    .local v0, "index":I
    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "index":I
    :cond_0
    return v0
.end method

.method private getTopViewHeight()I
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private initBg()V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->ivBgImg:Landroid/widget/ImageView;

    const v3, 0x7f02058c

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->ivBgImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getTopViewHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    return-void
.end method

.method private initPeriodItem()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 128
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    .line 129
    .local v0, "localUser":Lcom/boohee/model/User;
    invoke-virtual {v0}, Lcom/boohee/model/User;->isMale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->rlPeroid:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->dividerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->rlPeroid:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->dividerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initTopGuideView()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->topGuideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->topGuideView:Landroid/view/View;

    new-instance v1, Lcom/boohee/one/ui/fragment/ToolsFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->topGuideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getTopViewHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    const-string v2, ""

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->topGuideView:Landroid/view/View;

    const v3, 0x7f0e0086

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02058c

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 173
    return-void
.end method

.method private initTopView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 139
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->topGuideView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 141
    new-instance v0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 142
    .local v0, "pagerAdapter":Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/ToolsTopCaloryFragment;->newInstance(Lcom/boohee/model/User;)Lcom/boohee/one/ui/fragment/ToolsTopCaloryFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 144
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    iget v1, v1, Lcom/boohee/model/User;->target_weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/ToolsTopWeightFragment;->newInstance(Lcom/boohee/model/User;)Lcom/boohee/one/ui/fragment/ToolsTopWeightFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->isMale()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/ToolsTopPeriodFragment;->newInstance(Lcom/boohee/model/User;)Lcom/boohee/one/ui/fragment/ToolsTopPeriodFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 149
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 150
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->getCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getItemIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 152
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->cpIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 153
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getTopViewHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 155
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->cpIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    goto/16 :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->cpIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v1, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private loadUserData()V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/ToolsFragment$2;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/RecordApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private refreshCaloryRecord()V
    .locals 7

    .prologue
    .line 393
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "today_calory"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 394
    .local v1, "object":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 395
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvCanCalory:Landroid/widget/TextView;

    const v3, 0x7f07055e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    const-class v2, Lcom/boohee/model/LocalCaloryRecord;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/LocalCaloryRecord;

    .line 398
    .local v0, "caloryRecord":Lcom/boohee/model/LocalCaloryRecord;
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvCanCalory:Landroid/widget/TextView;

    const v3, 0x7f07055f

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/boohee/model/LocalCaloryRecord;->totalDietCalory:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/boohee/model/LocalCaloryRecord;->totalSportCalory:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshMeasureRecord()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "latest_girth"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 379
    .local v1, "object":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvMeasureDes:Landroid/widget/TextView;

    const v3, 0x7f070565

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    const-class v2, Lcom/boohee/model/LocalMeasureRecord;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/LocalMeasureRecord;

    .line 383
    .local v0, "measureRecord":Lcom/boohee/model/LocalMeasureRecord;
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/boohee/model/LocalMeasureRecord;->record_on:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/DateFormatUtils;->dateString2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvMeasureDes:Landroid/widget/TextView;

    const v3, 0x7f070567

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/boohee/model/LocalMeasureRecord;->waist:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvMeasureDes:Landroid/widget/TextView;

    const v3, 0x7f070566

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/boohee/model/LocalMeasureRecord;->waist:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v0, Lcom/boohee/model/LocalMeasureRecord;->record_on:Ljava/lang/String;

    invoke-static {v5}, Lcom/boohee/utils/DateFormatUtils;->dateString2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshPeroid(Z)V
    .locals 3
    .param p1, "isMale"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 329
    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->rlPeroid:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->rlPeroid:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->dividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/ToolsFragment$8;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment$8;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getMcPeriodsLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private refreshWeightRecord()V
    .locals 8

    .prologue
    const v4, 0x7f070577

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 359
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "latest_weight"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 360
    .local v0, "object":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 361
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    iget v2, v2, Lcom/boohee/model/User;->latest_weight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvWeightDes:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    iget v5, v5, Lcom/boohee/model/User;->latest_weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvWeightDes:Landroid/widget/TextView;

    const v3, 0x7f070380

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 367
    :cond_1
    const-class v2, Lcom/boohee/model/LocalWeightRecord;

    invoke-static {v0, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/LocalWeightRecord;

    .line 368
    .local v1, "weightRecord":Lcom/boohee/model/LocalWeightRecord;
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/boohee/model/LocalWeightRecord;->record_on:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/DateFormatUtils;->dateString2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvWeightDes:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/boohee/model/LocalWeightRecord;->weight:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->tvWeightDes:Landroid/widget/TextView;

    const v3, 0x7f070576

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/boohee/model/LocalWeightRecord;->weight:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/boohee/model/LocalWeightRecord;->record_on:Ljava/lang/String;

    invoke-static {v5}, Lcom/boohee/utils/DateFormatUtils;->dateString2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public loadFirst()V
    .locals 4

    .prologue
    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/ToolsFragment$6;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$6;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 406
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 408
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e036b,
            0x7f0e036e,
            0x7f0e0370,
            0x7f0e0371,
            0x7f0e0374,
            0x7f0e0376,
            0x7f0e0379,
            0x7f0e037b
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_foodandsport"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/boohee/modeldao/UserDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v1

    .line 226
    .local v1, "mUser1":Lcom/boohee/model/User;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/boohee/model/User;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/boohee/record/DietSportCalendarActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070562

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070564

    new-instance v4, Lcom/boohee/one/ui/fragment/ToolsFragment$3;

    invoke-direct {v4, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070563

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 238
    .end local v1    # "mUser1":Lcom/boohee/model/User;
    :pswitch_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_weight"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/boohee/record/WeightRecordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "key_record_type"

    sget-object v4, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v4}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 243
    :pswitch_3
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_quickweight"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->newInstance()Lcom/boohee/one/ui/fragment/AddWeightFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .line 245
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "addWeightFragment"

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    new-instance v3, Lcom/boohee/one/ui/fragment/ToolsFragment$4;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto/16 :goto_0

    .line 255
    :pswitch_4
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_period"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 260
    :pswitch_5
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_girth"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/boohee/record/WeightRecordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "key_record_type"

    sget-object v4, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v4}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/ToolsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 265
    :pswitch_6
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_quickgirth"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    move-result-object v0

    .line 268
    .local v0, "addMeasureFragment":Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "addMeasureFragment"

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 269
    new-instance v2, Lcom/boohee/one/ui/fragment/ToolsFragment$5;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/ToolsFragment$5;-><init>(Lcom/boohee/one/ui/fragment/ToolsFragment;)V

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto/16 :goto_0

    .line 278
    .end local v0    # "addMeasureFragment":Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    :pswitch_7
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_searchfood"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/food/SearchFoodActivity;->comeWithoutAddDiet(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 282
    :pswitch_8
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tool_myfood"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/food/MyFoodActivity;->comeOn(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e036b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    const v1, 0x7f0300f9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 115
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->addListener()V

    .line 116
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->initBg()V

    .line 117
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->initPeriodItem()V

    .line 118
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 299
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 293
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/CanCaloryEvent;)V
    .locals 2
    .param p1, "calory"    # Lcom/boohee/one/event/CanCaloryEvent;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/boohee/one/event/CanCaloryEvent;->getCalory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->setCanCalory(I)V

    .line 424
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshCaloryRecord()V

    .line 425
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/LatestWeightEvent;)V
    .locals 0
    .param p1, "latestWeightEvent"    # Lcom/boohee/one/event/LatestWeightEvent;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshWeightRecord()V

    .line 430
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/MeasureEvent;)V
    .locals 0
    .param p1, "measureEvent"    # Lcom/boohee/one/event/MeasureEvent;

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshMeasureRecord()V

    .line 435
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/PeriodEvent;)V
    .locals 1
    .param p1, "periodEvent"    # Lcom/boohee/one/event/PeriodEvent;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ToolsFragment;->mUser:Lcom/boohee/model/User;

    invoke-virtual {v0}, Lcom/boohee/model/User;->isMale()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->refreshPeroid(Z)V

    .line 418
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/UserIntEvent;)V
    .locals 0
    .param p1, "mUserIntEvent"    # Lcom/boohee/one/event/UserIntEvent;

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ToolsFragment;->loadUserData()V

    .line 413
    return-void
.end method
