.class public Lcom/boohee/one/ui/AppRecommendActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AppRecommendActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/AppRecommend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/boohee/one/ui/AppRecommendActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/AppRecommendActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/AppRecommendActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/AppRecommendActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/one/ui/AppRecommendActivity;->initAppRecommendView()V

    return-void
.end method

.method private getAppRecommends()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/boohee/one/ui/AppRecommendActivity;->showLoading()V

    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/AppRecommendActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/AppRecommendActivity$1;

    iget-object v2, p0, Lcom/boohee/one/ui/AppRecommendActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/AppRecommendActivity$1;-><init>(Lcom/boohee/one/ui/AppRecommendActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getAndroidRecommends(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 62
    return-void
.end method

.method private initAppRecommendView()V
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/boohee/one/ui/AppRecommendActivity;->apps:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/AppRecommendListAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/AppRecommendActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/one/ui/AppRecommendActivity;->apps:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/boohee/one/ui/AppRecommendListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 68
    .local v0, "adapter":Lcom/boohee/one/ui/AppRecommendListAdapter;
    const v2, 0x7f0e0150

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AppRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 69
    .local v1, "list":Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v2, Lcom/boohee/one/ui/AppRecommendActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/ui/AppRecommendActivity$2;-><init>(Lcom/boohee/one/ui/AppRecommendActivity;Lcom/boohee/one/ui/AppRecommendListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AppRecommendActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AppRecommendActivity;->setTitle(I)V

    .line 38
    invoke-direct {p0}, Lcom/boohee/one/ui/AppRecommendActivity;->getAppRecommends()V

    .line 39
    return-void
.end method
