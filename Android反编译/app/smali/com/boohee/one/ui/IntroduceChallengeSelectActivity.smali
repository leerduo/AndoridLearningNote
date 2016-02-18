.class public Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "IntroduceChallengeSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;
    }
.end annotation


# instance fields
.field private headerText:Landroid/widget/TextView;

.field private mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

.field private mContext:Landroid/content/Context;

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
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mDatas:Ljava/util/List;

    .line 45
    iput v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    iput v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->totalPage:I

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    return p1
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->totalPage:I

    return p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Lcom/boohee/one/ui/adapter/ChallengeListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->headerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mIsLoadingData:Z

    return p1
.end method

.method private addHeaderView(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 156
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030121

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->headerText:Landroid/widget/TextView;

    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 73
    iput-object p0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mContext:Landroid/content/Context;

    .line 74
    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 75
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 76
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$2;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 83
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$3;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 89
    new-instance v1, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    new-instance v1, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mDatas:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    .line 91
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-direct {p0, v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->addHeaderView(Landroid/widget/ListView;)V

    .line 93
    const v1, 0x7f0e0172

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$4;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$4;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method public static startMe(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getUserGuideChallenges(Z)V
    .locals 3
    .param p1, "isLoadMore"    # Z

    .prologue
    .line 126
    iget v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    const/16 v1, 0x14

    new-instance v2, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;

    invoke-direct {v2, p0, p0, p1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;Landroid/content/Context;Z)V

    invoke-static {v0, v1, p0, v2}, Lcom/boohee/api/ChallengeApi;->getUserGuideChallenges(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 152
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->init()V

    .line 60
    invoke-direct {p0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->loadData()V

    .line 61
    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-boolean v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mIsLoadingData:Z

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iput-boolean v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mIsLoadingData:Z

    .line 105
    iput v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->getUserGuideChallenges(Z)V

    goto :goto_0
.end method

.method public pullToloadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-boolean v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mIsLoadingData:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    iget v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->totalPage:I

    if-lt v0, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iput-boolean v2, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mIsLoadingData:Z

    .line 113
    iget v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->getUserGuideChallenges(Z)V

    goto :goto_0
.end method
