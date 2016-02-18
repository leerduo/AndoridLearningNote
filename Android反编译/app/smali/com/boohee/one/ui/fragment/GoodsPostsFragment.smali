.class public Lcom/boohee/one/ui/fragment/GoodsPostsFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "GoodsPostsFragment.java"


# static fields
.field private static final ARG_PARAM_SLUG:Ljava/lang/String; = "ARG_PARAM_SLUG"


# instance fields
.field private isLastVisible:Z

.field private mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

.field private mHeaderView:Landroid/widget/ImageView;

.field private mPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mSlug:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->isLastVisible:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getCurrentTopic()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getNextTopic()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mHeaderView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    return-object v0
.end method

.method private addListener()V
    .locals 4

    .prologue
    .line 90
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mHeaderView:Landroid/widget/ImageView;

    .line 91
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mHeaderView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 95
    new-instance v1, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    .line 96
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$1;-><init>(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 103
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$2;-><init>(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 110
    return-void
.end method

.method private getCurrentTopic()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mSlug:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$3;-><init>(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getChannelPosts(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 147
    return-void
.end method

.method private getNextTopic()V
    .locals 5

    .prologue
    .line 153
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->isLastVisible:Z

    .line 156
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    iget v0, v1, Lcom/boohee/model/status/Post;->id:I

    .line 157
    .local v0, "previous_id":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mSlug:Ljava/lang/String;

    new-instance v3, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment$4;-><init>(Lcom/boohee/one/ui/fragment/GoodsPostsFragment;Landroid/content/Context;)V

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/api/StatusApi;->getChannelPostsPrevious(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/GoodsPostsFragment;
    .locals 3
    .param p0, "slug"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/boohee/one/ui/fragment/GoodsPostsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ARG_PARAM_SLUG"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public loadFirst()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/ui/PullToRefreshHelper;->loadFirst(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_PARAM_SLUG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->mSlug:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v0, 0x7f0300e1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->addListener()V

    .line 83
    return-void
.end method
