.class public Lcom/boohee/food/FavourFoodFragmennt;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "FavourFoodFragmennt.java"


# instance fields
.field private hasMore:Z

.field public isFirstLoad:Z

.field listView:Landroid/widget/ListView;

.field private mAddFoodListAdapter:Lcom/boohee/food/FavourFoodListAdapter;

.field private mCurrentPage:I

.field private mFoodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FavourFood;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field public mTimeType:I

.field public record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 35
    iput v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    .line 36
    iput v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mCurrentPage:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mFoodList:Ljava/util/List;

    .line 39
    iput-boolean v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->hasMore:Z

    .line 40
    iput-boolean v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->isFirstLoad:Z

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mTimeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/FavourFoodFragmennt;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;

    .prologue
    .line 30
    iget v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/food/FavourFoodFragmennt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/food/FavourFoodFragmennt;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;

    .prologue
    .line 30
    iget v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/food/FavourFoodFragmennt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/food/FavourFoodFragmennt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/boohee/food/FavourFoodFragmennt;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/food/FavourFoodFragmennt;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/food/FavourFoodFragmennt;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/food/FavourFoodFragmennt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mFoodList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/food/FavourFoodFragmennt;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FavourFoodFragmennt;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/boohee/food/FavourFoodFragmennt;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->hasMore:Z

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    invoke-virtual {p0}, Lcom/boohee/food/FavourFoodFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/food/FavourFoodFragmennt$5;

    invoke-virtual {p0}, Lcom/boohee/food/FavourFoodFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/FavourFoodFragmennt$5;-><init>(Lcom/boohee/food/FavourFoodFragmennt;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getFavoriteFoods(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/boohee/food/FavourFoodFragmennt;
    .locals 1
    .param p0, "time_type"    # I
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lcom/boohee/food/FavourFoodFragmennt;

    invoke-direct {v0}, Lcom/boohee/food/FavourFoodFragmennt;-><init>()V

    .line 46
    .local v0, "fragment":Lcom/boohee/food/FavourFoodFragmennt;
    iput p0, v0, Lcom/boohee/food/FavourFoodFragmennt;->mTimeType:I

    .line 47
    iput-object p1, v0, Lcom/boohee/food/FavourFoodFragmennt;->record_on:Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 140
    iget v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mFoodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 143
    :cond_0
    const-string v1, "foods"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/FavourFood;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "foodList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/FavourFood;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mFoodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPage:I

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mAddFoodListAdapter:Lcom/boohee/food/FavourFoodListAdapter;

    invoke-virtual {v1}, Lcom/boohee/food/FavourFoodListAdapter;->notifyDataSetChanged()V

    .line 151
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->hasMore:Z

    goto :goto_0
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/FavourFoodFragmennt$4;

    invoke-direct {v1, p0}, Lcom/boohee/food/FavourFoodFragmennt$4;-><init>(Lcom/boohee/food/FavourFoodFragmennt;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->listView:Landroid/widget/ListView;

    .line 68
    new-instance v0, Lcom/boohee/food/FavourFoodListAdapter;

    invoke-virtual {p0}, Lcom/boohee/food/FavourFoodFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/FavourFoodFragmennt;->mFoodList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/food/FavourFoodListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mAddFoodListAdapter:Lcom/boohee/food/FavourFoodListAdapter;

    .line 69
    iget-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/FavourFoodFragmennt;->mAddFoodListAdapter:Lcom/boohee/food/FavourFoodListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/food/FavourFoodFragmennt$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/FavourFoodFragmennt$1;-><init>(Lcom/boohee/food/FavourFoodFragmennt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 79
    iget-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/food/FavourFoodFragmennt$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/FavourFoodFragmennt$2;-><init>(Lcom/boohee/food/FavourFoodFragmennt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 88
    iget-object v0, p0, Lcom/boohee/food/FavourFoodFragmennt;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/food/FavourFoodFragmennt$3;

    invoke-direct {v1, p0}, Lcom/boohee/food/FavourFoodFragmennt$3;-><init>(Lcom/boohee/food/FavourFoodFragmennt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 168
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 162
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 173
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 61
    return-void
.end method
