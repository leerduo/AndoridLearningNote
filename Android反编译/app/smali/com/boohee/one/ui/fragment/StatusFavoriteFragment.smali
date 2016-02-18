.class public Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "StatusFavoriteFragment.java"


# instance fields
.field private final STATUS_API:Ljava/lang/String;

.field private adapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

.field private isFirstLoad:Z

.field private listView:Landroid/widget/ListView;

.field private page:I

.field private perPage:I

.field private postList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field tvHint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0368
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 44
    const-string v0, "/api/v1/favorite_posts?page=%d&per_page=%d"

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->STATUS_API:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->isFirstLoad:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->postList:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->page:I

    .line 57
    const/16 v0, 0x14

    iput v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->perPage:I

    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->page:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->loadData(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->loadMoreData(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->postList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->handleData(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private handleData(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "isRefresh"    # Z

    .prologue
    .line 149
    :try_start_0
    const-string v1, "posts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    .local v0, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->page:I

    if-ne v1, v2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->tvHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 162
    .end local v0    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    :goto_0
    return-void

    .line 154
    .restart local v0    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 155
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->postList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->postList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->adapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->showLoading()V

    .line 75
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->initView()V

    .line 76
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->pullToRefresh()V

    .line 77
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->postList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->adapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    .line 112
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->adapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->setIsFavorite(Z)V

    .line 113
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->adapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->listView:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$1;-><init>(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$2;-><init>(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$3;-><init>(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->initAdapter()V

    .line 108
    return-void
.end method

.method private loadData(Z)V
    .locals 5
    .param p1, "isRefresh"    # Z

    .prologue
    .line 127
    const-string v1, "/api/v1/favorite_posts?page=%d&per_page=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->perPage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$4;-><init>(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method private loadMoreData(Z)V
    .locals 1
    .param p1, "isRefresh"    # Z

    .prologue
    .line 117
    iget v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->page:I

    .line 118
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->loadData(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public isFirstLoad()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->isFirstLoad:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    const v1, 0x7f0300f7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 64
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 189
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->init()V

    .line 71
    return-void
.end method

.method public pullToRefresh()V
    .locals 4

    .prologue
    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment$5;-><init>(Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method public setIsFirstLoad(Z)V
    .locals 0
    .param p1, "isFirstLoad"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;->isFirstLoad:Z

    .line 170
    return-void
.end method
