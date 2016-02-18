.class public Lcom/boohee/one/ui/fragment/AddDietFragment;
.super Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.source "AddDietFragment.java"


# instance fields
.field civ_title:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0308
    .end annotation
.end field

.field diet_keyboard:Lcom/booheee/view/keyboard/DietKeyboard;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e031a
    .end annotation
.end field

.field iv_light:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0130
    .end annotation
.end field

.field ll_collect:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0316
    .end annotation
.end field

.field private mAmount:F

.field private mCalory:F

.field private mCode:Ljava/lang/String;

.field private mFoodName:Ljava/lang/String;

.field private mFoodUnitId:I

.field private mTimeType:I

.field private mUnitName:Ljava/lang/String;

.field private record_on:Ljava/lang/String;

.field private thumb_image_name:Ljava/lang/String;

.field toggle_collect:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0317
    .end annotation
.end field

.field tv_collect:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0318
    .end annotation
.end field

.field tv_light:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0310
    .end annotation
.end field

.field txt_calory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e030a
    .end annotation
.end field

.field txt_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0309
    .end annotation
.end field

.field txt_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0688
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/fragment/AddDietFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddDietFragment;
    .param p1, "x1"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mAmount:F

    return p1
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/AddDietFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddDietFragment;
    .param p1, "x1"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCalory:F

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/AddDietFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddDietFragment;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mFoodUnitId:I

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/AddDietFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddDietFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mUnitName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/AddDietFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddDietFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/AddDietFragment;->initUI(Lorg/json/JSONObject;)V

    return-void
.end method

.method private addFavorite(Ljava/lang/String;)V
    .locals 3
    .param p1, "mCode"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->showLoading()V

    .line 273
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddDietFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddDietFragment$4;-><init>(Lcom/boohee/one/ui/fragment/AddDietFragment;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->addFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 296
    return-void
.end method

.method private createEating()V
    .locals 10

    .prologue
    .line 302
    new-instance v0, Lcom/boohee/modeldao/FoodRecordDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/FoodRecordDao;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "dao":Lcom/boohee/modeldao/FoodRecordDao;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mFoodName:Ljava/lang/String;

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mTimeType:I

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    iget v4, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mAmount:F

    iget v5, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCalory:F

    iget v6, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mFoodUnitId:I

    iget-object v7, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mUnitName:Ljava/lang/String;

    iget-object v8, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->record_on:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/boohee/modeldao/FoodRecordDao;->add(Ljava/lang/String;ILjava/lang/String;FFILjava/lang/String;Ljava/lang/String;)Lcom/boohee/model/RecordFood;

    move-result-object v9

    .line 304
    .local v9, "recordFood":Lcom/boohee/model/RecordFood;
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->dismissAllowingStateLoss()V

    .line 305
    if-eqz v9, :cond_0

    .line 306
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/DietEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/DietEvent;-><init>()V

    iget v3, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mTimeType:I

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/DietEvent;->setTimeType(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/boohee/one/event/DietEvent;->setRecordFood(Lcom/boohee/model/RecordFood;)Lcom/boohee/one/event/DietEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/DietEvent;->setEditType(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 307
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/AddFinishAnimEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/AddFinishAnimEvent;-><init>()V

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->thumb_image_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/AddFinishAnimEvent;->setThumb_image_name(Ljava/lang/String;)Lcom/boohee/one/event/AddFinishAnimEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->changeListener:Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->changeListener:Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

    invoke-interface {v1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;->onFinish()V

    .line 332
    :cond_1
    return-void
.end method

.method private deleteFavorite(Ljava/lang/String;)V
    .locals 3
    .param p1, "mCode"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->showLoading()V

    .line 246
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddDietFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddDietFragment$3;-><init>(Lcom/boohee/one/ui/fragment/AddDietFragment;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->deleteFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 264
    return-void
.end method

.method private getFoodShowWithLight(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddDietFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/one/ui/fragment/AddDietFragment$5;-><init>(Lcom/boohee/one/ui/fragment/AddDietFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->getFoodShowWithLight(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private initDietKeyboard(Lcom/boohee/model/FoodWithUnit;)V
    .locals 6
    .param p1, "food"    # Lcom/boohee/model/FoodWithUnit;

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 170
    iget v2, p1, Lcom/boohee/model/FoodWithUnit;->calory:F

    iput v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCalory:F

    .line 171
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->code:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    .line 172
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mFoodName:Ljava/lang/String;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "units":Ljava/util/List;, "Ljava/util/List<Lcom/booheee/view/keyboard/Unit;>;"
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->units:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->units:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 175
    :cond_0
    new-instance v0, Lcom/booheee/view/keyboard/Unit;

    invoke-direct {v0}, Lcom/booheee/view/keyboard/Unit;-><init>()V

    .line 176
    .local v0, "foodUnit":Lcom/booheee/view/keyboard/Unit;
    const-string v2, "\u514b"

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mUnitName:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mUnitName:Ljava/lang/String;

    iput-object v2, v0, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    .line 178
    const-string v2, "1.0"

    iput-object v2, v0, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    .line 179
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v0    # "foodUnit":Lcom/booheee/view/keyboard/Unit;
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->diet_keyboard:Lcom/booheee/view/keyboard/DietKeyboard;

    new-instance v3, Lcom/boohee/one/ui/fragment/AddDietFragment$1;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/fragment/AddDietFragment$1;-><init>(Lcom/boohee/one/ui/fragment/AddDietFragment;)V

    invoke-virtual {v2, v3}, Lcom/booheee/view/keyboard/DietKeyboard;->setOnResultListener(Lcom/booheee/view/keyboard/OnDietResultListener;)V

    .line 193
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->diet_keyboard:Lcom/booheee/view/keyboard/DietKeyboard;

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCalory:F

    div-float v4, v2, v5

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/booheee/view/keyboard/Unit;

    invoke-virtual {v3, v5, v4, v2, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->init(FFLcom/booheee/view/keyboard/Unit;Ljava/util/List;)V

    .line 194
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->txt_name:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/boohee/model/FoodWithUnit;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->txt_calory:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/boohee/model/FoodWithUnit;->calory:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->thumb_image_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->thumb_image_name:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->thumb_image_name:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/boohee/model/FoodWithUnit;->thumb_image_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->civ_title:Lde/hdodenhof/circleimageview/CircleImageView;

    const v5, 0x7f020329

    invoke-static {v5}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 200
    :cond_1
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->code:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/boohee/one/ui/fragment/AddDietFragment;->isFavorite(Ljava/lang/String;)V

    .line 201
    iget v2, p1, Lcom/boohee/model/FoodWithUnit;->health_light:I

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->iv_light:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->tv_light:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/boohee/utils/FoodUtils;->switchToLight(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 202
    return-void

    .line 181
    :cond_2
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->units:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u6dfb\u52a0\u996e\u98df"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method private initUI(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 374
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const-class v1, Lcom/boohee/model/FoodWithUnit;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/FoodWithUnit;

    .line 376
    .local v0, "food":Lcom/boohee/model/FoodWithUnit;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->initDietKeyboard(Lcom/boohee/model/FoodWithUnit;)V

    goto :goto_0
.end method

.method private isFavorite(Ljava/lang/String;)V
    .locals 3
    .param p1, "mCode"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->showLoading()V

    .line 211
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddDietFragment$2;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddDietFragment$2;-><init>(Lcom/boohee/one/ui/fragment/AddDietFragment;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->isFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 237
    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddDietFragment;
    .locals 1
    .param p0, "time_type"    # I
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lcom/boohee/one/ui/fragment/AddDietFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;-><init>()V

    .line 95
    .local v0, "addDietFragment":Lcom/boohee/one/ui/fragment/AddDietFragment;
    iput p0, v0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mTimeType:I

    .line 96
    iput-object p1, v0, Lcom/boohee/one/ui/fragment/AddDietFragment;->record_on:Ljava/lang/String;

    .line 97
    iput-object p2, v0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    .line 98
    return-object v0
.end method

.method private paramsWithFoodRecord()Lcom/boohee/one/http/JsonParams;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 342
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "unit_name"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mUnitName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "amount"

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mAmount:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 346
    const-string v1, "code"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "food_name"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mFoodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "food_unit_id"

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mFoodUnitId:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 349
    const-string v1, "calory"

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCalory:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 350
    const-string v1, "time_type"

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mTimeType:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 351
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e031b,
            0x7f0e031d,
            0x7f0e030f,
            0x7f0e0316,
            0x7f0e0319,
            0x7f0e0313
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 134
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tool_searchfood_canceladd"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 138
    :sswitch_1
    iget v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 139
    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u96f6"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->createEating()V

    goto :goto_0

    .line 145
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/boohee/food/LightIntroduceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :sswitch_3
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tool_foodandsport_favoritefood"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->ll_collect:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->toggle_collect:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->deleteFavorite(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->addFavorite(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :sswitch_4
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tool_foodandsport_fooddetail"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/boohee/food/FoodDetailActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 161
    :sswitch_5
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/more/EstimateFoodActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e030f -> :sswitch_2
        0x7f0e0313 -> :sswitch_5
        0x7f0e0316 -> :sswitch_3
        0x7f0e0319 -> :sswitch_4
        0x7f0e031b -> :sswitch_0
        0x7f0e031d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const v0, 0x7f0300ce

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroy()V

    .line 390
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroyView()V

    .line 384
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 385
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/FoodCollectEvent;)V
    .locals 2
    .param p1, "collectEvent"    # Lcom/boohee/one/event/FoodCollectEvent;

    .prologue
    .line 399
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->toggle_collect:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Lcom/boohee/one/event/FoodCollectEvent;->isCollect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->toggle_collect:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->toggle_collect:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->initTitle()V

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "food_detail_%1s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->initUI(Lorg/json/JSONObject;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddDietFragment;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/AddDietFragment;->getFoodShowWithLight(Ljava/lang/String;)V

    .line 127
    return-void
.end method
