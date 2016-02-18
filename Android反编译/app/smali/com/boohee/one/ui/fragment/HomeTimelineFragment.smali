.class public Lcom/boohee/one/ui/fragment/HomeTimelineFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "HomeTimelineFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private fab_button:Landroid/support/design/widget/FloatingActionButton;

.field private isLastVisible:Z

.field private mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

.field private mDefaultUserKey:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsScrollUp:Z

.field private mListView:Landroid/widget/ListView;

.field private mPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mScrollY:I

.field private mUser:Lcom/boohee/model/status/StatusUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->isLastVisible:Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getCurrentStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getPreviousStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->initTimeline(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/HomeTimelineFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    return-object v0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->fab_button:Landroid/support/design/widget/FloatingActionButton;

    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->fab_button:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private getCurrentStatus()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$4;-><init>(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getHomeTimeline(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getListViewScrollY()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "topChild":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private getPreviousStatus()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->isLastVisible:Z

    .line 204
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    iget v0, v1, Lcom/boohee/model/status/Post;->id:I

    .line 206
    .local v0, "previous_id":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$5;-><init>(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/boohee/api/OneApi;->getPreviousHomeTimeline(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private initListView()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 94
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mListView:Landroid/widget/ListView;

    .line 95
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03024b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "headerView":Landroid/view/View;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 97
    const v1, 0x7f0e06fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0e06fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 100
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$1;-><init>(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 107
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$2;-><init>(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 114
    return-void
.end method

.method private initTimeline(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "timelineObject"    # Lorg/json/JSONObject;

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v0, "posts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const-string v0, "posts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/model/status/Post;->removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPosts:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    .line 189
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private scrollUp(Z)V
    .locals 3
    .param p1, "isScrollUp"    # Z

    .prologue
    const/4 v2, 0x2

    .line 269
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mIsScrollUp:Z

    if-ne v0, p1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->fab_button:Landroid/support/design/widget/FloatingActionButton;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->fab_button:Landroid/support/design/widget/FloatingActionButton;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 273
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 275
    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public loadFirst()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v0}, Lcom/boohee/utils/ListViewUtils;->smoothScrollListViewToTop(Landroid/widget/ListView;)V

    .line 144
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment$3;-><init>(Lcom/boohee/one/ui/fragment/HomeTimelineFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 285
    :sswitch_0
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 288
    :sswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/status/MyTimelineActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 291
    :sswitch_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00e2 -> :sswitch_0
        0x7f0e06fd -> :sswitch_1
        0x7f0e06fe -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const v0, 0x7f0300e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onResume()V

    .line 120
    sget-object v0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mDefaultUserKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mDefaultUserKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->loadFirst()V

    .line 124
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mDefaultUserKey:Ljava/lang/String;

    .line 126
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getListViewScrollY()I

    move-result v0

    .line 240
    .local v0, "newScrollY":I
    if-nez p2, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 244
    :cond_0
    iget v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mScrollY:I

    if-ne v0, v1, :cond_1

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_1
    iget v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mScrollY:I

    if-le v0, v1, :cond_3

    .line 250
    invoke-direct {p0, v3}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->scrollUp(Z)V

    .line 251
    iput-boolean v3, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mIsScrollUp:Z

    .line 257
    :cond_2
    :goto_1
    iput v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mScrollY:I

    goto :goto_0

    .line 252
    :cond_3
    iget v1, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mScrollY:I

    if-ge v0, v1, :cond_2

    .line 254
    invoke-direct {p0, v2}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->scrollUp(Z)V

    .line 255
    iput-boolean v2, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mIsScrollUp:Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 235
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->findViews()V

    .line 79
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->initListView()V

    .line 80
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mDefaultUserKey:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "home_timeline"

    invoke-virtual {v0, v1}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "home_timeline"

    invoke-virtual {v0, v1}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->initTimeline(Lorg/json/JSONObject;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/HomeTimelineFragment;->loadFirst()V

    .line 85
    return-void
.end method
