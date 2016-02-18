.class public Lcom/boohee/food/RecipeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "RecipeActivity.java"


# static fields
.field public static final KEY_FOOD_CODE:Ljava/lang/String; = "key_food_code"


# instance fields
.field ivRecipe:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f6
    .end annotation
.end field

.field llCondiments:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f7
    .end annotation
.end field

.field llSteps:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f8
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field tvTips:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/RecipeActivity;Lcom/boohee/model/Recipe;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/RecipeActivity;
    .param p1, "x1"    # Lcom/boohee/model/Recipe;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/boohee/food/RecipeActivity;->initView(Lcom/boohee/model/Recipe;)V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "foodCode"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const v1, 0x7f070206

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/RecipeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_food_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initCondiment(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecipeCondiment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "condiments":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecipeCondiment;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 85
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 76
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/RecipeCondiment;

    .line 78
    .local v0, "condiment":Lcom/boohee/model/RecipeCondiment;
    iget-object v4, p0, Lcom/boohee/food/RecipeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030237

    iget-object v6, p0, Lcom/boohee/food/RecipeActivity;->llCondiments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    iget-object v4, p0, Lcom/boohee/food/RecipeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030148

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, "item":Landroid/view/View;
    const v4, 0x7f0e00d3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/boohee/model/RecipeCondiment;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v4, 0x7f0e0432

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/boohee/model/RecipeCondiment;->amount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, p0, Lcom/boohee/food/RecipeActivity;->llCondiments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initSteps(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecipeStep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecipeStep;>;"
    const/16 v9, 0x8

    .line 88
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 115
    :cond_0
    return-void

    .line 92
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 93
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/RecipeStep;

    .line 95
    .local v5, "step":Lcom/boohee/model/RecipeStep;
    iget-object v6, p0, Lcom/boohee/food/RecipeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030237

    iget-object v8, p0, Lcom/boohee/food/RecipeActivity;->llSteps:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    iget-object v6, p0, Lcom/boohee/food/RecipeActivity;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030149

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "item":Landroid/view/View;
    const v6, 0x7f0e0433

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, v5, Lcom/boohee/model/RecipeStep;->position:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v6, 0x7f0e0399

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v5, Lcom/boohee/model/RecipeStep;->desc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v6, 0x7f0e0434

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 102
    .local v2, "ivShow":Landroid/widget/ImageView;
    iget-object v6, v5, Lcom/boohee/model/RecipeStep;->image_url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :goto_1
    iget-object v6, p0, Lcom/boohee/food/RecipeActivity;->llSteps:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    const-string v3, "http://i1.douguo.net/img/200_cookdefault.jpg"

    .line 106
    .local v3, "nullImageUrl":Ljava/lang/String;
    iget-object v6, v5, Lcom/boohee/model/RecipeStep;->image_url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/boohee/model/RecipeStep;->image_url:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    :cond_3
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 109
    :cond_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v5, Lcom/boohee/model/RecipeStep;->image_url:Ljava/lang/String;

    const v8, 0x7f0d012e

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1
.end method

.method private initView(Lcom/boohee/model/Recipe;)V
    .locals 4
    .param p1, "recipe"    # Lcom/boohee/model/Recipe;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/boohee/food/RecipeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p1, Lcom/boohee/model/Recipe;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/boohee/model/Recipe;->image_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/food/RecipeActivity;->ivRecipe:Landroid/widget/ImageView;

    const v3, 0x7f0d012e

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 63
    iget-object v0, p1, Lcom/boohee/model/Recipe;->tips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/boohee/food/RecipeActivity;->tvTips:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/boohee/model/Recipe;->tips:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/boohee/model/Recipe;->condiments:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/food/RecipeActivity;->initCondiment(Ljava/util/List;)V

    .line 68
    iget-object v0, p1, Lcom/boohee/model/Recipe;->steps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/food/RecipeActivity;->initSteps(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/boohee/food/RecipeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_food_code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "foodCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const v1, 0x7f070206

    invoke-virtual {p0, v1}, Lcom/boohee/food/RecipeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/boohee/food/RecipeActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/RecipeActivity;->showLoading()V

    .line 125
    iget-object v1, p0, Lcom/boohee/food/RecipeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/RecipeActivity$1;

    iget-object v3, p0, Lcom/boohee/food/RecipeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/RecipeActivity$1;-><init>(Lcom/boohee/food/RecipeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getFoodsRecipe(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/boohee/food/RecipeActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/RecipeActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    invoke-direct {p0}, Lcom/boohee/food/RecipeActivity;->requestData()V

    .line 57
    return-void
.end method
