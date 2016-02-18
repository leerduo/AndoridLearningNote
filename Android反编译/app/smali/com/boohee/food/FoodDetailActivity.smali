.class public Lcom/boohee/food/FoodDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "FoodDetailActivity.java"


# static fields
.field public static final KEY_FOOD_CODE:Ljava/lang/String; = "key_food_code"

.field public static final KEY_IS_RECORD:Ljava/lang/String; = "key_is_record"

.field public static final MIN_UNIT_SIZE:I = 0x2


# instance fields
.field cbUnits:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e013d
    .end annotation
.end field

.field private isRecord:Z

.field ivCompare:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0137
    .end annotation
.end field

.field ivFoodIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0128
    .end annotation
.end field

.field ivHealthLight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0130
    .end annotation
.end field

.field llCompare:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0133
    .end annotation
.end field

.field llCompareContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0135
    .end annotation
.end field

.field llRecipe:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0132
    .end annotation
.end field

.field llRecord:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0143
    .end annotation
.end field

.field llUnits:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e013a
    .end annotation
.end field

.field llUnitsCheckbox:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e013c
    .end annotation
.end field

.field llUnitsItem:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e013b
    .end annotation
.end field

.field llUploader:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0141
    .end annotation
.end field

.field lvMain:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e013e
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

.field private mCode:Ljava/lang/String;

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

.field private mFoodInfo:Lcom/boohee/model/FoodInfo;

.field private mMenu:Landroid/view/Menu;

.field rbCalory:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e012e
    .end annotation
.end field

.field rbKjoule:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e012f
    .end annotation
.end field

.field rgUnit:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e012d
    .end annotation
.end field

.field private showList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;"
        }
    .end annotation
.end field

.field tvAppraise:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0131
    .end annotation
.end field

.field tvCalory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d6
    .end annotation
.end field

.field tvCompareInfo:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0139
    .end annotation
.end field

.field tvCompateAmount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0138
    .end annotation
.end field

.field tvFoodName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0129
    .end annotation
.end field

.field tvUploader:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0142
    .end annotation
.end field

.field tvWeight:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e012b
    .end annotation
.end field

.field vBottom:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0140
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->showList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/FoodDetailActivity;)Lcom/boohee/model/FoodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/food/FoodDetailActivity;Lcom/boohee/model/FoodInfo;)Lcom/boohee/model/FoodInfo;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;
    .param p1, "x1"    # Lcom/boohee/model/FoodInfo;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->changeUnitInDataList()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->initData()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/food/FoodDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/food/FoodDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/boohee/food/FoodDetailActivity;->isFavorite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->checkGuide()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->showHighLight()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/food/FoodDetailActivity;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodDetailActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method private addFavorite(Ljava/lang/String;Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->showLoading()V

    .line 450
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 451
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/FoodDetailActivity$9;

    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2, p2}, Lcom/boohee/food/FoodDetailActivity$9;-><init>(Lcom/boohee/food/FoodDetailActivity;Landroid/content/Context;Landroid/view/MenuItem;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->addFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 469
    return-void
.end method

.method private changeUnitInDataList()V
    .locals 7

    .prologue
    const v6, 0x7f0705dd

    const v5, 0x7f0705d9

    const/4 v4, 0x1

    .line 473
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/IngredientInfo;

    .line 474
    .local v1, "info":Lcom/boohee/model/IngredientInfo;
    invoke-static {}, Lcom/boohee/utils/FoodUtils;->isShowCaloryUnit()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v6}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    invoke-virtual {p0, v5}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    .line 476
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v2, v2, Lcom/boohee/model/FoodInfo;->calory:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/boohee/utils/FoodUtils;->showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/IngredientInfo;->value:Ljava/lang/String;

    .line 485
    .end local v1    # "info":Lcom/boohee/model/IngredientInfo;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    invoke-virtual {v2}, Lcom/boohee/food/IngredientInfoAdapter;->notifyDataSetChanged()V

    .line 486
    return-void

    .line 479
    .restart local v1    # "info":Lcom/boohee/model/IngredientInfo;
    :cond_2
    invoke-static {}, Lcom/boohee/utils/FoodUtils;->isShowCaloryUnit()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {p0, v6}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v2, v2, Lcom/boohee/model/FoodInfo;->calory:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/boohee/utils/FoodUtils;->showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/IngredientInfo;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private changeUnits()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 301
    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->llUnitsItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 302
    .local v0, "childCount":I
    const/4 v4, 0x2

    if-gt v0, v4, :cond_1

    .line 303
    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->llUnitsCheckbox:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    :cond_0
    return-void

    .line 307
    :cond_1
    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->cbUnits:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 308
    .local v2, "isShow":Z
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 309
    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->llUnitsItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 310
    .local v3, "item":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 311
    if-eqz v2, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    .line 311
    goto :goto_1
.end method

.method private checkGuide()V
    .locals 4

    .prologue
    .line 352
    invoke-static {}, Lcom/boohee/database/OnePreference;->isEstimateFoodGuide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/FoodDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/food/FoodDetailActivity$4;-><init>(Lcom/boohee/food/FoodDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    :cond_0
    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "foodCode"    # Ljava/lang/String;
    .param p2, "isRecord"    # Z

    .prologue
    .line 522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const v1, 0x7f070206

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 530
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_food_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v1, "key_is_record"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteFavorite(Ljava/lang/String;Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->showLoading()V

    .line 422
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 423
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/FoodDetailActivity$8;

    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2, p2}, Lcom/boohee/food/FoodDetailActivity$8;-><init>(Lcom/boohee/food/FoodDetailActivity;Landroid/content/Context;Landroid/view/MenuItem;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->deleteFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 441
    return-void
.end method

.method private initCalory()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v4, v4, Lcom/boohee/model/FoodInfo;->compare:Lcom/boohee/model/FoodCompare;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v4, v4, Lcom/boohee/model/FoodInfo;->compare:Lcom/boohee/model/FoodCompare;

    iget-object v4, v4, Lcom/boohee/model/FoodCompare;->target_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 238
    .local v0, "compare":Z
    :goto_0
    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v4, v4, Lcom/boohee/model/FoodInfo;->units:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v4, v4, Lcom/boohee/model/FoodInfo;->units:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    move v1, v3

    .line 239
    .local v1, "units":Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 240
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->llCompare:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    :goto_2
    return-void

    .end local v0    # "compare":Z
    .end local v1    # "units":Z
    :cond_2
    move v0, v2

    .line 237
    goto :goto_0

    .restart local v0    # "compare":Z
    :cond_3
    move v1, v2

    .line 238
    goto :goto_1

    .line 243
    .restart local v1    # "units":Z
    :cond_4
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->initCompare()V

    .line 244
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->initUnits()V

    goto :goto_2
.end method

.method private initCompare()V
    .locals 6

    .prologue
    .line 248
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v1, v2, Lcom/boohee/model/FoodInfo;->compare:Lcom/boohee/model/FoodCompare;

    .line 249
    .local v1, "compare":Lcom/boohee/model/FoodCompare;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/boohee/model/FoodCompare;->target_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/model/FoodCompare;->target_image_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/food/FoodDetailActivity;->ivCompare:Landroid/widget/ImageView;

    const v5, 0x7f020431

    invoke-static {v5}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 251
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->tvCompateAmount:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/boohee/model/FoodCompare;->amount1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, v1, Lcom/boohee/model/FoodCompare;->amount0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v2, v1, Lcom/boohee/model/FoodCompare;->unit0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v2, v2, Lcom/boohee/model/FoodInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v2, " \u2248 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v2, v1, Lcom/boohee/model/FoodCompare;->amount1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v2, v1, Lcom/boohee/model/FoodCompare;->unit1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v2, v1, Lcom/boohee/model/FoodCompare;->target_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->tvCompareInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->llCompareContent:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initData()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/boohee/food/FoodDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v5, Lcom/boohee/model/FoodInfo;->thumb_image_url:Ljava/lang/String;

    iget-object v6, p0, Lcom/boohee/food/FoodDetailActivity;->ivFoodIcon:Landroid/widget/ImageView;

    const v7, 0x7f020431

    invoke-static {v7}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 199
    invoke-static {}, Lcom/boohee/database/OnePreference;->isShowCaloryUnit()Z

    move-result v0

    .line 200
    .local v0, "isShowCalory":Z
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->rbCalory:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->rbKjoule:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->rgUnit:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/boohee/food/FoodDetailActivity$2;

    invoke-direct {v5, p0}, Lcom/boohee/food/FoodDetailActivity$2;-><init>(Lcom/boohee/food/FoodDetailActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 212
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->tvFoodName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v5, Lcom/boohee/model/FoodInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->tvCalory:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v5, Lcom/boohee/model/FoodInfo;->calory:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/boohee/utils/FoodUtils;->showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->tvWeight:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v5, Lcom/boohee/model/FoodInfo;->weight:Ljava/lang/String;

    iget-object v6, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-boolean v6, v6, Lcom/boohee/model/FoodInfo;->is_liquid:Z

    invoke-static {v5, v6, v2}, Lcom/boohee/utils/FoodUtils;->changeUnitAndWeight(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget v1, v1, Lcom/boohee/model/FoodInfo;->health_light:I

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->ivHealthLight:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Lcom/boohee/utils/FoodUtils;->switchToLightWithText(ILandroid/widget/ImageView;)V

    .line 217
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->appraise:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->tvAppraise:Landroid/widget/TextView;

    const v5, 0x7f0701c6

    invoke-virtual {p0, v5}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->llRecipe:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-boolean v1, v1, Lcom/boohee/model/FoodInfo;->recipe:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->initCalory()V

    .line 226
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->initIngredient()V

    .line 228
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->uploader:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->llUploader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 201
    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->tvAppraise:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v5, Lcom/boohee/model/FoodInfo;->appraise:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v1, v4

    .line 223
    goto :goto_2

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->llUploader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->tvUploader:Landroid/widget/TextView;

    const v4, 0x7f0701d3

    invoke-virtual {p0, v4}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v5, Lcom/boohee/model/FoodInfo;->uploader:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private initIngredient()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->ingredient:Lcom/boohee/model/FoodIngredient;

    invoke-static {v0, v1}, Lcom/boohee/utils/FoodUtils;->initIngredient(Ljava/util/List;Lcom/boohee/model/FoodIngredient;)V

    .line 318
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->lights:Lcom/boohee/model/FoodLights;

    invoke-static {v0, v1}, Lcom/boohee/utils/FoodUtils;->setIngredientInfo(Ljava/util/List;Lcom/boohee/model/FoodLights;)V

    .line 319
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/boohee/utils/FoodUtils;->sortIngredientInfo(Ljava/util/List;)V

    .line 320
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->showList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/boohee/utils/FoodUtils;->filterIngredientInfo(Ljava/util/List;Ljava/util/List;)V

    .line 321
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/IngredientInfoAdapter;->notifyDataSetChanged()V

    .line 322
    return-void
.end method

.method private initUnits()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v8, 0x8

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 267
    iget-object v6, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v5, v6, Lcom/boohee/model/FoodInfo;->units:Ljava/util/List;

    .line 268
    .local v5, "units":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/FoodInfoUnit;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 269
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 270
    .local v3, "size":I
    iget-object v9, p0, Lcom/boohee/food/FoodDetailActivity;->llUnitsCheckbox:Landroid/widget/LinearLayout;

    if-le v3, v13, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 273
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 274
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/FoodInfoUnit;

    .line 275
    .local v4, "unit":Lcom/boohee/model/FoodInfoUnit;
    const v6, 0x7f030130

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "item":Landroid/view/View;
    const v6, 0x7f0e00c2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0701cd

    invoke-virtual {p0, v9}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, v4, Lcom/boohee/model/FoodInfoUnit;->unit:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/boohee/food/FoodDetailActivity;->stringToInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const v6, 0x7f0e012b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0701ce

    invoke-virtual {p0, v9}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, v4, Lcom/boohee/model/FoodInfoUnit;->weight:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/boohee/food/FoodDetailActivity;->stringToInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const v6, 0x7f0e00d6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f0701ca

    invoke-virtual {p0, v9}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, v4, Lcom/boohee/model/FoodInfoUnit;->calory:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/boohee/food/FoodDetailActivity;->stringToInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    if-lt v0, v13, :cond_0

    .line 280
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v6, p0, Lcom/boohee/food/FoodDetailActivity;->llUnitsItem:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "item":Landroid/view/View;
    .end local v4    # "unit":Lcom/boohee/model/FoodInfoUnit;
    :cond_1
    move v6, v8

    .line 270
    goto/16 :goto_0

    .line 285
    .end local v3    # "size":I
    :cond_2
    iget-object v6, p0, Lcom/boohee/food/FoodDetailActivity;->llUnits:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->lvMain:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 179
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->lvMain:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/food/FoodDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/FoodDetailActivity$1;-><init>(Lcom/boohee/food/FoodDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    new-instance v0, Lcom/boohee/food/IngredientInfoAdapter;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->showList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/food/IngredientInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    .line 187
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->lvMain:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->mAdapter:Lcom/boohee/food/IngredientInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-boolean v0, p0, Lcom/boohee/food/FoodDetailActivity;->isRecord:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->llRecord:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->vBottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private isFavorite(Ljava/lang/String;)V
    .locals 3
    .param p1, "mCode"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->showLoading()V

    .line 388
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/FoodDetailActivity$7;

    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/food/FoodDetailActivity$7;-><init>(Lcom/boohee/food/FoodDetailActivity;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->isFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 413
    return-void
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->finish()V

    .line 349
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->showLoading()V

    .line 330
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/FoodDetailActivity$3;

    iget-object v3, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/FoodDetailActivity$3;-><init>(Lcom/boohee/food/FoodDetailActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getFoodDetail(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private showHighLight()V
    .locals 5

    .prologue
    .line 363
    new-instance v1, Lcom/boohee/myview/highlight/HighLight;

    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/myview/highlight/HighLight;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0134

    const v3, 0x7f03023a

    new-instance v4, Lcom/boohee/food/FoodDetailActivity$5;

    invoke-direct {v4, p0}, Lcom/boohee/food/FoodDetailActivity$5;-><init>(Lcom/boohee/food/FoodDetailActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    move-result-object v0

    .line 372
    .local v0, "highLight":Lcom/boohee/myview/highlight/HighLight;
    invoke-virtual {v0}, Lcom/boohee/myview/highlight/HighLight;->show()V

    .line 373
    new-instance v1, Lcom/boohee/food/FoodDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/boohee/food/FoodDetailActivity$6;-><init>(Lcom/boohee/food/FoodDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/highlight/HighLight;->setOnHighLightClickListener(Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;)V

    .line 379
    return-void
.end method

.method private stringToInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const-string v0, ""

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :cond_1
    move-object v0, p1

    .line 294
    .local v0, "result":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation build Lbutterknife/OnCheckedChanged;
        value = {
            0x7f0e013d
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity;->cbUnits:Landroid/widget/CheckBox;

    if-eqz p2, :cond_0

    const v0, 0x7f0701cc

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 162
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->changeUnits()V

    .line 163
    return-void

    .line 161
    :cond_0
    const v0, 0x7f0701cb

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0128,
            0x7f0e0130,
            0x7f0e013f,
            0x7f0e0132,
            0x7f0e0134,
            0x7f0e0143
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v2, v2, Lcom/boohee/model/FoodInfo;->large_image_url:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/boohee/status/LargeImageActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :sswitch_1
    invoke-static {p0}, Lcom/boohee/food/LightIntroduceActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :sswitch_2
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/boohee/food/IngredientInfoActivity;->comeOnBaby(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 139
    :sswitch_3
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;

    iget-object v2, v2, Lcom/boohee/model/FoodInfo;->code:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/boohee/food/RecipeActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :sswitch_4
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2}, Lcom/boohee/more/EstimateFoodActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 149
    :sswitch_5
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/SearchAddDietFragment;

    move-result-object v0

    .line 150
    .local v0, "addDietFragment":Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 151
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "searchAddDietFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 152
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0128 -> :sswitch_0
        0x7f0e0130 -> :sswitch_1
        0x7f0e0132 -> :sswitch_3
        0x7f0e0134 -> :sswitch_4
        0x7f0e013f -> :sswitch_2
        0x7f0e0143 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/boohee/food/FoodDetailActivity;->setContentView(I)V

    .line 169
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 170
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_food_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/food/FoodDetailActivity;->isRecord:Z

    .line 173
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->initView()V

    .line 174
    invoke-direct {p0}, Lcom/boohee/food/FoodDetailActivity;->requestData()V

    .line 175
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity;->mMenu:Landroid/view/Menu;

    .line 491
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 534
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 535
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 538
    :cond_0
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 542
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 497
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 511
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 499
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/food/FoodDetailActivity;->onBackPressed()V

    goto :goto_0

    .line 502
    :sswitch_1
    const v2, 0x7f0701c0

    invoke-virtual {p0, v2}, Lcom/boohee/food/FoodDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 503
    .local v0, "isCollection":Z
    if-eqz v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/boohee/food/FoodDetailActivity;->deleteFavorite(Ljava/lang/String;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/boohee/food/FoodDetailActivity;->addFavorite(Ljava/lang/String;Landroid/view/MenuItem;)V

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e07cd -> :sswitch_1
    .end sparse-switch
.end method
