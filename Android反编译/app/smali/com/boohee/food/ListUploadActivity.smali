.class public Lcom/boohee/food/ListUploadActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ListUploadActivity.java"


# instance fields
.field blvContent:Lcom/boohee/widgets/BooheeListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f3
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/food/adapter/UploadAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/UploadFood;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mTotalPages:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/ListUploadActivity;->mDataList:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/food/ListUploadActivity;->mPage:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/food/ListUploadActivity;->mTotalPages:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/ListUploadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/ListUploadActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/food/ListUploadActivity;->sendRequestUpload()V

    return-void
.end method

.method static synthetic access$102(Lcom/boohee/food/ListUploadActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/ListUploadActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/boohee/food/ListUploadActivity;->mPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/food/ListUploadActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/ListUploadActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/boohee/food/ListUploadActivity;->mTotalPages:I

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/food/ListUploadActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/ListUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/food/ListUploadActivity;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/food/ListUploadActivity;)Lcom/boohee/food/adapter/UploadAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/ListUploadActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/food/ListUploadActivity;->mAdapter:Lcom/boohee/food/adapter/UploadAdapter;

    return-object v0
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/ListUploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/boohee/food/adapter/UploadAdapter;

    iget-object v1, p0, Lcom/boohee/food/ListUploadActivity;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/food/ListUploadActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/food/adapter/UploadAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/boohee/widgets/BooheeListView;)V

    iput-object v0, p0, Lcom/boohee/food/ListUploadActivity;->mAdapter:Lcom/boohee/food/adapter/UploadAdapter;

    .line 49
    iget-object v0, p0, Lcom/boohee/food/ListUploadActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    iget-object v1, p0, Lcom/boohee/food/ListUploadActivity;->mAdapter:Lcom/boohee/food/adapter/UploadAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/BooheeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/boohee/food/ListUploadActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    new-instance v1, Lcom/boohee/food/ListUploadActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/ListUploadActivity$1;-><init>(Lcom/boohee/food/ListUploadActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/BooheeListView;->setOnLoadMoreListener(Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;)V

    .line 56
    return-void
.end method

.method private sendRequestUpload()V
    .locals 3

    .prologue
    .line 62
    iget v1, p0, Lcom/boohee/food/ListUploadActivity;->mPage:I

    add-int/lit8 v0, v1, 0x1

    .line 63
    .local v0, "currentPage":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/boohee/food/ListUploadActivity;->mTotalPages:I

    if-le v0, v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/ListUploadActivity;->showLoading()V

    .line 67
    iget-object v1, p0, Lcom/boohee/food/ListUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/ListUploadActivity$2;

    invoke-direct {v2, p0, p0}, Lcom/boohee/food/ListUploadActivity$2;-><init>(Lcom/boohee/food/ListUploadActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getUploadFoodList(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/boohee/food/ListUploadActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 44
    invoke-direct {p0}, Lcom/boohee/food/ListUploadActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/boohee/food/ListUploadActivity;->sendRequestUpload()V

    .line 46
    return-void
.end method
