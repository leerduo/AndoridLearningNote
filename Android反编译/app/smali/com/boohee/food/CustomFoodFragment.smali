.class public Lcom/boohee/food/CustomFoodFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "CustomFoodFragment.java"


# instance fields
.field private hasMore:Z

.field public isFirstLoad:Z

.field listView:Landroid/widget/ListView;

.field private mAddFoodListAdapter:Lcom/boohee/food/CustomFoodListAdapter;

.field private mCurrentPage:I

.field private mFoodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CustomFood;",
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

    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 46
    iput v1, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    .line 47
    iput v1, p0, Lcom/boohee/food/CustomFoodFragment;->mCurrentPage:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mFoodList:Ljava/util/List;

    .line 50
    iput-boolean v1, p0, Lcom/boohee/food/CustomFoodFragment;->hasMore:Z

    .line 51
    iput-boolean v1, p0, Lcom/boohee/food/CustomFoodFragment;->isFirstLoad:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/food/CustomFoodFragment;->mTimeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/CustomFoodFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/food/CustomFoodFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/food/CustomFoodFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/boohee/food/CustomFoodFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/food/CustomFoodFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/boohee/food/CustomFoodFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/food/CustomFoodFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/boohee/food/CustomFoodFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/food/CustomFoodFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/food/CustomFoodFragment;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/food/CustomFoodFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mFoodList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/food/CustomFoodFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomFoodFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/boohee/food/CustomFoodFragment;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/boohee/food/CustomFoodFragment;->hasMore:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/CustomFoodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    new-instance v2, Lcom/boohee/food/CustomFoodFragment$5;

    invoke-virtual {p0}, Lcom/boohee/food/CustomFoodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/CustomFoodFragment$5;-><init>(Lcom/boohee/food/CustomFoodFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getCustomFoods(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/boohee/food/CustomFoodFragment;
    .locals 1
    .param p0, "time_type"    # I
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/boohee/food/CustomFoodFragment;

    invoke-direct {v0}, Lcom/boohee/food/CustomFoodFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/boohee/food/CustomFoodFragment;
    iput p0, v0, Lcom/boohee/food/CustomFoodFragment;->mTimeType:I

    .line 58
    iput-object p1, v0, Lcom/boohee/food/CustomFoodFragment;->record_on:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 155
    iget v1, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Lcom/boohee/food/CustomFoodFragment;->mFoodList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    :cond_0
    const-string v1, "custom_foods"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/CustomFood;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "foodList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CustomFood;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/boohee/food/CustomFoodFragment;->mFoodList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget v1, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/food/CustomFoodFragment;->mPage:I

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/boohee/food/CustomFoodFragment;->mAddFoodListAdapter:Lcom/boohee/food/CustomFoodListAdapter;

    invoke-virtual {v1}, Lcom/boohee/food/CustomFoodListAdapter;->notifyDataSetChanged()V

    .line 166
    return-void

    .line 163
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/food/CustomFoodFragment;->hasMore:Z

    goto :goto_0
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/CustomFoodFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomFoodFragment$4;-><init>(Lcom/boohee/food/CustomFoodFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->listView:Landroid/widget/ListView;

    .line 78
    new-instance v0, Lcom/boohee/food/CustomFoodListAdapter;

    invoke-virtual {p0}, Lcom/boohee/food/CustomFoodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/CustomFoodFragment;->mFoodList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/food/CustomFoodListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mAddFoodListAdapter:Lcom/boohee/food/CustomFoodListAdapter;

    .line 79
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/CustomFoodFragment;->mAddFoodListAdapter:Lcom/boohee/food/CustomFoodListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/food/CustomFoodFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomFoodFragment$1;-><init>(Lcom/boohee/food/CustomFoodFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 89
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/food/CustomFoodFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomFoodFragment$2;-><init>(Lcom/boohee/food/CustomFoodFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 98
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/food/CustomFoodFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomFoodFragment$3;-><init>(Lcom/boohee/food/CustomFoodFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 183
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 177
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/CustomFoodEvent;)V
    .locals 2
    .param p1, "customFoodEvent"    # Lcom/boohee/one/event/CustomFoodEvent;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boohee/one/event/CustomFoodEvent;->getCustomFood()Lcom/boohee/model/CustomFood;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mFoodList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/boohee/one/event/CustomFoodEvent;->getCustomFood()Lcom/boohee/model/CustomFood;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/boohee/food/CustomFoodFragment;->mAddFoodListAdapter:Lcom/boohee/food/CustomFoodListAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/CustomFoodListAdapter;->notifyDataSetChanged()V

    .line 192
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 72
    return-void
.end method
