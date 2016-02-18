.class public Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "PunchTimelineFragment.java"


# instance fields
.field private hasMore:Z

.field listView:Landroid/widget/ListView;

.field private mAddPunchFragment:Lcom/boohee/one/ui/fragment/AddPunchFragment;

.field private mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field private mClockOutPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutPost;",
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

.field private mPunchTimelineAdapter:Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    .line 56
    iput v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    .line 57
    iput v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mCurrentPage:I

    .line 58
    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->hasMore:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->loadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->joinChanllenge()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)Lcom/boohee/model/chanllenge/BaseChallenge;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->addPunch()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)Lcom/boohee/one/ui/fragment/AddPunchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mAddPunchFragment:Lcom/boohee/one/ui/fragment/AddPunchFragment;

    return-object v0
.end method

.method static synthetic access$802(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;Lcom/boohee/one/ui/fragment/AddPunchFragment;)Lcom/boohee/one/ui/fragment/AddPunchFragment;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    .param p1, "x1"    # Lcom/boohee/one/ui/fragment/AddPunchFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mAddPunchFragment:Lcom/boohee/one/ui/fragment/AddPunchFragment;

    return-object p1
.end method

.method private addPunch()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 254
    .local v0, "activity":Lcom/boohee/one/ui/BaseChallengeActivity;
    const-string v1, "\u6211\u8981\u6253\u5361"

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextView(Ljava/lang/CharSequence;)V

    .line 255
    new-instance v1, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$7;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$7;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method private joinChanllenge()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-gez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$6;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$6;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ChallengeApi;->joinChallenge(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private loadData()V
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->hasMore:Z

    if-nez v0, :cond_2

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$3;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/ChallengeApi;->getClockOuts(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    .locals 1
    .param p0, "baseChallenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 61
    new-instance v0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;-><init>()V

    .line 62
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/PunchTimelineFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 63
    return-object v0
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 136
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/chanllenge/ClockOutPost;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutPost;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 138
    iget v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->resetIsEnvious(Lorg/json/JSONObject;)V

    .line 143
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPunchTimelineAdapter:Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;->notifyDataSetChanged()V

    .line 144
    iget v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPage:I

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->hasMore:Z

    goto :goto_0
.end method

.method private resetIsEnvious(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 156
    const-string v2, "my_envious_ids"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "enviousList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 158
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/chanllenge/ClockOutPost;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/chanllenge/ClockOutPost;

    iget v3, v3, Lcom/boohee/model/chanllenge/ClockOutPost;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/boohee/model/chanllenge/ClockOutPost;->isEnvious:Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "j":I
    :cond_0
    return-void
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$4;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 167
    const-string v0, "\u52a8\u6001"

    return-object v0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->listView:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mClockOutPosts:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v3, v3, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPunchTimelineAdapter:Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;

    .line 87
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPunchTimelineAdapter:Lcom/boohee/one/ui/adapter/PunchTimelineAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$1;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$2;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->firstLoad()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mAddPunchFragment:Lcom/boohee/one/ui/fragment/AddPunchFragment;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mAddPunchFragment:Lcom/boohee/one/ui/fragment/AddPunchFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/AddPunchFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const v0, 0x7f0300ef

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
    .line 77
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public refreshBaseView()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 189
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 193
    .local v0, "activity":Lcom/boohee/one/ui/BaseChallengeActivity;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->mBaseChallenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-nez v1, :cond_2

    .line 194
    const-string v1, "\u6211\u8981\u53c2\u52a0"

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextView(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v1, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment$5;-><init>(Lcom/boohee/one/ui/fragment/PunchTimelineFragment;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->addPunch()V

    goto :goto_0
.end method
