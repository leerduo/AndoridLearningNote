.class public Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
.super Lcom/boohee/main/GestureActivity;
.source "TodayAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;
    }
.end annotation


# static fields
.field private static final EXTRA_DATE:Ljava/lang/String; = "extra_date"


# instance fields
.field mBtMicroMore:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e069e
    .end annotation
.end field

.field mIvCaloryStatus:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06ad
    .end annotation
.end field

.field mIvCarbohydrateState:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a3
    .end annotation
.end field

.field mIvDietStatus:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06af
    .end annotation
.end field

.field mIvFatState:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a6
    .end annotation
.end field

.field mIvMealsBreakfast:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0694
    .end annotation
.end field

.field mIvMealsDinner:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e069a
    .end annotation
.end field

.field mIvMealsLunch:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0697
    .end annotation
.end field

.field mIvNuturitionStatus:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06b1
    .end annotation
.end field

.field mIvProteinState:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06aa
    .end annotation
.end field

.field mLlAnalysisMeals:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e068f
    .end annotation
.end field

.field mLlAnalysisNutrients:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e069f
    .end annotation
.end field

.field mLlAnalysisScore:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06ac
    .end annotation
.end field

.field mLlMicroNutrients:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e069b
    .end annotation
.end field

.field mLlTodayAnalysis:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e011c
    .end annotation
.end field

.field mLvMicroNutrients:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e069d
    .end annotation
.end field

.field mScrollView:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0240
    .end annotation
.end field

.field mTvCarbohydrate:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a2
    .end annotation
.end field

.field mTvCarbohydrateState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a4
    .end annotation
.end field

.field mTvFat:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a5
    .end annotation
.end field

.field mTvFatState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a7
    .end annotation
.end field

.field mTvMealsBreakfast:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0692
    .end annotation
.end field

.field mTvMealsBreakfastState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0693
    .end annotation
.end field

.field mTvMealsDinner:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0698
    .end annotation
.end field

.field mTvMealsDinnerState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0699
    .end annotation
.end field

.field mTvMealsLunch:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0695
    .end annotation
.end field

.field mTvMealsLunchState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0696
    .end annotation
.end field

.field mTvMicroTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e069c
    .end annotation
.end field

.field mTvProtein:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a9
    .end annotation
.end field

.field mTvProteinState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06ab
    .end annotation
.end field

.field mTvScore:Lcom/boohee/myview/risenumber/RiseNumberTextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e037e
    .end annotation
.end field

.field private microList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MicroNutrientsItem;",
            ">;"
        }
    .end annotation
.end field

.field pie_meals:Llecho/lib/hellocharts/view/PieChartView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0690
    .end annotation
.end field

.field pie_nutrients:Llecho/lib/hellocharts/view/PieChartView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06a0
    .end annotation
.end field

.field progress_bar:Lcom/boohee/widgets/CircularProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e0
    .end annotation
.end field

.field private record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->microList:Ljava/util/List;

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initScore(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayOverview;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
    .param p1, "x1"    # Lcom/boohee/model/TodayOverview;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayOverview(Lcom/boohee/model/TodayOverview;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayDiets;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
    .param p1, "x1"    # Lcom/boohee/model/TodayDiets;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayDiets(Lcom/boohee/model/TodayDiets;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayNutrients;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
    .param p1, "x1"    # Lcom/boohee/model/TodayNutrients;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayNutrients(Lcom/boohee/model/TodayNutrients;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayMicroNutrients;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;
    .param p1, "x1"    # Lcom/boohee/model/TodayMicroNutrients;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayMicroNutrients(Lcom/boohee/model/TodayMicroNutrients;)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method private filterMicroData(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MicroNutrientsItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MicroNutrientsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MicroNutrientsItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MicroNutrientsItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 287
    :cond_0
    return-object v2

    .line 282
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MicroNutrientsItem;

    .line 283
    .local v1, "item":Lcom/boohee/model/MicroNutrientsItem;
    sget-object v3, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v3}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->desc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvScore:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    invoke-static {v0, p1}, Lcom/boohee/utils/ViewUtils;->startRiseNumber(Lcom/boohee/myview/risenumber/RiseNumberTextView;I)V

    .line 208
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->progress_bar:Lcom/boohee/widgets/CircularProgressBar;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/boohee/widgets/CircularProgressBar;->animateProgess(ILandroid/view/animation/Interpolator;)V

    .line 209
    return-void
.end method

.method private initTodayDiets(Lcom/boohee/model/TodayDiets;)V
    .locals 4
    .param p1, "todayDiets"    # Lcom/boohee/model/TodayDiets;

    .prologue
    const/4 v1, 0x0

    .line 230
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/boohee/model/TodayDiets;->breakfast:Lcom/boohee/model/TodayItem;

    iget v0, v0, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/boohee/model/TodayDiets;->lunch:Lcom/boohee/model/TodayItem;

    iget v0, v0, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/boohee/model/TodayDiets;->dinner:Lcom/boohee/model/TodayItem;

    iget v0, v0, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlAnalysisMeals:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlAnalysisMeals:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMealsBreakfast:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMealsBreakfastState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvMealsBreakfast:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/boohee/model/TodayDiets;->breakfast:Lcom/boohee/model/TodayItem;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->switchMeals(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V

    .line 235
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMealsLunch:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMealsLunchState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvMealsLunch:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/boohee/model/TodayDiets;->lunch:Lcom/boohee/model/TodayItem;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->switchMeals(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V

    .line 236
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMealsDinner:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMealsDinnerState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvMealsDinner:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/boohee/model/TodayDiets;->dinner:Lcom/boohee/model/TodayItem;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->switchMeals(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V

    .line 237
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->pie_meals:Llecho/lib/hellocharts/view/PieChartView;

    invoke-static {v0, p1}, Lcom/boohee/utils/ChartAnalysisHelper;->initMealsPie(Llecho/lib/hellocharts/view/PieChartView;Lcom/boohee/model/TodayDiets;)V

    goto :goto_0
.end method

.method private initTodayMicroNutrients(Lcom/boohee/model/TodayMicroNutrients;)V
    .locals 7
    .param p1, "microNutrients"    # Lcom/boohee/model/TodayMicroNutrients;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 259
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/boohee/model/TodayMicroNutrients;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlMicroNutrients:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlMicroNutrients:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvMicroTitle:Landroid/widget/TextView;

    const-string v3, "\u5fae\u91cf\u8425\u517b\u7d20"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget v2, p1, Lcom/boohee/model/TodayMicroNutrients;->good_count:I

    if-lez v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mBtMicroMore:Landroid/widget/Button;

    const-string v3, "\u6709%d\u9879\u8fbe\u6807"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/boohee/model/TodayMicroNutrients;->good_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->microList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 270
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->microList:Ljava/util/List;

    iget-object v3, p1, Lcom/boohee/model/TodayMicroNutrients;->items:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v2, p1, Lcom/boohee/model/TodayMicroNutrients;->items:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->filterMicroData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MicroNutrientsItem;>;"
    new-instance v1, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2, v0}, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 273
    .local v1, "microNutrientsAdapter":Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLvMicroNutrients:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 267
    .end local v0    # "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MicroNutrientsItem;>;"
    .end local v1    # "microNutrientsAdapter":Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mBtMicroMore:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private initTodayNutrients(Lcom/boohee/model/TodayNutrients;)V
    .locals 4
    .param p1, "todayNutrients"    # Lcom/boohee/model/TodayNutrients;

    .prologue
    const/4 v1, 0x0

    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    iget v0, v0, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    iget v0, v0, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    iget v0, v0, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlAnalysisNutrients:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLlAnalysisNutrients:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvCarbohydrate:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvCarbohydrateState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvCarbohydrateState:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->switchNutrients(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V

    .line 252
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvProtein:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvProteinState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvProteinState:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->switchNutrients(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V

    .line 253
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvFat:Lcom/boohee/myview/risenumber/RiseNumberTextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mTvFatState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvFatState:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->switchNutrients(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V

    .line 254
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->pie_nutrients:Llecho/lib/hellocharts/view/PieChartView;

    invoke-static {v0, p1}, Lcom/boohee/utils/ChartAnalysisHelper;->initNutrientsPie(Llecho/lib/hellocharts/view/PieChartView;Lcom/boohee/model/TodayNutrients;)V

    goto :goto_0
.end method

.method private initTodayOverview(Lcom/boohee/model/TodayOverview;)V
    .locals 4
    .param p1, "todayOverview"    # Lcom/boohee/model/TodayOverview;

    .prologue
    const v2, 0x7f0201f6

    const v1, 0x7f0201f0

    .line 218
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvCaloryStatus:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/boohee/model/TodayOverview;->calory_status:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvDietStatus:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/boohee/model/TodayOverview;->diet_status:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mIvNuturitionStatus:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/boohee/model/TodayOverview;->nuturition_status:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v0, v2

    .line 220
    goto :goto_2

    :cond_3
    move v1, v2

    .line 221
    goto :goto_3
.end method

.method private requestDailyAnalysis()V
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->showLoading()V

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->record_on:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;-><init>(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->getDailyAnalysis(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 204
    return-void
.end method

.method private share()V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;-><init>(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$BitmapAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "extra_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method private switchMeals(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V
    .locals 3
    .param p1, "tv_meal"    # Landroid/widget/TextView;
    .param p2, "tv_meals_state"    # Landroid/widget/TextView;
    .param p3, "iv_meals_state"    # Landroid/widget/ImageView;
    .param p4, "todayItem"    # Lcom/boohee/model/TodayItem;

    .prologue
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p4, Lcom/boohee/model/TodayItem;->percentage:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p4, Lcom/boohee/model/TodayItem;->percentage:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->less:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/TodayItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v0, 0x7f0201f1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    :cond_0
    :goto_1
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :cond_2
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->much:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/TodayItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const v0, 0x7f0201f5

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 299
    :cond_3
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/TodayItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const v0, 0x7f0201f0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private switchNutrients(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/TodayItem;)V
    .locals 3
    .param p1, "tv_meal"    # Landroid/widget/TextView;
    .param p2, "tv_meals_state"    # Landroid/widget/TextView;
    .param p3, "iv_meals_state"    # Landroid/widget/ImageView;
    .param p4, "todayItem"    # Lcom/boohee/model/TodayItem;

    .prologue
    .line 306
    if-nez p4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p4, Lcom/boohee/model/TodayItem;->percentage:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p4, Lcom/boohee/model/TodayItem;->percentage:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->less:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/TodayItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const v0, 0x7f0201f1

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 311
    :cond_3
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->much:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/TodayItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v0, 0x7f0201f5

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 314
    :cond_4
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Lcom/boohee/model/TodayItem;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const v0, 0x7f0201f0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0691,
            0x7f0e06a1,
            0x7f0e069e
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 324
    :sswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "\u4e09\u9910\u6bd4\u4f8b\u77e5\u8bc6"

    const-string v3, "http://shop.boohee.com/store/pages/three_meal"

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :sswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "\u8425\u517b\u5206\u5e03\u77e5\u8bc6"

    const-string v3, "http://shop.boohee.com/store/pages/nutrition_distribution"

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :sswitch_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->microList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 331
    new-instance v0, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->microList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 332
    .local v0, "microNutrientsAdapter":Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mLvMicroNutrients:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    .end local v0    # "microNutrientsAdapter":Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mBtMicroMore:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 322
    :sswitch_data_0
    .sparse-switch
        0x7f0e0691 -> :sswitch_0
        0x7f0e069e -> :sswitch_2
        0x7f0e06a1 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v0, 0x7f030086

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->setContentView(I)V

    .line 169
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 170
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->record_on:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->requestDailyAnalysis()V

    .line 172
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 149
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 387
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_dailyanalyze_share"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->share()V

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x7f0e07c7
        :pswitch_0
    .end packed-switch
.end method
