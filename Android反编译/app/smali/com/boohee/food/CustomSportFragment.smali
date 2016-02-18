.class public Lcom/boohee/food/CustomSportFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "CustomSportFragment.java"


# instance fields
.field private hasMore:Z

.field public isFirstLoad:Z

.field listView:Landroid/widget/ListView;

.field private mCurrentPage:I

.field private mCustomSportListAdapter:Lcom/boohee/food/CustomSportListAdapter;

.field private mCustomSports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CustomSport;",
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

.field public record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 46
    iput v1, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    .line 47
    iput v1, p0, Lcom/boohee/food/CustomSportFragment;->mCurrentPage:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSports:Ljava/util/List;

    .line 50
    iput-boolean v1, p0, Lcom/boohee/food/CustomSportFragment;->hasMore:Z

    .line 51
    iput-boolean v1, p0, Lcom/boohee/food/CustomSportFragment;->isFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/CustomSportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/food/CustomSportFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/food/CustomSportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/boohee/food/CustomSportFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/food/CustomSportFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/boohee/food/CustomSportFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/food/CustomSportFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/boohee/food/CustomSportFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/food/CustomSportFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/food/CustomSportFragment;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/food/CustomSportFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSports:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/food/CustomSportFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CustomSportFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/boohee/food/CustomSportFragment;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/boohee/food/CustomSportFragment;->hasMore:Z

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/CustomSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    new-instance v2, Lcom/boohee/food/CustomSportFragment$5;

    invoke-virtual {p0}, Lcom/boohee/food/CustomSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/CustomSportFragment$5;-><init>(Lcom/boohee/food/CustomSportFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getCustomActivities(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/food/CustomSportFragment;
    .locals 1
    .param p0, "record_on"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/boohee/food/CustomSportFragment;

    invoke-direct {v0}, Lcom/boohee/food/CustomSportFragment;-><init>()V

    .line 56
    .local v0, "fragment":Lcom/boohee/food/CustomSportFragment;
    iput-object p0, v0, Lcom/boohee/food/CustomSportFragment;->record_on:Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 152
    iget v1, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 155
    :cond_0
    const-string v1, "custom_activities"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/CustomSport;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "customSports":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CustomSport;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget v1, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/food/CustomSportFragment;->mPage:I

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSportListAdapter:Lcom/boohee/food/CustomSportListAdapter;

    invoke-virtual {v1}, Lcom/boohee/food/CustomSportListAdapter;->notifyDataSetChanged()V

    .line 163
    return-void

    .line 160
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/food/CustomSportFragment;->hasMore:Z

    goto :goto_0
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/CustomSportFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomSportFragment$4;-><init>(Lcom/boohee/food/CustomSportFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/food/CustomSportFragment;->listView:Landroid/widget/ListView;

    .line 76
    new-instance v0, Lcom/boohee/food/CustomSportListAdapter;

    invoke-virtual {p0}, Lcom/boohee/food/CustomSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSports:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/food/CustomSportListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSportListAdapter:Lcom/boohee/food/CustomSportListAdapter;

    .line 77
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSportListAdapter:Lcom/boohee/food/CustomSportListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/food/CustomSportFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomSportFragment$1;-><init>(Lcom/boohee/food/CustomSportFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 87
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/food/CustomSportFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomSportFragment$2;-><init>(Lcom/boohee/food/CustomSportFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/food/CustomSportFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/food/CustomSportFragment$3;-><init>(Lcom/boohee/food/CustomSportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 180
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 174
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/CustomSportEvent;)V
    .locals 2
    .param p1, "customSportEvent"    # Lcom/boohee/one/event/CustomSportEvent;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boohee/one/event/CustomSportEvent;->getCustomSport()Lcom/boohee/model/CustomSport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSports:Ljava/util/List;

    invoke-virtual {p1}, Lcom/boohee/one/event/CustomSportEvent;->getCustomSport()Lcom/boohee/model/CustomSport;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/boohee/food/CustomSportFragment;->mCustomSportListAdapter:Lcom/boohee/food/CustomSportListAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/CustomSportListAdapter;->notifyDataSetChanged()V

    .line 189
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 70
    return-void
.end method
