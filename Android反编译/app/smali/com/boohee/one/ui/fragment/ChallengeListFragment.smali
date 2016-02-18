.class public Lcom/boohee/one/ui/fragment/ChallengeListFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "ChallengeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/ChallengeListFragment$ChallengeItemClickListener;
    }
.end annotation


# instance fields
.field private isHistory:Z

.field private mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/BaseChallenge;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoadingData:Z

.field private mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private page:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mDatas:Ljava/util/List;

    .line 45
    iput v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    iput v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->totalPage:I

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/ChallengeListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    return p1
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/fragment/ChallengeListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->totalPage:I

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)Lcom/boohee/one/ui/adapter/ChallengeListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/fragment/ChallengeListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mIsLoadingData:Z

    return p1
.end method

.method private init()V
    .locals 5

    .prologue
    .line 89
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 90
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/ChallengeListFragment$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 97
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/ChallengeListFragment$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 103
    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeListFragment$ChallengeItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$ChallengeItemClickListener;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;Lcom/boohee/one/ui/fragment/ChallengeListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    new-instance v1, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mDatas:Ljava/util/List;

    iget-boolean v4, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isHistory:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    .line 105
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isHistory:Z

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeListFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    :cond_0
    return-void
.end method

.method public static newInstance(Z)Lcom/boohee/one/ui/fragment/ChallengeListFragment;
    .locals 3
    .param p0, "isHistory"    # Z

    .prologue
    .line 49
    new-instance v0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;-><init>()V

    .line 50
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/ChallengeListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "isHistory"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public getAllChallenges(Z)V
    .locals 5
    .param p1, "isLoadMore"    # Z

    .prologue
    .line 157
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/fragment/ChallengeListFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$5;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;Landroid/content/Context;Z)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/ChallengeApi;->getChallenges(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 178
    return-void
.end method

.method public getHistoryChallenges(Z)V
    .locals 3
    .param p1, "isLoadMore"    # Z

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeListFragment$6;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$6;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcom/boohee/api/ChallengeApi;->getChallengeHistory(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 214
    return-void
.end method

.method public handleJoinedState(Lcom/boohee/model/chanllenge/AllChallenges;)V
    .locals 7
    .param p1, "all"    # Lcom/boohee/model/chanllenge/AllChallenges;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/boohee/model/chanllenge/AllChallenges;->joined:[I

    if-nez v6, :cond_1

    .line 191
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v6, p1, Lcom/boohee/model/chanllenge/AllChallenges;->challenges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 183
    .local v1, "challenge":Lcom/boohee/model/chanllenge/BaseChallenge;
    if-eqz v1, :cond_2

    .line 184
    iget-object v0, p1, Lcom/boohee/model/chanllenge/AllChallenges;->joined:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget v4, v0, v3

    .line 185
    .local v4, "id":I
    iget v6, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-ne v6, v4, :cond_3

    .line 186
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    goto :goto_0

    .line 184
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->init()V

    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->loadData()V

    .line 75
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isHistory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isHistory:Z

    .line 60
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
    .line 65
    const v1, 0x7f0301dc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0e00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 67
    return-object v0
.end method

.method public pull()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeListFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ChallengeListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method public pullToRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mIsLoadingData:Z

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iput-boolean v2, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mIsLoadingData:Z

    .line 121
    iput v2, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    .line 122
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isHistory:Z

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getHistoryChallenges(Z)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getAllChallenges(Z)V

    goto :goto_0
.end method

.method public pullToloadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mIsLoadingData:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->totalPage:I

    if-lt v0, v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iput-boolean v2, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->mIsLoadingData:Z

    .line 134
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->page:I

    .line 136
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->isHistory:Z

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getHistoryChallenges(Z)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->getAllChallenges(Z)V

    goto :goto_0
.end method
