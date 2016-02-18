.class public Lcom/boohee/one/video/view/HorizontalProgressView;
.super Landroid/view/View;
.source "HorizontalProgressView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private completedColor:I

.field private currentNumber:I

.field private gapWidth:I

.field private height:I

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private itemWidth:I

.field private paint:Landroid/graphics/Paint;

.field private totalNumber:I

.field private uncompletedColor:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/boohee/one/video/view/HorizontalProgressView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/video/view/HorizontalProgressView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/one/video/view/HorizontalProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/one/video/view/HorizontalProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    .line 30
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->completedColor:I

    .line 31
    const-string v0, "#33FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->uncompletedColor:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    .line 46
    invoke-direct {p0, p2}, Lcom/boohee/one/video/view/HorizontalProgressView;->init(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private calculatePoints()V
    .locals 8

    .prologue
    .line 124
    iget-object v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 125
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->getOriginLeft()I

    move-result v2

    .line 126
    .local v2, "originLeft":I
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->getItemWidth()I

    move-result v1

    .line 127
    .local v1, "itemWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    if-ge v0, v4, :cond_0

    .line 128
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    add-int/2addr v4, v1

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x0

    add-int v6, v2, v1

    iget v7, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    add-int/2addr v7, v1

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    .local v3, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private dip(I)I
    .locals 1
    .param p1, "dip"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private drawLeftOval(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 95
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->currentNumber:I

    if-lez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->initCompletedPaint()V

    .line 100
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget v5, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 101
    .local v1, "leftRect":Landroid/graphics/RectF;
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, -0x3ccc0000    # -180.0f

    iget-object v5, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 102
    return-void

    .line 98
    .end local v1    # "leftRect":Landroid/graphics/RectF;
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->initUncompletedPaint()V

    goto :goto_0
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->currentNumber:I

    if-ge v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->initCompletedPaint()V

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->initUncompletedPaint()V

    goto :goto_1

    .line 113
    :cond_1
    return-void
.end method

.method private drawRightOval(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->currentNumber:I

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    if-ne v0, v2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->initCompletedPaint()V

    .line 90
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    iget-object v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    .local v1, "rightRect":Landroid/graphics/RectF;
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 92
    return-void

    .line 88
    .end local v1    # "rightRect":Landroid/graphics/RectF;
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->initUncompletedPaint()V

    goto :goto_0
.end method

.method private getItemWidth()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->getMaxItemWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    goto :goto_0
.end method

.method private getMaxItemWidth()I
    .locals 3

    .prologue
    .line 150
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->width:I

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getOriginLeft()I
    .locals 3

    .prologue
    .line 135
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    if-nez v0, :cond_0

    .line 136
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->width:I

    if-lt v0, v1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->getMaxItemWidth()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    .line 141
    :cond_1
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->width:I

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/boohee/one/R$styleable;->HorizontalProgressView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    .line 53
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->currentNumber:I

    .line 54
    const/4 v1, 0x2

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->completedColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->completedColor:I

    .line 55
    const/4 v1, 0x3

    iget v2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->uncompletedColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->uncompletedColor:I

    .line 56
    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    invoke-direct {p0, v1}, Lcom/boohee/one/video/view/HorizontalProgressView;->dip(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    .line 57
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    return-void

    .line 60
    :cond_0
    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    invoke-direct {p0, v1}, Lcom/boohee/one/video/view/HorizontalProgressView;->dip(I)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->gapWidth:I

    goto :goto_0
.end method

.method private initCompletedPaint()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->completedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    return-void
.end method

.method private initUncompletedPaint()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->uncompletedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget v0, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    if-lez v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/boohee/one/video/view/HorizontalProgressView;->drawRect(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/boohee/one/video/view/HorizontalProgressView;->drawLeftOval(Landroid/graphics/Canvas;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/boohee/one/video/view/HorizontalProgressView;->drawRightOval(Landroid/graphics/Canvas;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 69
    iput p1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->width:I

    .line 70
    iput p2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->height:I

    .line 71
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->calculatePoints()V

    .line 72
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->itemWidth:I

    .line 173
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->calculatePoints()V

    .line 174
    invoke-virtual {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->invalidate()V

    .line 175
    return-void
.end method

.method public setProgress(II)V
    .locals 0
    .param p1, "currentNumber"    # I
    .param p2, "totalNumber"    # I

    .prologue
    .line 159
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-gt p1, p2, :cond_2

    .line 161
    iput p1, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->currentNumber:I

    .line 162
    iput p2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    .line 166
    :goto_1
    invoke-direct {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->calculatePoints()V

    .line 167
    invoke-virtual {p0}, Lcom/boohee/one/video/view/HorizontalProgressView;->invalidate()V

    goto :goto_0

    .line 164
    :cond_2
    iput p2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->totalNumber:I

    iput p2, p0, Lcom/boohee/one/video/view/HorizontalProgressView;->currentNumber:I

    goto :goto_1
.end method
