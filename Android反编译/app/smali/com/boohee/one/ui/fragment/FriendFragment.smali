.class public Lcom/boohee/one/ui/fragment/FriendFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "FriendFragment.java"


# instance fields
.field private isLastVisible:Z

.field private mAdapter:Lcom/boohee/status/FriendsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field

.field private page:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->page:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->isLastVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/FriendFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/FriendFragment;)Lcom/boohee/status/FriendsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mAdapter:Lcom/boohee/status/FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/FriendFragment;Lcom/boohee/status/FriendsAdapter;)Lcom/boohee/status/FriendsAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;
    .param p1, "x1"    # Lcom/boohee/status/FriendsAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mAdapter:Lcom/boohee/status/FriendsAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/FriendFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/FriendFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/FriendFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/FriendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/FriendFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$508(Lcom/boohee/one/ui/fragment/FriendFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/FriendFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->page:I

    return v0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/FriendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mListView:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/FriendFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/FriendFragment$2;-><init>(Lcom/boohee/one/ui/fragment/FriendFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 72
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/FriendFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/FriendFragment$3;-><init>(Lcom/boohee/one/ui/fragment/FriendFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->mPullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/FriendFragment$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/FriendFragment$4;-><init>(Lcom/boohee/one/ui/fragment/FriendFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getFriends()V
    .locals 4

    .prologue
    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->page:I

    .line 93
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->page:I

    new-instance v2, Lcom/boohee/one/ui/fragment/FriendFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/FriendFragment$5;-><init>(Lcom/boohee/one/ui/fragment/FriendFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getFollowings(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 116
    return-void
.end method

.method public getNextFriends()V
    .locals 4

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->isLastVisible:Z

    .line 120
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/fragment/FriendFragment;->page:I

    new-instance v2, Lcom/boohee/one/ui/fragment/FriendFragment$6;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/FriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/FriendFragment$6;-><init>(Lcom/boohee/one/ui/fragment/FriendFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getFollowings(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v0, 0x7f030100

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/FriendFragment;->initListView()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/FriendFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/FriendFragment$1;-><init>(Lcom/boohee/one/ui/fragment/FriendFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
