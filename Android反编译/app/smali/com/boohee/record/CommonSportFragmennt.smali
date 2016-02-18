.class public Lcom/boohee/record/CommonSportFragmennt;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "CommonSportFragmennt.java"


# instance fields
.field private hasMore:Z

.field public isFirstLoad:Z

.field listView:Landroid/widget/ListView;

.field private mCommonSportListAdapter:Lcom/boohee/one/ui/adapter/CommonSportListAdapter;

.field private mCurrentPage:I

.field private mPage:I

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mSports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Sport;",
            ">;"
        }
    .end annotation
.end field

.field public record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 44
    iput v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    .line 45
    iput v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mCurrentPage:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mSports:Ljava/util/List;

    .line 48
    iput-boolean v1, p0, Lcom/boohee/record/CommonSportFragmennt;->hasMore:Z

    .line 49
    iput-boolean v1, p0, Lcom/boohee/record/CommonSportFragmennt;->isFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/CommonSportFragmennt;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;

    .prologue
    .line 39
    iget v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/record/CommonSportFragmennt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/record/CommonSportFragmennt;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;

    .prologue
    .line 39
    iget v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/record/CommonSportFragmennt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/record/CommonSportFragmennt;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/record/CommonSportFragmennt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/boohee/record/CommonSportFragmennt;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/record/CommonSportFragmennt;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/record/CommonSportFragmennt;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/record/CommonSportFragmennt;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mSports:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/record/CommonSportFragmennt;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/boohee/record/CommonSportFragmennt;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/record/CommonSportFragmennt;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/record/CommonSportFragmennt;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method private getlatestWeight()F
    .locals 3

    .prologue
    .line 77
    const/high16 v0, 0x425c0000    # 55.0f

    .line 78
    .local v0, "weight":F
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 79
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v0

    .line 81
    :cond_0
    return v0
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/boohee/record/CommonSportFragmennt;->hasMore:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/CommonSportFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    new-instance v2, Lcom/boohee/record/CommonSportFragmennt$5;

    invoke-virtual {p0}, Lcom/boohee/record/CommonSportFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/record/CommonSportFragmennt$5;-><init>(Lcom/boohee/record/CommonSportFragmennt;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->getActivitiesHot(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/record/CommonSportFragmennt;
    .locals 1
    .param p0, "record_on"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/boohee/record/CommonSportFragmennt;

    invoke-direct {v0}, Lcom/boohee/record/CommonSportFragmennt;-><init>()V

    .line 54
    .local v0, "fragment":Lcom/boohee/record/CommonSportFragmennt;
    iput-object p0, v0, Lcom/boohee/record/CommonSportFragmennt;->record_on:Ljava/lang/String;

    .line 55
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 171
    iget-object v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mSports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 173
    :cond_1
    const-string v1, "activities"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/Sport;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Sport;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mSports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mPage:I

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mCommonSportListAdapter:Lcom/boohee/one/ui/adapter/CommonSportListAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/CommonSportListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/record/CommonSportFragmennt;->hasMore:Z

    goto :goto_1
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/record/CommonSportFragmennt$4;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonSportFragmennt$4;-><init>(Lcom/boohee/record/CommonSportFragmennt;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->listView:Landroid/widget/ListView;

    .line 88
    new-instance v0, Lcom/boohee/one/ui/adapter/CommonSportListAdapter;

    invoke-virtual {p0}, Lcom/boohee/record/CommonSportFragmennt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/CommonSportFragmennt;->mSports:Ljava/util/List;

    invoke-direct {p0}, Lcom/boohee/record/CommonSportFragmennt;->getlatestWeight()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/one/ui/adapter/CommonSportListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;F)V

    iput-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mCommonSportListAdapter:Lcom/boohee/one/ui/adapter/CommonSportListAdapter;

    .line 89
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/record/CommonSportFragmennt;->mCommonSportListAdapter:Lcom/boohee/one/ui/adapter/CommonSportListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/record/CommonSportFragmennt$1;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonSportFragmennt$1;-><init>(Lcom/boohee/record/CommonSportFragmennt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 99
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/record/CommonSportFragmennt$2;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonSportFragmennt$2;-><init>(Lcom/boohee/record/CommonSportFragmennt;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 108
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/record/CommonSportFragmennt$3;

    invoke-direct {v1, p0}, Lcom/boohee/record/CommonSportFragmennt$3;-><init>(Lcom/boohee/record/CommonSportFragmennt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/record/CommonSportFragmennt;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "common_sport"

    invoke-virtual {v0, v1}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/record/CommonSportFragmennt;->refreshData(Lorg/json/JSONObject;)V

    .line 127
    invoke-virtual {p0}, Lcom/boohee/record/CommonSportFragmennt;->firstLoad()V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v0, 0x7f0300dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 193
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 187
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 74
    return-void
.end method
