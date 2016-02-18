.class public Lcom/boohee/one/ui/fragment/WalkingSortFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "WalkingSortFragment.java"


# instance fields
.field private listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

.field mAdapter:Lcom/boohee/one/ui/adapter/WalkingSortAdapter;

.field mBottomClickListener:Landroid/view/View$OnClickListener;

.field mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/WalkingRank;",
            ">;"
        }
    .end annotation
.end field

.field mIsLoadingData:Z

.field mListView:Landroid/widget/ListView;

.field mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field mTitle:Ljava/lang/String;

.field page:I

.field pre_page:I

.field totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mDatas:Ljava/util/List;

    .line 57
    iput v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->page:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->pre_page:I

    iput v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->totalPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->loadLeDongLiData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->pullToRefresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->pullToloadMore()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->refreshComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/WalkingSortFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->uploadSportStep(ILjava/lang/String;)V

    return-void
.end method

.method private addHeaderView(Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030123

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, "headerView":Landroid/view/View;
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 222
    const v2, 0x7f0e00d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    .local v1, "tv_name":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v2, 0x7f0e03cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/fragment/WalkingSortFragment$5;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$5;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mListView:Landroid/widget/ListView;

    .line 137
    const-string v1, "\u4eca\u65e5\u8ba1\u6b65\u6392\u884c"

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v1, v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->addHeaderView(Ljava/lang/String;Landroid/widget/ListView;)V

    .line 138
    new-instance v0, Lcom/boohee/one/ui/adapter/WalkingSortAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/one/ui/adapter/WalkingSortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/boohee/model/chanllenge/BaseChallenge;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mAdapter:Lcom/boohee/one/ui/adapter/WalkingSortAdapter;

    .line 139
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mAdapter:Lcom/boohee/one/ui/adapter/WalkingSortAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/WalkingSortFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$1;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 151
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/WalkingSortFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$2;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 157
    return-void
.end method

.method private loadLeDongLiData()V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/WalkingSortFragment$6;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$6;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V

    invoke-static {v0, v1}, Lcom/boohee/utils/LeDongLiHelper;->LoadLeDongLiSteps(Landroid/app/Activity;Lcom/boohee/utils/LeDongLiHelper$CallBack;)V

    .line 257
    return-void
.end method

.method private loadWalkingRankData(Z)V
    .locals 6
    .param p1, "isLoadMore"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->page:I

    iget v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->pre_page:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/WalkingSortFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, p1}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$4;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;Landroid/content/Context;Z)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/ChallengeApi;->getWalkingRanks(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 214
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;-><init>()V

    .line 102
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v0
.end method

.method private pullToRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mIsLoadingData:Z

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mIsLoadingData:Z

    .line 173
    iput v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->page:I

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->loadWalkingRankData(Z)V

    goto :goto_0
.end method

.method private pullToloadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mIsLoadingData:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->page:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->totalPage:I

    if-ge v0, v1, :cond_0

    .line 181
    iput-boolean v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mIsLoadingData:Z

    .line 182
    iget v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->page:I

    .line 183
    invoke-direct {p0, v2}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->loadWalkingRankData(Z)V

    goto :goto_0
.end method

.method private refreshComplete()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 291
    :cond_0
    return-void
.end method

.method private uploadSportStep(ILjava/lang/String;)V
    .locals 6
    .param p1, "steps"    # I
    .param p2, "dataSource"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 267
    .local v1, "stepsParams":Lcom/boohee/one/http/JsonParams;
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 268
    .local v0, "rootParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "steps"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 269
    const-string v2, "walking"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 270
    const-string v2, "data_source"

    invoke-virtual {v0, v2, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/WalkingSortFragment$7;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$7;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;Landroid/content/Context;)V

    invoke-static {v2, v0, v3, v4}, Lcom/boohee/api/ChallengeApi;->uploadWalkingSteps(ILcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public firstLoad()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6392\u884c"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public initLoad()V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/WalkingSortFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment$3;-><init>(Lcom/boohee/one/ui/fragment/WalkingSortFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->init()V

    .line 128
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "templete":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-nez v1, :cond_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->initLoad()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mTitle:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0e00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 120
    return-object v0
.end method

.method public refreshBaseView()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 79
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mBottomClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "template":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 82
    .local v0, "a":Lcom/boohee/one/ui/BaseChallengeActivity;
    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-eqz v2, :cond_3

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    const-string v2, "\u7ed1\u5b9a\u8fd0\u52a8\u6570\u636e"

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextView(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mBottomClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextGone()V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mBottomClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v2, "\u6211\u8981\u53c2\u52a0\u6311\u6218"

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBottomClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mBottomClickListener:Landroid/view/View$OnClickListener;

    .line 234
    return-void
.end method

.method public setChallenge(Lcom/boohee/model/chanllenge/BaseChallenge;)V
    .locals 0
    .param p1, "challenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 238
    return-void
.end method
