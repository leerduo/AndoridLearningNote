.class public Lcom/boohee/one/ui/fragment/PunchRankFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "PunchRankFragment.java"


# instance fields
.field private hasMore:Z

.field listView:Landroid/widget/ListView;

.field private mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field private mClockOutRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRank;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field private mListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

.field private mPage:I

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mPunchRankAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 52
    iput v1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    .line 53
    iput v1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mCurrentPage:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 58
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/PunchRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/PunchRankFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/PunchRankFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/PunchRankFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/PunchRankFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/PunchRankFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/PunchRankFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/PunchRankFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchRankFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private loadData()V
    .locals 6

    .prologue
    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->hasMore:Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/PunchRankFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/fragment/PunchRankFragment$4;-><init>(Lcom/boohee/one/ui/fragment/PunchRankFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/ChallengeApi;->getClockOutsRanks(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/PunchRankFragment;
    .locals 1
    .param p0, "baseChallenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 61
    new-instance v0, Lcom/boohee/one/ui/fragment/PunchRankFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;-><init>()V

    .line 62
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/PunchRankFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 63
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 150
    iget v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    if-ne v4, v5, :cond_0

    .line 151
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 153
    :cond_0
    const-class v4, Lcom/boohee/model/chanllenge/ClockOutRankData;

    invoke-static {p1, v4}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/ClockOutRankData;

    .line 154
    .local v0, "clockOutRankData":Lcom/boohee/model/chanllenge/ClockOutRankData;
    if-nez v0, :cond_1

    .line 179
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v2, 0x0

    .line 156
    .local v2, "minePost":Lcom/boohee/model/chanllenge/ClockOutRank;
    iget v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    if-ne v4, v5, :cond_2

    .line 157
    iget-object v2, v0, Lcom/boohee/model/chanllenge/ClockOutRankData;->mine:Lcom/boohee/model/chanllenge/ClockOutRank;

    .line 158
    if-eqz v2, :cond_2

    .line 159
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    invoke-interface {v4, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    :cond_2
    iget-object v3, v0, Lcom/boohee/model/chanllenge/ClockOutRankData;->ranks:Ljava/util/List;

    .line 163
    .local v3, "rankPosts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutRank;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v2, :cond_3

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 165
    const/4 v4, 0x2

    if-gt v1, v4, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/chanllenge/ClockOutRank;

    iget v4, v4, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    iget v5, v2, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    if-ne v4, v5, :cond_4

    .line 166
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPunchRankAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    iget v5, v2, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    invoke-virtual {v4, v5}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->setMyRank(I)V

    .line 167
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 172
    .end local v1    # "i":I
    :cond_3
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 173
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPage:I

    .line 178
    :goto_2
    iget-object v4, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPunchRankAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    invoke-virtual {v4}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 164
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v1    # "i":I
    :cond_5
    iput-boolean v6, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->hasMore:Z

    goto :goto_2
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "challenge_viewCheckRank"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchRankFragment$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment$5;-><init>(Lcom/boohee/one/ui/fragment/PunchRankFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    return-void
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 183
    const-string v0, "\u6392\u884c"

    return-object v0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->listView:Landroid/widget/ListView;

    .line 82
    new-instance v0, Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mClockOutRanks:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPunchRankAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPunchRankAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchRankFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment$1;-><init>(Lcom/boohee/one/ui/fragment/PunchRankFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchRankFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment$2;-><init>(Lcom/boohee/one/ui/fragment/PunchRankFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchRankFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment$3;-><init>(Lcom/boohee/one/ui/fragment/PunchRankFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchRankFragment;->listView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const v0, 0x7f0300ee

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
    .line 74
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 76
    return-void
.end method
