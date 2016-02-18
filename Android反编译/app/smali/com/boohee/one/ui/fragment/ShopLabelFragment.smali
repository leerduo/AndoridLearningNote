.class public Lcom/boohee/one/ui/fragment/ShopLabelFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "ShopLabelFragment.java"


# instance fields
.field private headerView:Landroid/view/View;

.field private mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

.field private mBannerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Showcase;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mGoodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Goods;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

.field private mLabelId:I

.field private mPage:I

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

.field private mPlayRunnable:Ljava/lang/Runnable;

.field private mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 43
    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mLabelId:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mGoodsList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mBannerList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPage:I

    .line 187
    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mCurrentIndex:I

    .line 188
    new-instance v0, Lcom/boohee/one/ui/fragment/ShopLabelFragment$4;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPlayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ShopLabelFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getLabelInit(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Lcom/viewpagerindicator/LinePageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mBannerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->startPlay()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mGoodsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)Lcom/boohee/uchoice/ShopTopicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/fragment/ShopLabelFragment;Lcom/boohee/uchoice/ShopTopicAdapter;)Lcom/boohee/uchoice/ShopTopicAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;
    .param p1, "x1"    # Lcom/boohee/uchoice/ShopTopicAdapter;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    return-object p1
.end method

.method static synthetic access$808(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/fragment/ShopLabelFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$908(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    .prologue
    .line 42
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mCurrentIndex:I

    return v0
.end method

.method private getLabelInit(Z)V
    .locals 5
    .param p1, "isFirstLoad"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPage:I

    .line 127
    :cond_0
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mLabelId:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPage:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/fragment/ShopLabelFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/boohee/one/ui/fragment/ShopLabelFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ShopLabelFragment;Landroid/content/Context;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/ShopApi;->getLablesDetail(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 173
    return-void
.end method

.method public static newInstance(I)Lcom/boohee/one/ui/fragment/ShopLabelFragment;
    .locals 1
    .param p0, "label_id"    # I

    .prologue
    .line 56
    new-instance v0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/ShopLabelFragment;
    iput p0, v0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mLabelId:I

    .line 58
    return-object v0
.end method

.method private startPlay()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mCurrentIndex:I

    .line 184
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mBannerList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    .line 101
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 103
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x280

    const/16 v3, 0x140

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 105
    new-instance v0, Lcom/boohee/uchoice/ShopTopicAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mGoodsList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/uchoice/ShopTopicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopLabelFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "shop_viewSpecialListPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v0, 0x7f0300f2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 78
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03026d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->headerView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->headerView:Landroid/view/View;

    const v1, 0x7f0e0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->headerView:Landroid/view/View;

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/LinePageIndicator;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopLabelFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ShopLabelFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 94
    return-void
.end method
