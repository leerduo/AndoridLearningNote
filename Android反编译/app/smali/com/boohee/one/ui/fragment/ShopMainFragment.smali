.class public Lcom/boohee/one/ui/fragment/ShopMainFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "ShopMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/ShopMainFragment$goodsListListener;
    }
.end annotation


# instance fields
.field fabButton:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e2
    .end annotation
.end field

.field private hasMore:Z

.field private isFirstLoad:Z

.field private ll_header_content:Landroid/widget/LinearLayout;

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

.field private mCartBadgeView:Lcom/boohee/myview/NewBadgeView;

.field public mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Label;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentIndex:I

.field private mCurrentPage:I

.field private mGoodsAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

.field private mGoodsList:Ljava/util/List;

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

.field private mOrderBadgeView:Lcom/boohee/myview/NewBadgeView;

.field private mPage:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mShopBannerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field rl_category:Landroid/widget/RelativeLayout;

.field tv_badge_cart:Landroid/widget/TextView;

.field tv_badge_order:Landroid/widget/TextView;

.field private tv_shop_type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsList:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mBannerList:Ljava/util/List;

    .line 126
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->isFirstLoad:Z

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mHandler:Landroid/os/Handler;

    .line 129
    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    .line 130
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentPage:I

    .line 131
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->hasMore:Z

    .line 551
    new-instance v0, Lcom/boohee/one/ui/fragment/ShopMainFragment$11;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment$11;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->requestShopHomePages()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ShopMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Lcom/boohee/uchoice/ShopTopicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    return-object v0
.end method

.method static synthetic access$108(Lcom/boohee/one/ui/fragment/ShopMainFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    return v0
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Lcom/boohee/myview/NewBadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCartBadgeView:Lcom/boohee/myview/NewBadgeView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/boohee/one/ui/fragment/ShopMainFragment;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # Lcom/boohee/myview/NewBadgeView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCartBadgeView:Lcom/boohee/myview/NewBadgeView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Lcom/boohee/myview/NewBadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mOrderBadgeView:Lcom/boohee/myview/NewBadgeView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/boohee/one/ui/fragment/ShopMainFragment;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # Lcom/boohee/myview/NewBadgeView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mOrderBadgeView:Lcom/boohee/myview/NewBadgeView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mShopBannerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Lcom/viewpagerindicator/LinePageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ShopMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/ShopMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/ShopMainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->requestShopHomeMoreGoods()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/ShopMainFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/fragment/ShopMainFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$508(Lcom/boohee/one/ui/fragment/ShopMainFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->isFirstLoad:Z

    return v0
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/fragment/ShopMainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->isFirstLoad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/ShopMainFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->initBanner(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/ShopMainFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->initDatas(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/fragment/ShopMainFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ShopMainFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsList:Ljava/util/List;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 189
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 199
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 206
    return-void
.end method

.method private getAdsView(Lcom/boohee/model/Showcase;Z)Landroid/view/View;
    .locals 7
    .param p1, "showcase"    # Lcom/boohee/model/Showcase;
    .param p2, "isLast"    # Z

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0301ee

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "adView":Landroid/view/View;
    const v3, 0x7f0e05cb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 373
    .local v1, "iv_ad":Landroid/widget/ImageView;
    const v3, 0x7f0e05cc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, "view_line":Landroid/view/View;
    if-eqz p2, :cond_0

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p1, Lcom/boohee/model/Showcase;->default_photo_height:Ljava/lang/String;

    iget-object v6, p1, Lcom/boohee/model/Showcase;->default_photo_width:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 377
    new-instance v3, Lcom/boohee/one/ui/fragment/ShopMainFragment$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/boohee/one/ui/fragment/ShopMainFragment$7;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Lcom/boohee/model/Showcase;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 383
    new-instance v3, Lcom/boohee/one/ui/fragment/ShopMainFragment$goodsListListener;

    invoke-direct {v3, p0, p1}, Lcom/boohee/one/ui/fragment/ShopMainFragment$goodsListListener;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Lcom/boohee/model/Showcase;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-object v0

    .line 374
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCategoryItemView(Lcom/boohee/model/Label;Z)Landroid/view/View;
    .locals 6
    .param p1, "label"    # Lcom/boohee/model/Label;
    .param p2, "isLast"    # Z

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030150

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "item_shop_category":Landroid/view/View;
    const v3, 0x7f0e0439

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 451
    .local v1, "tv_label":Landroid/widget/TextView;
    const v3, 0x7f0e043a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 452
    .local v2, "view_category":Landroid/view/View;
    iget-object v3, p1, Lcom/boohee/model/Label;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    if-eqz p2, :cond_0

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 455
    new-instance v3, Lcom/boohee/one/ui/fragment/ShopMainFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/boohee/one/ui/fragment/ShopMainFragment$8;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Lcom/boohee/model/Label;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    return-object v0

    .line 453
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCategoryView(Ljava/util/List;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Label;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "labelList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Label;>;"
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03026c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 426
    .local v4, "view_shop_category":Landroid/view/View;
    const v5, 0x7f0e0767

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 427
    .local v1, "ll_category":Landroid/widget/LinearLayout;
    const v5, 0x7f0e0766

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 428
    .local v2, "sv_category":Landroid/widget/ScrollView;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    .line 429
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v6, v7}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 431
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 433
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/Label;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, v5, v6}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getCategoryItemView(Lcom/boohee/model/Label;Z)Landroid/view/View;

    move-result-object v3

    .line 434
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 435
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 438
    .end local v0    # "i":I
    :cond_3
    return-object v4
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03010f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->ll_header_content:Landroid/widget/LinearLayout;

    .line 170
    const v1, 0x7f0e0506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->rl_category:Landroid/widget/RelativeLayout;

    .line 171
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->rl_category:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v1, 0x7f0e0508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f0e050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f0e050f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->tv_badge_order:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f0e050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->tv_badge_cart:Landroid/widget/TextView;

    .line 176
    const v1, 0x7f0e0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 177
    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/LinePageIndicator;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    .line 178
    const v1, 0x7f0e0394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->tv_shop_type:Landroid/widget/TextView;

    .line 179
    return-object v0
.end method

.method private initAdView(Lcom/boohee/model/BaseShowcase;)V
    .locals 9
    .param p1, "adShowcase"    # Lcom/boohee/model/BaseShowcase;

    .prologue
    .line 346
    if-eqz p1, :cond_4

    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030151

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 348
    .local v5, "view_ad":Landroid/view/View;
    const v6, 0x7f0e0394

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 349
    .local v3, "tv_shop_type":Landroid/widget/TextView;
    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 350
    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_0
    const v6, 0x7f0e043c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 352
    .local v1, "ll_list":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 354
    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/boohee/model/Showcase;

    invoke-static {v6, v7}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Showcase;

    .line 355
    .local v2, "showcase":Lcom/boohee/model/Showcase;
    iget-object v6, p1, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, v2, v6}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getAdsView(Lcom/boohee/model/Showcase;Z)Landroid/view/View;

    move-result-object v4

    .line 356
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 357
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 359
    .end local v2    # "showcase":Lcom/boohee/model/Showcase;
    :cond_3
    iget-object v6, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->ll_header_content:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    .end local v0    # "i":I
    .end local v1    # "ll_list":Landroid/widget/LinearLayout;
    .end local v3    # "tv_shop_type":Landroid/widget/TextView;
    .end local v5    # "view_ad":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private initBanner(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Showcase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "banner_showcases":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Showcase;>;"
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mBannerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mBannerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mShopBannerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;->notifyDataSetChanged()V

    .line 296
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mShopBannerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    .line 300
    iput v2, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentIndex:I

    .line 301
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private initDatas(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/BaseShowcase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "baseShowcases":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/BaseShowcase;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->ll_header_content:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 317
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/BaseShowcase;

    .line 318
    .local v0, "baseShowcase":Lcom/boohee/model/BaseShowcase;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/boohee/model/BaseShowcase$TYPE_SHOWCASE;->homepage_showcase:Lcom/boohee/model/BaseShowcase$TYPE_SHOWCASE;

    invoke-virtual {v3}, Lcom/boohee/model/BaseShowcase$TYPE_SHOWCASE;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/BaseShowcase;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->initAdView(Lcom/boohee/model/BaseShowcase;)V

    .line 316
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    if-eqz v0, :cond_0

    sget-object v3, Lcom/boohee/model/BaseShowcase$TYPE_SHOWCASE;->homepage_goods:Lcom/boohee/model/BaseShowcase$TYPE_SHOWCASE;

    invoke-virtual {v3}, Lcom/boohee/model/BaseShowcase$TYPE_SHOWCASE;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/BaseShowcase;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, v0, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/boohee/model/Goods;

    invoke-static {v3, v4}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 322
    .local v1, "goodsList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Goods;>;"
    iget-object v3, v0, Lcom/boohee/model/BaseShowcase;->title:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->initGoodsView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 326
    .end local v0    # "baseShowcase":Lcom/boohee/model/BaseShowcase;
    .end local v1    # "goodsList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Goods;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/BaseShowcase;

    .line 327
    .restart local v0    # "baseShowcase":Lcom/boohee/model/BaseShowcase;
    if-eqz v0, :cond_4

    .line 328
    iget-object v3, v0, Lcom/boohee/model/BaseShowcase;->list:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/boohee/model/Goods;

    invoke-static {v3, v4}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 329
    .restart local v1    # "goodsList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Goods;>;"
    iget-object v3, v0, Lcom/boohee/model/BaseShowcase;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 330
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->tv_shop_type:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/boohee/model/BaseShowcase;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 332
    iget v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    .line 333
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 334
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    new-instance v3, Lcom/boohee/uchoice/ShopTopicAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsList:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/boohee/uchoice/ShopTopicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    .line 336
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mGoodsAdapter:Lcom/boohee/uchoice/ShopTopicAdapter;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 340
    .end local v0    # "baseShowcase":Lcom/boohee/model/BaseShowcase;
    .end local v1    # "goodsList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Goods;>;"
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private initGoodsView(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Goods;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p2, "goodsList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Goods;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030152

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 398
    .local v3, "view_ad":Landroid/view/View;
    const v4, 0x7f0e0394

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 399
    .local v2, "tv_shop_type":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_0
    const v4, 0x7f0e043e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/NoScrollGridView;

    .line 402
    .local v0, "gv_list":Lcom/boohee/widgets/NoScrollGridView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 403
    new-instance v4, Lcom/boohee/uchoice/GoodsVerticalAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/boohee/uchoice/GoodsVerticalAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/boohee/widgets/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_1
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->ll_header_content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    .end local v0    # "gv_list":Lcom/boohee/widgets/NoScrollGridView;
    .end local v1    # "i":I
    .end local v2    # "tv_shop_type":Landroid/widget/TextView;
    .end local v3    # "view_ad":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private requestGoodsCount()V
    .locals 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$9;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ShopMainFragment$9;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/ShopApi;->getCarts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 516
    return-void
.end method

.method private requestOrderCount()V
    .locals 3

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$10;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ShopMainFragment$10;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/ShopApi;->getOrdersStats(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 547
    return-void
.end method

.method private requestShopHomeMoreGoods()V
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    new-instance v2, Lcom/boohee/one/ui/fragment/ShopMainFragment$6;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/ShopMainFragment$6;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ShopApi;->getShopHomeMoreGoods(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 282
    return-void
.end method

.method private requestShopHomePages()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 228
    iput v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    .line 229
    iget v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPage:I

    iput v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCurrentPage:I

    .line 230
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->hasMore:Z

    .line 231
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ShopMainFragment$5;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/ShopApi;->getShopHomePages(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 250
    return-void
.end method

.method private showPopwindow(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "labelList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Label;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 411
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {p0, p2}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getCategoryView(Ljava/util/List;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 412
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 413
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 414
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 416
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 417
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 418
    return-void
.end method


# virtual methods
.method public loadFirst()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/one/ui/fragment/ShopMainFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ShopMainFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mPullListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 150
    new-instance v0, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mBannerList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mShopBannerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    .line 151
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mShopBannerAdapter:Lcom/boohee/one/ui/adapter/ShopBannerPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-static {}, Lcom/boohee/one/transform/TransformManager;->getRandomTransform()Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 153
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mIndicator:Lcom/viewpagerindicator/LinePageIndicator;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 154
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x280

    const/16 v3, 0x140

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 155
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->addListener()V

    .line 157
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 87
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "shop_clickClientServicePage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/boohee/main/FeedBackSwitcher;->isFeedbackTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/MeiQiaHelper;->startChat(Landroid/content/Context;)V

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/boohee/more/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCategories:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "shop_clickCategory"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->rl_category:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mCategories:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->showPopwindow(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 101
    :sswitch_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "shop_clickCart"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/boohee/uchoice/CartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :sswitch_3
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "shop_clickOrder"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00e2 -> :sswitch_0
        0x7f0e0506 -> :sswitch_1
        0x7f0e0508 -> :sswitch_2
        0x7f0e050c -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const v1, 0x7f0300f3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 143
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 568
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 569
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 570
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 468
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 469
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/ConstEvent;)V
    .locals 2
    .param p1, "constEvent"    # Lcom/boohee/one/event/ConstEvent;

    .prologue
    .line 573
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boohee/one/event/ConstEvent;->getFlag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 574
    invoke-static {}, Lcom/boohee/main/FeedBackSwitcher;->isFeedbackTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->fabButton:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ShopMainFragment;->fabButton:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onResume()V

    .line 162
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/ConstEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/ConstEvent;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/ConstEvent;->setFlag(I)Lcom/boohee/one/event/ConstEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->requestGoodsCount()V

    .line 164
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ShopMainFragment;->requestOrderCount()V

    .line 165
    return-void
.end method
