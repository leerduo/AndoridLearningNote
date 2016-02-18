.class public Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "ShopCategoryFragment.java"


# instance fields
.field private hasMore:Z

.field public isFirstLoad:Z

.field private mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

.field private mBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Showcase;",
            ">;"
        }
    .end annotation
.end field

.field private mChildLabelId:I

.field private mCurrentIndex:I

.field private mCurrentPage:I

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

.field mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mShopList:Lcom/boohee/model/ShopList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 44
    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mLabelId:I

    .line 45
    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mChildLabelId:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mGoodsList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mBannerList:Ljava/util/List;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mHandler:Landroid/os/Handler;

    .line 57
    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    .line 58
    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentPage:I

    .line 59
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->hasMore:Z

    .line 60
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->isFirstLoad:Z

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentIndex:I

    .line 228
    new-instance v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$5;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$5;-><init>(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPlayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    return p1
.end method

.method static synthetic access$008(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1008(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Lcom/viewpagerindicator/LinePageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getLabelInit(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mBannerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->startPlay()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mGoodsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)Lcom/boohee/uchoice/ShopTopicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;Lcom/boohee/uchoice/ShopTopicAdapter;)Lcom/boohee/uchoice/ShopTopicAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .param p1, "x1"    # Lcom/boohee/uchoice/ShopTopicAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    return-object p1
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03026d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 124
    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/LinePageIndicator;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    .line 125
    new-instance v1, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mBannerList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    .line 126
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 127
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 128
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPager:Landroid/support/v4/view/ViewPager;

    const/16 v3, 0x280

    const/16 v4, 0x140

    invoke-static {v1, v2, v3, v4}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 129
    return-object v0
.end method

.method private getLabelInit(Z)V
    .locals 6
    .param p1, "isFirst"    # Z

    .prologue
    .line 171
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mLabelId:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mChildLabelId:I

    iget v2, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, p1}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;Landroid/content/Context;Z)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/ShopApi;->getCategoriesSubs(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 215
    return-void
.end method

.method public static newInstance(II)Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .locals 1
    .param p0, "label_id"    # I
    .param p1, "child_label_id"    # I

    .prologue
    .line 63
    new-instance v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;-><init>()V

    .line 64
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    iput p0, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mLabelId:I

    .line 65
    iput p1, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mChildLabelId:I

    .line 66
    return-object v0
.end method

.method public static newInstance(IILcom/boohee/model/ShopList;)Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    .locals 1
    .param p0, "label_id"    # I
    .param p1, "child_label_id"    # I
    .param p2, "shopList"    # Lcom/boohee/model/ShopList;

    .prologue
    .line 70
    new-instance v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;-><init>()V

    .line 71
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    iput p0, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mLabelId:I

    .line 72
    iput p1, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mChildLabelId:I

    .line 73
    iput-object p2, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    .line 74
    return-object v0
.end method

.method private startPlay()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mCurrentIndex:I

    .line 224
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public loadAll()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->isFirstLoad:Z

    .line 138
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    iget-object v0, v0, Lcom/boohee/model/ShopList;->banner_showcases:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    iget-object v0, v0, Lcom/boohee/model/ShopList;->banner_showcases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mBannerList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    iget-object v1, v1, Lcom/boohee/model/ShopList;->banner_showcases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPagerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;->notifyDataSetChanged()V

    .line 143
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->startPlay()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    iget-object v0, v0, Lcom/boohee/model/ShopList;->goods:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    iget-object v0, v0, Lcom/boohee/model/ShopList;->goods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mGoodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mGoodsList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    iget-object v1, v1, Lcom/boohee/model/ShopList;->goods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    new-instance v0, Lcom/boohee/uchoice/ShopTopicAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mGoodsList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/uchoice/ShopTopicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPage:I

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->loadFirst()V

    goto :goto_0
.end method

.method public loadFirst()V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->loadFirst()V

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mShopList:Lcom/boohee/model/ShopList;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->loadAll()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ShopCategoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 119
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "shop_viewSpecialListPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const v0, 0x7f0300f2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 92
    return-void
.end method
