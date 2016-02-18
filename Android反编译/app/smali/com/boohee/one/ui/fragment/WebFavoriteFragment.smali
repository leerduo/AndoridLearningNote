.class public Lcom/boohee/one/ui/fragment/WebFavoriteFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "WebFavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;

.field private articleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FavoriteArticle;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstLoad:Z

.field private listView:Landroid/widget/ListView;

.field private page:I

.field private perPage:I

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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 54
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->isFirstLoad:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->articleList:Ljava/util/List;

    .line 58
    iput v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->page:I

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->perPage:I

    .line 181
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->page:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->loadData(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->handlerData(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;Lcom/boohee/model/FavoriteArticle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;
    .param p1, "x1"    # Lcom/boohee/model/FavoriteArticle;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->deleteFavoriteArticle(Lcom/boohee/model/FavoriteArticle;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->articleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->adapter:Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;

    return-object v0
.end method

.method private deleteFavoriteArticle(Lcom/boohee/model/FavoriteArticle;I)V
    .locals 3
    .param p1, "article"    # Lcom/boohee/model/FavoriteArticle;
    .param p2, "position"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->showLoading()V

    .line 233
    iget v0, p1, Lcom/boohee/model/FavoriteArticle;->id:I

    new-instance v1, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$6;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$6;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->deleteFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method private handlerData(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "isRefresh"    # Z

    .prologue
    .line 140
    const-string v1, "favorite_articles"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/FavoriteArticle;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "tmpList":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->page:I

    if-ne v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->tvHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    .line 146
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->articleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->articleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->adapter:Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->initView()V

    .line 77
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->articleList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->adapter:Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;

    .line 112
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->adapter:Lcom/boohee/one/ui/fragment/WebFavoriteFragment$ArticleAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->listView:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$1;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$2;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$3;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->initAdapter()V

    .line 108
    return-void
.end method

.method private loadData(Z)V
    .locals 3
    .param p1, "isRefresh"    # Z

    .prologue
    .line 121
    iget v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->page:I

    new-instance v1, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$4;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->getFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method private loadMoreData()V
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->page:I

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->loadData(Z)V

    .line 118
    return-void
.end method


# virtual methods
.method public isFirstLoad()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->isFirstLoad:Z

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
    .line 64
    const v1, 0x7f0300f7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 66
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 178
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 179
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
    .line 71
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->init()V

    .line 73
    return-void
.end method

.method public pullToRefresh()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment$5;-><init>(Lcom/boohee/one/ui/fragment/WebFavoriteFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setIsFirstLoad(Z)V
    .locals 0
    .param p1, "isFirstLoad"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->isFirstLoad:Z

    .line 160
    return-void
.end method
