.class public Lcom/boohee/one/onekey/UserHomeActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "UserHomeActivity.java"


# instance fields
.field btStart:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01db
    .end annotation
.end field

.field ivAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01d8
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/PostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mIMId:Ljava/lang/String;

.field private mPage:I

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d3
    .end annotation
.end field

.field tvStart:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0181
    .end annotation
.end field

.field viewRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/onekey/UserHomeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserHomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/boohee/one/onekey/UserHomeActivity;->requestPostMessage(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/boohee/one/onekey/UserHomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserHomeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mIMId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/onekey/UserHomeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserHomeActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/onekey/UserHomeActivity;)Lcom/boohee/one/onekey/adapter/PostMessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserHomeActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mAdapter:Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

    return-object v0
.end method

.method static synthetic access$408(Lcom/boohee/one/onekey/UserHomeActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserHomeActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mPage:I

    return v0
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->viewRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/onekey/UserHomeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/UserHomeActivity$1;-><init>(Lcom/boohee/one/onekey/UserHomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 107
    new-instance v0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

    iget-object v1, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mAdapter:Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

    .line 108
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->viewRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mAdapter:Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method private requestConsultorsInfo()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->showLoading()V

    .line 113
    const-string v0, "/api/v1/consultors"

    new-instance v1, Lcom/boohee/one/onekey/UserHomeActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/onekey/UserHomeActivity$2;-><init>(Lcom/boohee/one/onekey/UserHomeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method private requestPostMessage(Z)V
    .locals 4
    .param p1, "isLoadMore"    # Z

    .prologue
    const/4 v1, 0x1

    .line 176
    if-nez p1, :cond_0

    .line 177
    iput v1, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mPage:I

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->showLoading()V

    .line 181
    const-string v0, "/api/v1/posts?page=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/onekey/UserHomeActivity$4;

    invoke-direct {v1, p0, p0, p1}, Lcom/boohee/one/onekey/UserHomeActivity$4;-><init>(Lcom/boohee/one/onekey/UserHomeActivity;Landroid/content/Context;Z)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 211
    return-void
.end method

.method private requestSolutions()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->showLoading()V

    .line 141
    const-string v0, "/api/v1/solutions"

    new-instance v1, Lcom/boohee/one/onekey/UserHomeActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/onekey/UserHomeActivity$3;-><init>(Lcom/boohee/one/onekey/UserHomeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01db,
            0x7f0e0181
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 60
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mIMId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->mIMId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/boohee/utils/MeiQiaHelper;->startChatWithSprcifyAgent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_1
    const v0, 0x7f0703ec

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/UserHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/api/v1/solutions"

    invoke-static {p0, v0, v1}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0181 -> :sswitch_1
        0x7f0e01db -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/UserHomeActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f0e01dc

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/UserHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->viewRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 83
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity;->viewRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301cf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->initView()V

    .line 88
    invoke-direct {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->requestConsultorsInfo()V

    .line 89
    invoke-direct {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->requestSolutions()V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/boohee/one/onekey/UserHomeActivity;->requestPostMessage(Z)V

    .line 91
    return-void
.end method
