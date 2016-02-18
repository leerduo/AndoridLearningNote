.class public Lcom/boohee/one/video/ui/VideoHistoryActivity;
.super Lcom/boohee/main/GestureActivity;
.source "VideoHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;

.field page:I

.field refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private videoHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/VideoHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->page:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->videoHistoryList:Ljava/util/List;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/VideoHistoryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoHistoryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->videoHistoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoHistoryActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/VideoHistoryActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoHistoryActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/video/ui/VideoHistoryActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoHistoryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/video/ui/VideoHistoryActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoHistoryActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/VideoHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v1, "sport_progresses"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/one/video/entity/VideoHistory;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/VideoHistory;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->videoHistoryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->adapter:Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->showLoading()V

    .line 80
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->ctx:Landroid/content/Context;

    iget v1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->page:I

    new-instance v2, Lcom/boohee/one/video/ui/VideoHistoryActivity$3;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/video/ui/VideoHistoryActivity$3;-><init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/api/SportApi;->getVideoHistory(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 94
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/video/ui/VideoHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/VideoHistoryActivity$1;-><init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 67
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/video/ui/VideoHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/VideoHistoryActivity$2;-><init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 74
    new-instance v0, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->videoHistoryList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;-><init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->adapter:Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;

    .line 75
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->adapter:Lcom/boohee/one/video/ui/VideoHistoryActivity$VideoHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03008e

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->initView()V

    .line 55
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->initData()V

    .line 56
    return-void
.end method
