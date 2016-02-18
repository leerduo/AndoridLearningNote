.class public Lcom/boohee/food/AddFoodListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddFoodListActivity.java"


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"

.field private static final KEY_TIME_TYPE:Ljava/lang/String; = "key_time_type"

.field private static final REQUEST_IMAGE:I


# instance fields
.field private addCount:I

.field iv_diet_cart:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ce
    .end annotation
.end field

.field private mCommomFragment:Lcom/boohee/record/CommonFoodFragmennt;

.field private mContentFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomFoodFragmennt:Lcom/boohee/food/CustomFoodFragment;

.field private mFavoriteFragment:Lcom/boohee/food/FavourFoodFragmennt;

.field private mImagePath:Ljava/lang/String;

.field private mMessageBadge:Lcom/boohee/myview/NewBadgeView;

.field mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ca
    .end annotation
.end field

.field private mTimeType:I

.field private mTitles:[Ljava/lang/String;

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field

.field private record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5e38\u89c1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6536\u85cf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6211\u7684"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mTitles:[Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mContentFragments:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/myview/NewBadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/food/AddFoodListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;
    .param p1, "x1"    # Lcom/boohee/myview/NewBadgeView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/food/AddFoodListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/food/AddFoodListActivity;->showHighLight()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/food/FavourFoodFragmennt;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mFavoriteFragment:Lcom/boohee/food/FavourFoodFragmennt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/food/CustomFoodFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mCustomFoodFragmennt:Lcom/boohee/food/CustomFoodFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/food/AddFoodListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/boohee/food/AddFoodListActivity;->showUploadDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/food/AddFoodListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddFoodListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/boohee/food/AddFoodListActivity;->loadFoodWithCode(Ljava/lang/String;)V

    return-void
.end method

.method private checkGuide()V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lcom/boohee/database/OnePreference;->isAddFoodGuide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/AddFoodListActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddFoodListActivity$2;-><init>(Lcom/boohee/food/AddFoodListActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    :cond_0
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "key_time_type"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddFoodListActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    .line 132
    const-string v0, "key_date"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddFoodListActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    iget v2, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    invoke-static {v1, v2}, Lcom/boohee/utils/FoodUtils;->getDietName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddFoodListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/record/CommonFoodFragmennt;->newInstance(ILjava/lang/String;)Lcom/boohee/record/CommonFoodFragmennt;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mCommomFragment:Lcom/boohee/record/CommonFoodFragmennt;

    .line 203
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->mCommomFragment:Lcom/boohee/record/CommonFoodFragmennt;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget v0, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/food/FavourFoodFragmennt;->newInstance(ILjava/lang/String;)Lcom/boohee/food/FavourFoodFragmennt;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mFavoriteFragment:Lcom/boohee/food/FavourFoodFragmennt;

    .line 205
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->mFavoriteFragment:Lcom/boohee/food/FavourFoodFragmennt;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget v0, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/food/CustomFoodFragment;->newInstance(ILjava/lang/String;)Lcom/boohee/food/CustomFoodFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mCustomFoodFragmennt:Lcom/boohee/food/CustomFoodFragment;

    .line 207
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mContentFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->mCustomFoodFragmennt:Lcom/boohee/food/CustomFoodFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method private initViewPager()V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 212
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/boohee/one/ui/adapter/ArrayPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/food/AddFoodListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/food/AddFoodListActivity;->mContentFragments:Ljava/util/List;

    iget-object v4, p0, Lcom/boohee/food/AddFoodListActivity;->mTitles:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/one/ui/adapter/ArrayPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 214
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    new-instance v1, Lcom/boohee/food/AddFoodListActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddFoodListActivity$5;-><init>(Lcom/boohee/food/AddFoodListActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 226
    return-void
.end method

.method private loadFoodWithCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 362
    iget v1, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/boohee/one/ui/fragment/AddDietFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddDietFragment;

    move-result-object v0

    .line 363
    .local v0, "addDietFragment":Lcom/boohee/one/ui/fragment/AddDietFragment;
    invoke-virtual {p0}, Lcom/boohee/food/AddFoodListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addDietFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddDietFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private searchFoodWithCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/AddFoodListActivity$8;

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/food/AddFoodListActivity$8;-><init>(Lcom/boohee/food/AddFoodListActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->getFoodWithBarcode(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private setTranslateAnim(I)V
    .locals 19
    .param p1, "total"    # I

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/boohee/utils/ResolutionUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v13

    .line 243
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/boohee/utils/ResolutionUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 244
    .local v2, "height":I
    int-to-float v14, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    int-to-float v15, v15

    sub-float v11, v14, v15

    .line 245
    .local v11, "translationX":F
    div-int/lit8 v14, v2, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/high16 v16, 0x41c00000    # 24.0f

    invoke-static/range {v15 .. v16}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    sub-int/2addr v14, v15

    neg-int v14, v14

    int-to-float v12, v14

    .line 246
    .local v12, "translationY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const-string v15, "scaleX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 247
    .local v3, "scaleX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const-string v15, "scaleY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 248
    .local v5, "scaleY":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const-string v15, "scaleX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 249
    .local v4, "scaleX2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const-string v15, "scaleY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 250
    .local v6, "scaleY2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const-string v15, "translationX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v11, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 251
    .local v9, "transX":Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    const-string v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v12, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 253
    .local v10, "transY":Landroid/animation/ObjectAnimator;
    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    .local v7, "set1":Landroid/animation/AnimatorSet;
    new-instance v14, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v14}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v7, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-virtual {v7, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 258
    const-wide/16 v14, 0x1f4

    invoke-virtual {v7, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 259
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 261
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 262
    .local v8, "set2":Landroid/animation/AnimatorSet;
    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    const/4 v15, 0x2

    aput-object v4, v14, v15

    const/4 v15, 0x3

    aput-object v6, v14, v15

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 263
    const-wide/16 v14, 0x258

    invoke-virtual {v8, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 265
    new-instance v14, Lcom/boohee/food/AddFoodListActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/boohee/food/AddFoodListActivity$6;-><init>(Lcom/boohee/food/AddFoodListActivity;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v7, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    new-instance v14, Lcom/boohee/food/AddFoodListActivity$7;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/boohee/food/AddFoodListActivity$7;-><init>(Lcom/boohee/food/AddFoodListActivity;I)V

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    return-void

    .line 246
    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    .line 247
    :array_1
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data

    .line 248
    :array_2
    .array-data 4
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 249
    :array_3
    .array-data 4
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private showHighLight()V
    .locals 5

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Lcom/boohee/myview/highlight/HighLight;

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/myview/highlight/HighLight;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0762

    const v3, 0x7f030218

    new-instance v4, Lcom/boohee/food/AddFoodListActivity$3;

    invoke-direct {v4, p0}, Lcom/boohee/food/AddFoodListActivity$3;-><init>(Lcom/boohee/food/AddFoodListActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    move-result-object v0

    .line 177
    .local v0, "highLight":Lcom/boohee/myview/highlight/HighLight;
    invoke-virtual {v0}, Lcom/boohee/myview/highlight/HighLight;->show()V

    .line 178
    new-instance v1, Lcom/boohee/food/AddFoodListActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddFoodListActivity$4;-><init>(Lcom/boohee/food/AddFoodListActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/highlight/HighLight;->setOnHighLightClickListener(Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "highLight":Lcom/boohee/myview/highlight/HighLight;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showTakePhotoDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_camera"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    const-string v1, "max_select_count"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "select_count_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0, v3}, Lcom/boohee/food/AddFoodListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    return-void
.end method

.method private showUploadDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0705f5

    invoke-static {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0705f6

    new-instance v2, Lcom/boohee/food/AddFoodListActivity$10;

    invoke-direct {v2, p0}, Lcom/boohee/food/AddFoodListActivity$10;-><init>(Lcom/boohee/food/AddFoodListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0705f7

    new-instance v2, Lcom/boohee/food/AddFoodListActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/boohee/food/AddFoodListActivity$9;-><init>(Lcom/boohee/food/AddFoodListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 384
    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time_type"    # I
    .param p2, "record_on"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/AddFoodListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 319
    if-nez p3, :cond_0

    .line 336
    :goto_0
    return-void

    .line 320
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 335
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 322
    :sswitch_0
    const-string v2, "CODE_DATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0, v0}, Lcom/boohee/food/AddFoodListActivity;->searchFoodWithCode(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    .end local v0    # "contents":Ljava/lang/String;
    :sswitch_1
    const-string v2, "select_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 329
    .local v1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 330
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->mImagePath:Ljava/lang/String;

    .line 331
    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v3, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v4, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/food/AddFoodListActivity;->mImagePath:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/boohee/food/AddCameraRecordActivity;->start(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xaf -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00cc,
            0x7f0e00cd,
            0x7f0e0762,
            0x7f0e0763
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 85
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/food/AddFoodListActivity;->showTakePhotoDialog()V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_foodandsport_addfood"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddCustomFoodActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/boohee/one/ui/ScannerActivity;->startScannerForResult(Landroid/content/Context;I)V

    goto :goto_0

    .line 95
    :sswitch_3
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;

    iget v1, p0, Lcom/boohee/food/AddFoodListActivity;->mTimeType:I

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/boohee/food/SearchFoodActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00cc -> :sswitch_0
        0x7f0e00cd -> :sswitch_1
        0x7f0e0762 -> :sswitch_2
        0x7f0e0763 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddFoodListActivity;->setContentView(I)V

    .line 122
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 123
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/boohee/food/AddFoodListActivity;->handleIntent()V

    .line 125
    invoke-direct {p0}, Lcom/boohee/food/AddFoodListActivity;->initFragments()V

    .line 126
    invoke-direct {p0}, Lcom/boohee/food/AddFoodListActivity;->initViewPager()V

    .line 127
    invoke-direct {p0}, Lcom/boohee/food/AddFoodListActivity;->checkGuide()V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 140
    invoke-virtual {p0}, Lcom/boohee/food/AddFoodListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/AddFoodListActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddFoodListActivity$1;-><init>(Lcom/boohee/food/AddFoodListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 232
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/AddFinishAnimEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/boohee/one/event/AddFinishAnimEvent;

    .prologue
    const v3, 0x7f020329

    .line 287
    invoke-virtual {p1}, Lcom/boohee/one/event/AddFinishAnimEvent;->getThumb_image_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p1}, Lcom/boohee/one/event/AddFinishAnimEvent;->getThumb_image_name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boohee/one/event/AddFinishAnimEvent;->getThumb_image_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 296
    :goto_0
    iget v0, p0, Lcom/boohee/food/AddFoodListActivity;->addCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/food/AddFoodListActivity;->addCount:I

    invoke-direct {p0, v0}, Lcom/boohee/food/AddFoodListActivity;->setTranslateAnim(I)V

    .line 297
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/boohee/one/event/AddFinishAnimEvent;->getThumb_image_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 193
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/food/AddFoodListActivity;->finish()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07c4
        :pswitch_0
    .end packed-switch
.end method
