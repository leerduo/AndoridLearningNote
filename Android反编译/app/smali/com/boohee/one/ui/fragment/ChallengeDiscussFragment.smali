.class public Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "ChallengeDiscussFragment.java"


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;

.field private challengId:I

.field listView:Landroid/widget/ListView;

.field private listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

.field private postList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private previousId:I

.field refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->challengId:I

    .line 53
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->initLoadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->handlerData(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->challengId:I

    return v0
.end method

.method private handlerData(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "isRefresh"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-eqz p2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 159
    :cond_2
    const-string v2, "posts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "string":Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/model/status/Post;->removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, "removeDisablePost":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    if-eqz v0, :cond_3

    .line 162
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 165
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/status/Post;

    iget v2, v2, Lcom/boohee/model/status/Post;->id:I

    iput v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->previousId:I

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->adapter:Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;

    invoke-virtual {v2}, Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initLoadData()V
    .locals 5

    .prologue
    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->previousId:I

    .line 127
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->challengId:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->previousId:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/ChallengeApi;->getChallengePosts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 146
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->listView:Landroid/widget/ListView;

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 98
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 105
    new-instance v0, Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->postList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->adapter:Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;

    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->adapter:Lcom/boohee/one/ui/adapter/ChallengeDiscussAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    return-void
.end method

.method private loadMoreData()V
    .locals 5

    .prologue
    .line 110
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->challengId:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->previousId:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/ChallengeApi;->getChallengePosts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 123
    return-void
.end method

.method public static newInstance(I)Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;
    .locals 3
    .param p0, "challengId"    # I

    .prologue
    .line 63
    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;-><init>()V

    .line 64
    .local v1, "fragment":Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "challenge_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$5;-><init>(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 172
    const-string v0, "\u8ba8\u8bba"

    return-object v0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    const v1, 0x7f0300d4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 75
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onDestroyView()V

    .line 234
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "post_success"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->initLoadData()V

    .line 229
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onResume()V

    .line 191
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "challenge_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->challengId:I

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->initView()V

    .line 86
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public refreshBaseView()V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 196
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 200
    .local v0, "activity":Lcom/boohee/one/ui/BaseChallengeActivity;
    const-string v1, "\u53d1\u52a8\u6001"

    const v2, 0x7f0201ea

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextWithDrawable(Ljava/lang/CharSequence;I)V

    .line 201
    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment$6;-><init>(Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;Lcom/boohee/one/ui/BaseChallengeActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
