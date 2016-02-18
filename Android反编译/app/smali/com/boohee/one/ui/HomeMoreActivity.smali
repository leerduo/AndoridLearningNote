.class public Lcom/boohee/one/ui/HomeMoreActivity;
.super Lcom/boohee/main/GestureActivity;
.source "HomeMoreActivity.java"


# static fields
.field public static final MORE_URL:Ljava/lang/String; = "more_url"

.field static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

.field private currentPage:I

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private more_url:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/boohee/one/ui/HomeMoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/HomeMoreActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/HomeMoreActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/HomeMoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/HomeMoreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I

    return p1
.end method

.method static synthetic access$108(Lcom/boohee/one/ui/HomeMoreActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/HomeMoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/HomeMoreActivity;->getData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/HomeMoreActivity;)Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->adapter:Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/HomeMoreActivity;Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;)Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/one/ui/HomeMoreActivity;->adapter:Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/HomeMoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/HomeMoreActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method private getData(Ljava/lang/String;)V
    .locals 4
    .param p1, "more_url"    # Ljava/lang/String;

    .prologue
    .line 99
    iget v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I

    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/HomeMoreActivity$4;

    iget-object v3, p0, Lcom/boohee/one/ui/HomeMoreActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/HomeMoreActivity$4;-><init>(Lcom/boohee/one/ui/HomeMoreActivity;Landroid/content/Context;)V

    invoke-static {p1, v0, v1, v2}, Lcom/boohee/api/StatusApi;->getMoreCategory(Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 126
    return-void
.end method


# virtual methods
.method initView()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HomeMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/HomeMoreActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/HomeMoreActivity$1;-><init>(Lcom/boohee/one/ui/HomeMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/HomeMoreActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/HomeMoreActivity$2;-><init>(Lcom/boohee/one/ui/HomeMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/HomeMoreActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/HomeMoreActivity$3;-><init>(Lcom/boohee/one/ui/HomeMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HomeMoreActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/boohee/one/ui/HomeMoreActivity;->initView()V

    .line 50
    invoke-virtual {p0}, Lcom/boohee/one/ui/HomeMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "more_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/boohee/one/ui/HomeMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->title:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/HomeMoreActivity;->getData(Ljava/lang/String;)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/HomeMoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u66f4\u591a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
