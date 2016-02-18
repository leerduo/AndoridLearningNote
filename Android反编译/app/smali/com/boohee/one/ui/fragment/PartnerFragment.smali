.class public Lcom/boohee/one/ui/fragment/PartnerFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "PartnerFragment.java"


# instance fields
.field private adapter:Lcom/boohee/account/HomeImagePagerAdapter;

.field private blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Block;",
            ">;"
        }
    .end annotation
.end field

.field private category:Lcom/boohee/model/Category;

.field flPartner:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0359
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field indicator:Lcom/viewpagerindicator/LinePageIndicator;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0174
    .end annotation
.end field

.field public isLoadFirst:Z

.field ivLeftImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0685
    .end annotation
.end field

.field ivRightImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0686
    .end annotation
.end field

.field ivStoryImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0756
    .end annotation
.end field

.field llContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0127
    .end annotation
.end field

.field llImage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e075a
    .end annotation
.end field

.field private mCurrentItem:I

.field private mHomeImageRunnable:Ljava/lang/Runnable;

.field scrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e000c
    .end annotation
.end field

.field private sliders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/HomeSlider;",
            ">;"
        }
    .end annotation
.end field

.field private story:Lcom/boohee/model/status/StoryItem;

.field tvFriendsNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0751
    .end annotation
.end field

.field tvHotNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0754
    .end annotation
.end field

.field tvStoryDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0758
    .end annotation
.end field

.field tvStoryName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0757
    .end annotation
.end field

.field tvStoryNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0759
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e035a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->isLoadFirst:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->blocks:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->handler:Landroid/os/Handler;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCurrentItem:I

    .line 388
    new-instance v0, Lcom/boohee/one/ui/fragment/PartnerFragment$9;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/PartnerFragment$9;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mHomeImageRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/PartnerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/PartnerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/PartnerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCurrentItem:I

    return p1
.end method

.method static synthetic access$108(Lcom/boohee/one/ui/fragment/PartnerFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCurrentItem:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/PartnerFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initShow(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/PartnerFragment;)Lcom/boohee/model/Category;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/PartnerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/PartnerFragment;)Lcom/boohee/account/HomeImagePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->adapter:Lcom/boohee/account/HomeImagePagerAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/PartnerFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mHomeImageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/PartnerFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PartnerFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->scrollView:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v1, Lcom/boohee/one/ui/fragment/PartnerFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PartnerFragment$1;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 121
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->indicator:Lcom/viewpagerindicator/LinePageIndicator;

    new-instance v1, Lcom/boohee/one/ui/fragment/PartnerFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PartnerFragment$2;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 128
    return-void
.end method

.method private clearStoryDot()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget v0, v0, Lcom/boohee/model/status/StoryItem;->id:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/http/JsonCallback;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->clearStroyDot(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getSelectItemView(Lcom/boohee/model/Event;)Landroid/view/View;
    .locals 7
    .param p1, "event"    # Lcom/boohee/model/Event;

    .prologue
    const/4 v4, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "itemView":Landroid/view/View;
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-object v4

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030173

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 318
    const v4, 0x7f0e03be

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 319
    .local v1, "select_iv":Landroid/widget/ImageView;
    const v4, 0x7f0e03bf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 320
    .local v2, "select_name_tv":Landroid/widget/TextView;
    const v4, 0x7f0e03c1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 321
    .local v3, "select_title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, p1, Lcom/boohee/model/Event;->pic_url:Ljava/lang/String;

    const v6, 0x7f02032c

    invoke-static {v6}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 322
    iget-object v4, p1, Lcom/boohee/model/Event;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v4, p1, Lcom/boohee/model/Event;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    new-instance v4, Lcom/boohee/one/ui/fragment/PartnerFragment$8;

    invoke-direct {v4, p0, p1}, Lcom/boohee/one/ui/fragment/PartnerFragment$8;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;Lcom/boohee/model/Event;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, v0

    .line 337
    goto :goto_0
.end method

.method private initBadge(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/16 v3, 0x64

    .line 216
    const-string v1, "badge"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 217
    .local v0, "badgeObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvFriendsNum:Landroid/widget/TextView;

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_1

    const-string v1, "99+"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvHotNum:Landroid/widget/TextView;

    const-string v1, "hot_posts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "hot_posts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_3

    const-string v1, "99+"

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const-string v1, "story"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-class v2, Lcom/boohee/model/status/StoryItem;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/StoryItem;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    .line 221
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    if-eqz v1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvStoryNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-boolean v1, v1, Lcom/boohee/model/status/StoryItem;->is_new:Z

    if-eqz v1, :cond_5

    const-string v1, "New"

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v2, v2, Lcom/boohee/model/status/StoryItem;->icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->ivStoryImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 224
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvStoryName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v2, v2, Lcom/boohee/model/status/StoryItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvStoryDesc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v2, v2, Lcom/boohee/model/status/StoryItem;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-void

    .line 218
    :cond_1
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 219
    :cond_3
    const-string v1, "hot_posts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_1

    .line 222
    :cond_5
    const-string v1, ""

    goto :goto_2
.end method

.method private initBlocks(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    .line 231
    const-string v2, "blocks"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/boohee/model/status/Block;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->blocks:Ljava/util/List;

    .line 232
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->blocks:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->blocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->llImage:Landroid/widget/LinearLayout;

    const/16 v4, 0x280

    const/16 v5, 0xe6

    invoke-static {v2, v3, v4, v5}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 234
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->blocks:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Block;

    .line 235
    .local v0, "leftBlock":Lcom/boohee/model/status/Block;
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/boohee/model/status/Block;->getImg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->ivLeftImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 236
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->ivLeftImg:Landroid/widget/ImageView;

    new-instance v3, Lcom/boohee/one/ui/fragment/PartnerFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/boohee/one/ui/fragment/PartnerFragment$5;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;Lcom/boohee/model/status/Block;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->blocks:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Block;

    .line 248
    .local v1, "rightBlock":Lcom/boohee/model/status/Block;
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/boohee/model/status/Block;->getImg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->ivRightImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 249
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->ivRightImg:Landroid/widget/ImageView;

    new-instance v3, Lcom/boohee/one/ui/fragment/PartnerFragment$6;

    invoke-direct {v3, p0, v1}, Lcom/boohee/one/ui/fragment/PartnerFragment$6;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;Lcom/boohee/model/status/Block;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .end local v0    # "leftBlock":Lcom/boohee/model/status/Block;
    .end local v1    # "rightBlock":Lcom/boohee/model/status/Block;
    :cond_0
    return-void
.end method

.method private initCategory(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 263
    const-string v3, "category"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/model/Category;->parse(Ljava/lang/String;)Lcom/boohee/model/Category;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    .line 264
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-object v3, v3, Lcom/boohee/model/Category;->events:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-object v3, v3, Lcom/boohee/model/Category;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-object v3, v3, Lcom/boohee/model/Category;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 272
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-object v3, v3, Lcom/boohee/model/Category;->events:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/Event;

    invoke-direct {p0, v3}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getSelectItemView(Lcom/boohee/model/Event;)Landroid/view/View;

    move-result-object v2

    .line 273
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 274
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-object v3, v3, Lcom/boohee/model/Category;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_3

    .line 277
    const v3, 0x7f0e0483

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-boolean v3, v3, Lcom/boohee/model/Category;->show_more:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 281
    const v3, 0x7f0e03c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v3, v5

    .line 277
    goto :goto_1

    .line 286
    .end local v2    # "view":Landroid/view/View;
    :cond_6
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->category:Lcom/boohee/model/Category;

    iget-boolean v3, v3, Lcom/boohee/model/Category;->show_more:Z

    if-nez v3, :cond_7

    .line 309
    :goto_2
    return-void

    .line 287
    :cond_7
    const v3, 0x7f07039e

    new-instance v4, Lcom/boohee/one/ui/fragment/PartnerFragment$7;

    invoke-direct {v4, p0}, Lcom/boohee/one/ui/fragment/PartnerFragment$7;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;)V

    invoke-virtual {p0, v3, v4}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getFooterView(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "footerView":Landroid/view/View;
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private initHeadAd()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->flPartner:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    new-instance v0, Lcom/boohee/account/HomeImagePagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/account/HomeImagePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->adapter:Lcom/boohee/account/HomeImagePagerAdapter;

    .line 355
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->adapter:Lcom/boohee/account/HomeImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 356
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-static {}, Lcom/boohee/one/transform/TransformManager;->getRandomTransform()Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 357
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->indicator:Lcom/viewpagerindicator/LinePageIndicator;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 358
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x2ee

    const/16 v3, 0xfa

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 359
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->startPlayHomeImage()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->flPartner:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initShow(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initSlider(Lorg/json/JSONObject;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initBadge(Lorg/json/JSONObject;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initBlocks(Lorg/json/JSONObject;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initCategory(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private initSlider(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 206
    const-string v1, "sliders"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 207
    .local v0, "slidersArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 208
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "slidersArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v1}, Lcom/boohee/model/HomeSlider;->parseSliders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    .line 212
    :goto_1
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initHeadAd()V

    .line 213
    return-void

    .line 208
    .restart local v0    # "slidersArray":Lorg/json/JSONArray;
    :cond_0
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "slidersArray":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 210
    .restart local v0    # "slidersArray":Lorg/json/JSONArray;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    goto :goto_1
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/PartnerFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/PartnerFragment$4;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->getPartnerBlocks(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 195
    return-void
.end method

.method private startPlayHomeImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mHomeImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->sliders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 379
    iput v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCurrentItem:I

    .line 380
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->indicator:Lcom/viewpagerindicator/LinePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mHomeImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->indicator:Lcom/viewpagerindicator/LinePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/LinePageIndicator;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getFooterView(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5
    .param p1, "strId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030270

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 342
    .local v0, "footerView":Landroid/view/View;
    const v2, 0x7f0e076f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 343
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-object v0
.end method

.method public loadFirst()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/PartnerFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PartnerFragment$3;-><init>(Lcom/boohee/one/ui/fragment/PartnerFragment;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->addListener()V

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "partner_square"

    invoke-virtual {v0, v1}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->initShow(Lorg/json/JSONObject;)V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e074f,
            0x7f0e0752,
            0x7f0e0755
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 134
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "status_friendTimeline"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvFriendsNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :sswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "status_hotTimeline"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "hot_posts"

    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvHotNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v0, v0, Lcom/boohee/model/status/StoryItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "status_todayContent"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v1, v1, Lcom/boohee/model/status/StoryItem;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v0, v0, Lcom/boohee/model/status/StoryItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07050e

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-object v2, v2, Lcom/boohee/model/status/StoryItem;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->story:Lcom/boohee/model/status/StoryItem;

    iget-boolean v0, v0, Lcom/boohee/model/status/StoryItem;->is_new:Z

    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->clearStoryDot()V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->tvStoryNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e074f -> :sswitch_0
        0x7f0e0752 -> :sswitch_1
        0x7f0e0755 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const v1, 0x7f0300ec

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 103
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 417
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mHomeImageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PartnerFragment;->mHomeImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PartnerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 411
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 412
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 367
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onPause()V

    .line 368
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 372
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onResume()V

    .line 373
    return-void
.end method
