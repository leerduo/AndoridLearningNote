.class public Lcom/boohee/myview/MineHeadViewFactory;
.super Ljava/lang/Object;
.source "MineHeadViewFactory.java"


# static fields
.field public static final HEAD_EAT:I = 0x2

.field public static final HEAD_PEROID:I = 0x4

.field public static final HEAD_WEIGHT:I = 0x1

.field public static final LEFT_CENTER:Ljava/lang/String; = "LEFT_CENTER"

.field public static final LEFT_TOP:Ljava/lang/String; = "LEFT_TOP"

.field public static final LEFT_UNIT:Ljava/lang/String; = "LEFT_UNIT"

.field private static final MAX_CALORY:F = 2500.0f

.field public static final RIGHT_BOTTOM:Ljava/lang/String; = "RIGHT_BOTTOM"

.field public static final RIGHT_CENTER:Ljava/lang/String; = "RIGHT_CENTER"

.field public static final RIGHT_TOP:Ljava/lang/String; = "RIGHT_TOP"


# instance fields
.field private eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

.field private isRunEatAnim:Z

.field private isRunWeightAnim:Z

.field private mContext:Landroid/content/Context;

.field private mcLatest:Lcom/boohee/model/mine/McLatest;

.field private mcSummary:Lcom/boohee/model/mine/McSummary;

.field private peroidTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

.field private resources:Landroid/content/res/Resources;

.field private totalDietCalory:F

.field private totalSportCalory:F

.field private user:Lcom/boohee/model/User;

.field private weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    .line 57
    iput-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    .line 58
    iput-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->peroidTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    .line 61
    iput-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    .line 64
    iput-boolean v1, p0, Lcom/boohee/myview/MineHeadViewFactory;->isRunWeightAnim:Z

    .line 65
    iput-boolean v1, p0, Lcom/boohee/myview/MineHeadViewFactory;->isRunEatAnim:Z

    .line 72
    iput-object p1, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/myview/MineHeadViewFactory;)Lcom/boohee/model/mine/McLatest;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->mcLatest:Lcom/boohee/model/mine/McLatest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/myview/MineHeadViewFactory;Lcom/boohee/model/mine/McLatest;)Lcom/boohee/model/mine/McLatest;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;
    .param p1, "x1"    # Lcom/boohee/model/mine/McLatest;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/myview/MineHeadViewFactory;->mcLatest:Lcom/boohee/model/mine/McLatest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/myview/MineHeadViewFactory;)Lcom/boohee/model/mine/McSummary;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->mcSummary:Lcom/boohee/model/mine/McSummary;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/myview/MineHeadViewFactory;Lcom/boohee/model/mine/McSummary;)Lcom/boohee/model/mine/McSummary;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;
    .param p1, "x1"    # Lcom/boohee/model/mine/McSummary;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/myview/MineHeadViewFactory;->mcSummary:Lcom/boohee/model/mine/McSummary;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/myview/MineHeadViewFactory;Lcom/boohee/model/mine/McLatest;Lcom/boohee/model/mine/McSummary;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;
    .param p1, "x1"    # Lcom/boohee/model/mine/McLatest;
    .param p2, "x2"    # Lcom/boohee/model/mine/McSummary;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/boohee/myview/MineHeadViewFactory;->setPeroidData(Lcom/boohee/model/mine/McLatest;Lcom/boohee/model/mine/McSummary;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/myview/MineHeadViewFactory;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/myview/MineHeadViewFactory;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/myview/MineHeadViewFactory;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/myview/MineHeadViewFactory;->delay()V

    return-void
.end method

.method private createEatHeadView(Lcom/boohee/model/User;FF)Landroid/view/View;
    .locals 8
    .param p1, "user"    # Lcom/boohee/model/User;
    .param p2, "dietCalory"    # F
    .param p3, "sportCalory"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 154
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    const v4, 0x7f030257

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "view":Landroid/view/View;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "LEFT_TOP"

    const-string v4, "\u8fd8\u53ef\u6444\u5165"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget v3, p1, Lcom/boohee/model/User;->target_weight:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/boohee/model/User;->target_calory:I

    int-to-float v3, v3

    sub-float v1, v3, p2

    .line 159
    .local v1, "sub":F
    :goto_0
    cmpg-float v3, v1, v7

    if-gez v3, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 162
    :cond_0
    const-string v3, "LEFT_CENTER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v3, "LEFT_UNIT"

    const-string v4, "\u5343\u5361"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v4, "RIGHT_TOP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9884\u7b97\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, p1, Lcom/boohee/model/User;->target_weight:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/boohee/model/User;->target_calory:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5343\u5361"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "RIGHT_CENTER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6444\u5165\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5343\u5361"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v3, "RIGHT_BOTTOM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6d88\u8017\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u5343\u5361"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const v3, 0x7f0e071e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/boohee/myview/MineHeadViewFactory;->invalidateView(Landroid/view/View;Ljava/util/Map;I)V

    .line 168
    const v3, 0x7f0e071f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/boohee/widgets/TextProgressBar;

    iput-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    .line 169
    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    const v5, 0x7f020580

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/boohee/widgets/TextProgressBar;->setBgBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    invoke-virtual {v3, v7}, Lcom/boohee/widgets/TextProgressBar;->setProgressRate(F)V

    .line 171
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    return-object v2

    .line 158
    .end local v1    # "sub":F
    :cond_1
    iget v3, p1, Lcom/boohee/model/User;->target_calory:I

    int-to-float v3, v3

    sub-float/2addr v3, p2

    add-float v1, v3, p3

    goto/16 :goto_0

    .line 164
    .restart local v1    # "sub":F
    :cond_2
    iget v3, p1, Lcom/boohee/model/User;->target_calory:I

    int-to-float v3, v3

    iget v6, p0, Lcom/boohee/myview/MineHeadViewFactory;->totalSportCalory:F

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto/16 :goto_1
.end method

.method private createPeroidHeadView(Lcom/boohee/model/User;)Landroid/view/View;
    .locals 5
    .param p1, "user"    # Lcom/boohee/model/User;

    .prologue
    .line 182
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f03025a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0728

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 186
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->mcLatest:Lcom/boohee/model/mine/McLatest;

    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->mcSummary:Lcom/boohee/model/mine/McSummary;

    invoke-direct {p0, v2, v3, v1}, Lcom/boohee/myview/MineHeadViewFactory;->setPeroidData(Lcom/boohee/model/mine/McLatest;Lcom/boohee/model/mine/McSummary;Landroid/view/View;)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/boohee/myview/MineHeadViewFactory$1;

    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/boohee/myview/MineHeadViewFactory$1;-><init>(Lcom/boohee/myview/MineHeadViewFactory;Landroid/content/Context;Landroid/view/View;Landroid/widget/ProgressBar;)V

    invoke-static {v2, v3}, Lcom/boohee/api/RecordApi;->getMcPeriodLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 206
    const v2, 0x7f0e0727

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/boohee/widgets/TextProgressBar;

    iput-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->peroidTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    .line 208
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->peroidTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/TextProgressBar;->setBackgroundColor(I)V

    .line 209
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->peroidTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/TextProgressBar;->setProgressRate(F)V

    .line 210
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->peroidTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 211
    return-object v1
.end method

.method private createWeightHeadView(Lcom/boohee/model/User;)Landroid/view/View;
    .locals 11
    .param p1, "user"    # Lcom/boohee/model/User;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    const v5, 0x7f03025c

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "LEFT_TOP"

    const-string v5, "\u5df2\u51cf\u53bb"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v3, Lcom/boohee/modeldao/WeightRecordDao;

    iget-object v5, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v0

    .line 117
    .local v0, "latestWeight":F
    if-eqz p1, :cond_2

    .line 118
    iget v3, p1, Lcom/boohee/model/User;->target_weight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 119
    iget v3, p1, Lcom/boohee/model/User;->begin_weight:F

    iput v3, p1, Lcom/boohee/model/User;->target_weight:F

    .line 121
    :cond_0
    const-string v5, "LEFT_CENTER"

    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    iget v3, p1, Lcom/boohee/model/User;->begin_weight:F

    sub-float/2addr v3, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "LEFT_UNIT"

    const-string v5, "kg"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "RIGHT_TOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u521d\u59cb\u4f53\u91cd\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p1, Lcom/boohee/model/User;->begin_weight:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "RIGHT_CENTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u76ee\u6807\u4f53\u91cd\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p1, Lcom/boohee/model/User;->target_weight:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "RIGHT_BOTTOM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BMI\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/boohee/model/User;->calcBmi(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_1
    const v3, 0x7f0e072f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {p0, v3, v1, v5}, Lcom/boohee/myview/MineHeadViewFactory;->invalidateView(Landroid/view/View;Ljava/util/Map;I)V

    .line 136
    const v3, 0x7f0e0730

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/boohee/widgets/TextProgressBar;

    iput-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    .line 138
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    invoke-virtual {v3, v4}, Lcom/boohee/widgets/TextProgressBar;->setProgressRate(F)V

    .line 139
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    const-string v4, "#FF00AEF0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/boohee/widgets/TextProgressBar;->setProgressColor(I)V

    .line 140
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    const-string v4, "0 kg"

    invoke-virtual {v3, v4}, Lcom/boohee/widgets/TextProgressBar;->setText(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    const v5, 0x7f02057e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/boohee/widgets/TextProgressBar;->setBgBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    return-object v2

    .line 121
    :cond_1
    iget v3, p1, Lcom/boohee/model/User;->begin_weight:F

    sub-float/2addr v3, v0

    goto/16 :goto_0

    .line 128
    :cond_2
    const-string v3, "LEFT_CENTER"

    const-string v5, "0"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "LEFT_UNIT"

    const-string v5, "kg"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v3, "RIGHT_TOP"

    const-string v5, "\u521d\u59cb\u4f53\u91cd\uff1a0 kg"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "RIGHT_CENTER"

    const-string v5, "\u76ee\u6807\u4f53\u91cd\uff1a0 kg"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "RIGHT_BOTTOM"

    const-string v5, "BMI\uff1a--"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private delay()V
    .locals 4

    .prologue
    .line 383
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private invalidateEatProgressView(Lcom/boohee/widgets/TextProgressBar;F)V
    .locals 9
    .param p1, "textBar"    # Lcom/boohee/widgets/TextProgressBar;
    .param p2, "totalDietCalory"    # F

    .prologue
    const/4 v8, 0x0

    .line 306
    if-eqz p1, :cond_0

    cmpg-float v2, p2, v8

    if-gez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/boohee/myview/MineHeadViewFactory;->setRunEatAnim(Z)V

    .line 312
    cmpl-float v2, p2, v8

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v2, v2, Lcom/boohee/model/User;->target_calory:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 314
    :cond_2
    const-string v2, "#ffcc00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/boohee/widgets/TextProgressBar;->setProgressColor(I)V

    .line 315
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020583

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/boohee/widgets/TextProgressBar;->setBgBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    :goto_1
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v2, v2, Lcom/boohee/model/User;->target_calory:I

    int-to-float v2, v2

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    div-float v0, p2, v2

    .line 326
    .local v0, "eatProgressRate":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    .line 327
    const/high16 v0, 0x3f800000    # 1.0f

    .line 330
    :cond_3
    :goto_2
    move v1, v0

    .line 331
    .local v1, "progressRate":F
    new-instance v2, Lcom/boohee/myview/MineHeadViewFactory$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/boohee/myview/MineHeadViewFactory$3;-><init>(Lcom/boohee/myview/MineHeadViewFactory;FLcom/boohee/widgets/TextProgressBar;)V

    invoke-virtual {v2}, Lcom/boohee/myview/MineHeadViewFactory$3;->start()V

    goto :goto_0

    .line 316
    .end local v0    # "eatProgressRate":F
    .end local v1    # "progressRate":F
    :cond_4
    float-to-double v2, p2

    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v4, v4, Lcom/boohee/model/User;->target_calory:I

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 318
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/boohee/widgets/TextProgressBar;->setProgressColor(I)V

    .line 319
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020581

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/boohee/widgets/TextProgressBar;->setBgBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 322
    :cond_5
    const-string v2, "#9ed900"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/boohee/widgets/TextProgressBar;->setProgressColor(I)V

    .line 323
    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->resources:Landroid/content/res/Resources;

    const v3, 0x7f020580

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/boohee/widgets/TextProgressBar;->setBgBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 328
    .restart local v0    # "eatProgressRate":F
    :cond_6
    cmpg-float v2, v0, v8

    if-gez v2, :cond_3

    .line 329
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private invalidateView(Landroid/view/View;Ljava/util/Map;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v7, 0x7f0e0720

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    .local v1, "leftTopText":Landroid/widget/TextView;
    const v7, 0x7f0e0721

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/risenumber/RiseNumberTextView;

    .line 252
    .local v0, "leftCenterText":Lcom/boohee/myview/risenumber/RiseNumberTextView;
    invoke-virtual {v0}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->setTypeface()V

    .line 253
    const/4 v7, 0x1

    if-ne p3, v7, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->setIntFormat()V

    .line 258
    :goto_0
    const v7, 0x7f0e0722

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 260
    .local v5, "unitText":Landroid/widget/TextView;
    const v7, 0x7f0e0723

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 261
    .local v4, "rightTopText":Landroid/widget/TextView;
    const v7, 0x7f0e0724

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 263
    .local v3, "rightCenterText":Landroid/widget/TextView;
    const v7, 0x7f0e0725

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 266
    .local v2, "rightBottomText":Landroid/widget/TextView;
    const-string v7, "LEFT_TOP"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v6, 0x0

    .line 269
    .local v6, "value_left_center":F
    :try_start_0
    const-string v7, "LEFT_CENTER"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 272
    :goto_1
    invoke-virtual {v0, v6}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->withNumber(F)Lcom/boohee/myview/risenumber/RiseNumberTextView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->start()V

    .line 273
    const-string v7, "LEFT_UNIT"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const-string v7, "RIGHT_TOP"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const-string v7, "RIGHT_CENTER"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const-string v7, "RIGHT_BOTTOM"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void

    .line 256
    .end local v2    # "rightBottomText":Landroid/widget/TextView;
    .end local v3    # "rightCenterText":Landroid/widget/TextView;
    .end local v4    # "rightTopText":Landroid/widget/TextView;
    .end local v5    # "unitText":Landroid/widget/TextView;
    .end local v6    # "value_left_center":F
    :cond_0
    invoke-virtual {v0}, Lcom/boohee/myview/risenumber/RiseNumberTextView;->setFloatFormat()V

    goto :goto_0

    .line 270
    .restart local v2    # "rightBottomText":Landroid/widget/TextView;
    .restart local v3    # "rightCenterText":Landroid/widget/TextView;
    .restart local v4    # "rightTopText":Landroid/widget/TextView;
    .restart local v5    # "unitText":Landroid/widget/TextView;
    .restart local v6    # "value_left_center":F
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private invalidateWeightProgressView(Lcom/boohee/widgets/TextProgressBar;F)V
    .locals 1
    .param p1, "textBar"    # Lcom/boohee/widgets/TextProgressBar;
    .param p2, "progressRate"    # F

    .prologue
    .line 281
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/myview/MineHeadViewFactory;->isRunWeightAnim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/boohee/myview/MineHeadViewFactory;->setRunWeightAnim(Z)V

    .line 287
    const-string v0, "#FF00AEF0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/boohee/widgets/TextProgressBar;->setProgressColor(I)V

    .line 288
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/boohee/widgets/TextProgressBar;->setTextColor(I)V

    .line 289
    new-instance v0, Lcom/boohee/myview/MineHeadViewFactory$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/boohee/myview/MineHeadViewFactory$2;-><init>(Lcom/boohee/myview/MineHeadViewFactory;Lcom/boohee/widgets/TextProgressBar;F)V

    invoke-virtual {v0}, Lcom/boohee/myview/MineHeadViewFactory$2;->start()V

    goto :goto_0
.end method

.method private setPeroidData(Lcom/boohee/model/mine/McLatest;Lcom/boohee/model/mine/McSummary;Landroid/view/View;)V
    .locals 5
    .param p1, "mcLatest"    # Lcom/boohee/model/mine/McLatest;
    .param p2, "mcSummary"    # Lcom/boohee/model/mine/McSummary;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "LEFT_TOP"

    const-string v3, "\u8ddd\u79bb\u4e0b\u6b21\u8fd8\u6709"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v2, "LEFT_UNIT"

    const-string v3, "\u5929"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    if-eqz p1, :cond_2

    .line 219
    iget v2, p1, Lcom/boohee/model/mine/McLatest;->mc_index:I

    if-lez v2, :cond_0

    .line 220
    const-string v2, "LEFT_TOP"

    const-string v3, "\u751f\u7406\u671f\u7b2c"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v2, "LEFT_CENTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/boohee/model/mine/McLatest;->mc_index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_0
    iget-object v2, p1, Lcom/boohee/model/mine/McLatest;->oviposit_day:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p1, Lcom/boohee/model/mine/McLatest;->oviposit_day:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 228
    .local v0, "date":Ljava/util/Date;
    const-string v2, "RIGHT_BOTTOM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6392\u5375\u65e5: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u65e5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v0    # "date":Ljava/util/Date;
    :goto_1
    if-eqz p2, :cond_3

    .line 239
    const-string v2, "RIGHT_TOP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6708\u7ecf\u5468\u671f: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/boohee/model/mine/McSummary;->cycle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5929"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "RIGHT_CENTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u884c\u7ecf\u5929\u6570: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/boohee/model/mine/McSummary;->duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5929 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_2
    const v2, 0x7f0e0726

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/boohee/myview/MineHeadViewFactory;->invalidateView(Landroid/view/View;Ljava/util/Map;I)V

    .line 246
    return-void

    .line 223
    :cond_0
    const-string v2, "LEFT_CENTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/boohee/model/mine/McLatest;->mc_distance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 231
    :cond_1
    const-string v2, "RIGHT_BOTTOM"

    const-string v3, "\u6392\u5375\u65e5: --"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    :cond_2
    const-string v2, "LEFT_CENTER"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "RIGHT_BOTTOM"

    const-string v3, "\u6392\u5375\u65e5: --"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 242
    :cond_3
    const-string v2, "RIGHT_TOP"

    const-string v3, "\u6708\u7ecf\u5468\u671f: 0 \u5929"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v2, "RIGHT_CENTER"

    const-string v3, "\u884c\u7ecf\u5929\u6570: 0\u5929 "

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public createHeadView(IFF)Landroid/view/View;
    .locals 3
    .param p1, "type"    # I
    .param p2, "dietCalory"    # F
    .param p3, "sportCalory"    # F

    .prologue
    .line 86
    iput p2, p0, Lcom/boohee/myview/MineHeadViewFactory;->totalDietCalory:F

    .line 87
    iput p3, p0, Lcom/boohee/myview/MineHeadViewFactory;->totalSportCalory:F

    .line 88
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "view":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-object v0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    invoke-direct {p0, v1}, Lcom/boohee/myview/MineHeadViewFactory;->createWeightHeadView(Lcom/boohee/model/User;)Landroid/view/View;

    move-result-object v0

    .line 93
    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    invoke-direct {p0, v1, p2, p3}, Lcom/boohee/myview/MineHeadViewFactory;->createEatHeadView(Lcom/boohee/model/User;FF)Landroid/view/View;

    move-result-object v0

    .line 96
    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v1, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    invoke-direct {p0, v1}, Lcom/boohee/myview/MineHeadViewFactory;->createPeroidHeadView(Lcom/boohee/model/User;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized isRunEatAnim()Z
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->isRunEatAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunWeightAnim()Z
    .locals 1

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/boohee/myview/MineHeadViewFactory;->isRunWeightAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runAnimation(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/widgets/TextProgressBar;

    .line 351
    .local v1, "textBar":Lcom/boohee/widgets/TextProgressBar;
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    if-nez v3, :cond_0

    .line 379
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {v1}, Lcom/boohee/widgets/TextProgressBar;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 374
    :sswitch_0
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->eatTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    iget v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->totalDietCalory:F

    invoke-direct {p0, v3, v4}, Lcom/boohee/myview/MineHeadViewFactory;->invalidateEatProgressView(Lcom/boohee/widgets/TextProgressBar;F)V

    goto :goto_0

    .line 355
    :sswitch_1
    new-instance v3, Lcom/boohee/modeldao/WeightRecordDao;

    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v0

    .line 357
    .local v0, "latestWeight":F
    const/4 v2, 0x0

    .line 358
    .local v2, "weightProgressRate":F
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->begin_weight:F

    sub-float/2addr v3, v0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 359
    const/4 v2, 0x0

    .line 366
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 367
    const/high16 v2, 0x3f800000    # 1.0f

    .line 370
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->weightTextProgressBar:Lcom/boohee/widgets/TextProgressBar;

    invoke-direct {p0, v3, v2}, Lcom/boohee/myview/MineHeadViewFactory;->invalidateWeightProgressView(Lcom/boohee/widgets/TextProgressBar;F)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->begin_weight:F

    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v4, v4, Lcom/boohee/model/User;->target_weight:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    .line 361
    const/4 v2, 0x0

    goto :goto_1

    .line 363
    :cond_3
    iget-object v3, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->begin_weight:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v4, v4, Lcom/boohee/model/User;->begin_weight:F

    iget-object v5, p0, Lcom/boohee/myview/MineHeadViewFactory;->user:Lcom/boohee/model/User;

    iget v5, v5, Lcom/boohee/model/User;->target_weight:F

    sub-float/2addr v4, v5

    div-float v2, v3, v4

    goto :goto_1

    .line 368
    :cond_4
    cmpg-float v3, v2, v6

    if-gez v3, :cond_1

    .line 369
    const/4 v2, 0x0

    goto :goto_2

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x7f0e071f -> :sswitch_0
        0x7f0e0730 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized setRunEatAnim(Z)V
    .locals 1
    .param p1, "isRunEatAnim"    # Z

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/boohee/myview/MineHeadViewFactory;->isRunEatAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRunWeightAnim(Z)V
    .locals 1
    .param p1, "isRunWeightAnim"    # Z

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/boohee/myview/MineHeadViewFactory;->isRunWeightAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
