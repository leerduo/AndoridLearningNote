.class public Lcom/boohee/food/IngredientInfoActivity;
.super Lcom/boohee/main/GestureActivity;
.source "IngredientInfoActivity.java"


# static fields
.field private static final KEY_INGREDIENT_INFO:Ljava/lang/String; = "key_ingredient_info"


# instance fields
.field lvMain:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e013e
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/IngredientInfoActivity;->mDataList:Ljava/util/List;

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    const v1, 0x7f070206

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/IngredientInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_ingredient_info"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/boohee/food/IngredientInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_ingredient_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "tmpDataStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/boohee/food/IngredientInfoActivity;->mDataList:Ljava/util/List;

    const-class v2, Lcom/boohee/model/IngredientInfo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v1, p0, Lcom/boohee/food/IngredientInfoActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    invoke-virtual {v1}, Lcom/boohee/food/IngredientInfoAdapter;->notifyDataSetChanged()V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v1, "Parameter error!"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Lcom/boohee/food/IngredientInfoActivity;->finish()V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/boohee/food/IngredientInfoAdapter;

    iget-object v1, p0, Lcom/boohee/food/IngredientInfoActivity;->mDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/food/IngredientInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/IngredientInfoActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    .line 50
    iget-object v0, p0, Lcom/boohee/food/IngredientInfoActivity;->lvMain:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/IngredientInfoActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/boohee/food/IngredientInfoActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 44
    invoke-direct {p0}, Lcom/boohee/food/IngredientInfoActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/boohee/food/IngredientInfoActivity;->initData()V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/boohee/food/IngredientInfoActivity;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/boohee/food/IngredientInfoActivity;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    :cond_0
    return-void
.end method
