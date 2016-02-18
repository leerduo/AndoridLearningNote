.class public Lcom/boohee/one/ui/fragment/ChallengerFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "ChallengerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;
    }
.end annotation


# instance fields
.field private challengerId:I

.field private chanllengerAdapter:Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;

.field private headerTv:Landroid/widget/TextView;

.field listView:Landroid/widget/ListView;

.field private listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

.field private memberCount:I

.field private page:I

.field private perPage:I

.field refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->userList:Ljava/util/List;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->page:I

    .line 61
    const/16 v0, 0x14

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->perPage:I

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ChallengerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengerFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->initLoadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ChallengerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengerFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ChallengerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengerFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->userList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/ChallengerFragment;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengerFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->handlerData(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private handlerData(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "isRefresh"    # Z

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-eqz p1, :cond_4

    .line 169
    const-string v1, "members_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->memberCount:I

    .line 170
    const-string v1, "members"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "members":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 172
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 174
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->userList:Ljava/util/List;

    invoke-static {v0}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->chanllengerAdapter:Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;->notifyDataSetChanged()V

    .line 180
    .end local v0    # "members":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->headerTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6709"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->memberCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u62a5\u540d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initLoadData()V
    .locals 6

    .prologue
    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->page:I

    .line 144
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->challengerId:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->page:I

    iget v2, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->perPage:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/ChallengerFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/fragment/ChallengerFragment$5;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/ChallengeApi;->getChallengeMembers(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 157
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->listView:Landroid/widget/ListView;

    .line 97
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e038d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->headerTv:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/ChallengerFragment$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 108
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/ChallengerFragment$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 115
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/fragment/ChallengerFragment$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    return-void
.end method

.method private loadMoreData()V
    .locals 6

    .prologue
    .line 132
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->page:I

    .line 133
    iget v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->challengerId:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->page:I

    iget v2, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->perPage:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/ChallengerFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/fragment/ChallengerFragment$4;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/ChallengeApi;->getChallengeMembers(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 140
    return-void
.end method

.method public static newInstance(I)Lcom/boohee/one/ui/fragment/ChallengerFragment;
    .locals 3
    .param p0, "challengId"    # I

    .prologue
    .line 69
    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengerFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/ChallengerFragment;-><init>()V

    .line 70
    .local v1, "challengerFragment":Lcom/boohee/one/ui/fragment/ChallengerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "challenge_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengerFragment$6;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment$6;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 190
    const-string v0, "\u6311\u6218\u8005"

    return-object v0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->listViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    return-void
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
    .line 79
    const v1, 0x7f0300d5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 81
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onDestroyView()V

    .line 214
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "challenge_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->challengerId:I

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->initView()V

    .line 91
    new-instance v0, Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->userList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;-><init>(Lcom/boohee/one/ui/fragment/ChallengerFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->chanllengerAdapter:Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengerFragment;->chanllengerAdapter:Lcom/boohee/one/ui/fragment/ChallengerFragment$ChanllengerAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    return-void
.end method
