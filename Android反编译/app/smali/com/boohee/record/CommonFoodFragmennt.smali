.class public Lcom/boohee/record/CommonFoodFragmennt;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "CommonFoodFragmennt.java"


# instance fields
.field private hasMore:Z

.field public isFirstLoad:Z

.field listView:Landroid/widget/ListView;

.field private mAddFoodListAdapter:Lcom/boohee/record/CommonFoodListAdapter;

.field private mCurrentPage:I

.field private mFoodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CommonFood;",
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

    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 36
    iput v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    .line 37
    iput v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mCurrentPage:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mFoodList:Ljava/util/List;

    .line 40
    iput-boolean v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->hasMore:Z

    .line 41
    iput-boolean v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->isFirstLoad:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mTimeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/CommonFoodFragmennt;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;

    .prologue
    .line 31
    iget v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/record/CommonFoodFragmennt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/record/CommonFoodFragmennt;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;

    .prologue
    .line 31
    iget v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/record/CommonFoodFragmennt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/record/CommonFoodFragmennt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/boohee/record/CommonFoodFragmennt;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/record/CommonFoodFragmennt;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/record/CommonFoodFragmennt;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/record/CommonFoodFragmennt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mFoodList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/record/CommonFoodFragmennt;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/boohee/record/CommonFoodFragmennt;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/record/CommonFoodFragmennt;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonFoodFragmennt;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->hasMore:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/CommonFoodFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    new-instance v2, Lcom/boohee/record/CommonFoodFragmennt$5;

    invoke-virtual {p0}, Lcom/boohee/record/CommonFoodFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/record/CommonFoodFragmennt$5;-><init>(Lcom/boohee/record/CommonFoodFragmennt;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->getEatingsHot(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/boohee/record/CommonFoodFragmennt;
    .locals 1
    .param p0, "time_type"    # I
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/boohee/record/CommonFoodFragmennt;

    invoke-direct {v0}, Lcom/boohee/record/CommonFoodFragmennt;-><init>()V

    .line 47
    .local v0, "fragment":Lcom/boohee/record/CommonFoodFragmennt;
    iput p0, v0, Lcom/boohee/record/CommonFoodFragmennt;->mTimeType:I

    .line 48
    iput-object p1, v0, Lcom/boohee/record/CommonFoodFragmennt;->record_on:Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mFoodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 159
    :cond_1
    const-string v1, "foods"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/CommonFood;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "foodList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CommonFood;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mFoodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPage:I

    .line 166
    :goto_1
    iget-object v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mAddFoodListAdapter:Lcom/boohee/record/CommonFoodListAdapter;

    invoke-virtual {v1}, Lcom/boohee/record/CommonFoodListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 164
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->hasMore:Z

    goto :goto_1
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/record/CommonFoodFragmennt$4;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonFoodFragmennt$4;-><init>(Lcom/boohee/record/CommonFoodFragmennt;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->listView:Landroid/widget/ListView;

    .line 75
    new-instance v0, Lcom/boohee/record/CommonFoodListAdapter;

    invoke-virtual {p0}, Lcom/boohee/record/CommonFoodFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/CommonFoodFragmennt;->mFoodList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/record/CommonFoodListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mAddFoodListAdapter:Lcom/boohee/record/CommonFoodListAdapter;

    .line 76
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/record/CommonFoodFragmennt;->mAddFoodListAdapter:Lcom/boohee/record/CommonFoodListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/record/CommonFoodFragmennt$1;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonFoodFragmennt$1;-><init>(Lcom/boohee/record/CommonFoodFragmennt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 86
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/record/CommonFoodFragmennt$2;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonFoodFragmennt$2;-><init>(Lcom/boohee/record/CommonFoodFragmennt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 95
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/record/CommonFoodFragmennt$3;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonFoodFragmennt$3;-><init>(Lcom/boohee/record/CommonFoodFragmennt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/boohee/record/CommonFoodFragmennt;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "common_food"

    invoke-virtual {v0, v1}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/record/CommonFoodFragmennt;->refreshData(Lorg/json/JSONObject;)V

    .line 105
    invoke-virtual {p0}, Lcom/boohee/record/CommonFoodFragmennt;->firstLoad()V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 178
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 172
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 68
    return-void
.end method
