.class public Lcom/boohee/myview/BooheeCircleProgressBar;
.super Landroid/view/View;
.source "BooheeCircleProgressBar.java"


# instance fields
.field private maxProgress:I

.field oval:Landroid/graphics/RectF;

.field paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/16 v0, 0x64

    iput v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->maxProgress:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progress:I

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progressStrokeWidth:I

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->oval:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 25
    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->maxProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-virtual {p0}, Lcom/boohee/myview/BooheeCircleProgressBar;->getWidth()I

    move-result v8

    .line 32
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/boohee/myview/BooheeCircleProgressBar;->getHeight()I

    move-result v6

    .line 34
    .local v6, "height":I
    if-eq v8, v6, :cond_0

    .line 36
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 37
    .local v7, "min":I
    move v8, v7

    .line 38
    move v6, v7

    .line 41
    .end local v7    # "min":I
    :cond_0
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 44
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progressStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 48
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 49
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v8, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 50
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progressStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 54
    iget-object v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#4cd964"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progress:I

    int-to-float v0, v0

    iget v3, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->maxProgress:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->maxProgress:I

    .line 74
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progress:I

    .line 78
    invoke-virtual {p0}, Lcom/boohee/myview/BooheeCircleProgressBar;->invalidate()V

    .line 79
    return-void
.end method

.method public setProgressNotInUiThread(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/boohee/myview/BooheeCircleProgressBar;->progress:I

    .line 86
    invoke-virtual {p0}, Lcom/boohee/myview/BooheeCircleProgressBar;->postInvalidate()V

    .line 87
    return-void
.end method
