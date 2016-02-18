.class public Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "ChallengeSortHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;
    }
.end annotation


# static fields
.field private static final KEY_CHALLENGE:Ljava/lang/String; = "KEY_CHALLENGE"

.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"


# instance fields
.field private hasMore:Z

.field headerText:Landroid/widget/TextView;

.field private mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field private mClockAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

.field private mClockDatas:Ljava/util/List;
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

.field private mListView:Landroid/widget/ListView;

.field private mPage:I

.field mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mType:I

.field private mWalkAdapter:Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

.field private mWalkDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/WalkingRank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkDatas:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;

    .line 59
    iput v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    .line 60
    iput v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mCurrentPage:I

    .line 63
    iput-boolean v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->updateHeaderText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->refreshWalkData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->refreshClockOutData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private addHeaderView(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 141
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030121

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->headerText:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mType:I

    .line 91
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_CHALLENGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-gez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mListView:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->addHeaderView(Landroid/widget/ListView;)V

    .line 96
    iget v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mType:I

    sget-object v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->WalkingChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    invoke-virtual {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 97
    new-instance v0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkDatas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkAdapter:Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

    .line 98
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkAdapter:Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;-><init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 113
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;-><init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 122
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;-><init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$4;-><init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 100
    :cond_2
    new-instance v0, Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    .line 101
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private loadClockOutChallengeHistory()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    if-nez v0, :cond_2

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    const/16 v2, 0x14

    new-instance v3, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$6;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$6;-><init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, p0, v3}, Lcom/boohee/api/ChallengeApi;->getClockOutsRanksHistory(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mType:I

    sget-object v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->WalkingChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    invoke-virtual {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadWalkingChallengeHistory()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadClockOutChallengeHistory()V

    goto :goto_0
.end method

.method private loadWalkingChallengeHistory()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    if-nez v0, :cond_2

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    const/16 v2, 0x14

    new-instance v3, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;-><init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, p0, v3}, Lcom/boohee/api/ChallengeApi;->getWalkingRanksHistory(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private refreshClockOutData(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    iget v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    if-ne v3, v4, :cond_0

    .line 239
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 241
    :cond_0
    const-class v3, Lcom/boohee/model/chanllenge/ClockOutRankData;

    invoke-static {p1, v3}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/ClockOutRankData;

    .line 242
    .local v0, "clockOutRankData":Lcom/boohee/model/chanllenge/ClockOutRankData;
    if-nez v0, :cond_2

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v3, v0, Lcom/boohee/model/chanllenge/ClockOutRankData;->header_info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 244
    iget-object v3, v0, Lcom/boohee/model/chanllenge/ClockOutRankData;->header_info:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->updateHeaderText(Ljava/lang/String;)V

    .line 245
    :cond_3
    iget v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    if-ne v3, v4, :cond_5

    .line 246
    iget-object v1, v0, Lcom/boohee/model/chanllenge/ClockOutRankData;->mine:Lcom/boohee/model/chanllenge/ClockOutRank;

    .line 247
    .local v1, "mine":Lcom/boohee/model/chanllenge/ClockOutRank;
    if-eqz v1, :cond_1

    .line 248
    iget v3, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    iget v3, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    if-nez v3, :cond_5

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;

    invoke-interface {v3, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 252
    .end local v1    # "mine":Lcom/boohee/model/chanllenge/ClockOutRank;
    :cond_5
    iget-object v2, v0, Lcom/boohee/model/chanllenge/ClockOutRankData;->ranks:Ljava/util/List;

    .line 253
    .local v2, "ranks":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutRank;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 254
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    iget v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockAdapter:Lcom/boohee/one/ui/adapter/PunchRankAdapter;

    invoke-virtual {v3}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 257
    :cond_6
    iput-boolean v5, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    goto :goto_1
.end method

.method private refreshWalkData(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    iget v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    if-ne v3, v4, :cond_0

    .line 208
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 210
    :cond_0
    const-class v3, Lcom/boohee/model/chanllenge/WalkChallengData;

    invoke-static {p1, v3}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/chanllenge/WalkChallengData;

    .line 211
    .local v2, "walkChallengData":Lcom/boohee/model/chanllenge/WalkChallengData;
    if-nez v2, :cond_2

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    iget-object v3, v2, Lcom/boohee/model/chanllenge/WalkChallengData;->header_info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    iget-object v3, v2, Lcom/boohee/model/chanllenge/WalkChallengData;->header_info:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->updateHeaderText(Ljava/lang/String;)V

    .line 214
    :cond_3
    iget v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    if-ne v3, v4, :cond_5

    .line 215
    iget-object v0, v2, Lcom/boohee/model/chanllenge/WalkChallengData;->mine:Lcom/boohee/model/chanllenge/WalkingRank;

    .line 216
    .local v0, "mine":Lcom/boohee/model/chanllenge/WalkingRank;
    if-eqz v0, :cond_1

    .line 217
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkAdapter:Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

    iget v4, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    invoke-virtual {v3, v4}, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->setMineRank(I)V

    .line 218
    iget v3, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    iget v3, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    if-nez v3, :cond_5

    .line 219
    :cond_4
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkDatas:Ljava/util/List;

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    .end local v0    # "mine":Lcom/boohee/model/chanllenge/WalkingRank;
    :cond_5
    iget-object v1, v2, Lcom/boohee/model/chanllenge/WalkChallengData;->ranks:Ljava/util/List;

    .line 223
    .local v1, "ranks":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/WalkingRank;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 224
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkDatas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I

    .line 229
    :goto_1
    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mWalkAdapter:Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

    invoke-virtual {v3}, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 227
    :cond_6
    iput-boolean v5, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z

    goto :goto_1
.end method

.method public static startMe(Landroid/content/Context;Lcom/boohee/model/chanllenge/BaseChallenge;Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;)V
    .locals 3
    .param p0, "srcContext"    # Landroid/content/Context;
    .param p1, "challenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;
    .param p2, "type"    # Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_CHALLENGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const-string v1, "KEY_TYPE"

    invoke-virtual {p2}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateHeaderText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f0301dc

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->setContentView(I)V

    .line 85
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->init()V

    .line 87
    return-void
.end method
