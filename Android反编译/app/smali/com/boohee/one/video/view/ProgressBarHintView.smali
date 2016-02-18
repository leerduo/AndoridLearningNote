.class public Lcom/boohee/one/video/view/ProgressBarHintView;
.super Landroid/view/View;
.source "ProgressBarHintView.java"


# instance fields
.field private defaultBgColor:I

.field private defaultColor:I

.field private drawCount:I

.field private paint:Landroid/graphics/Paint;

.field private sideLenth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/one/video/view/ProgressBarHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/one/video/view/ProgressBarHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->sideLenth:I

    .line 25
    const-string v0, "#7dffe1ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->defaultColor:I

    .line 38
    invoke-direct {p0}, Lcom/boohee/one/video/view/ProgressBarHintView;->initPaint()V

    .line 39
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/boohee/one/video/view/ProgressBarHintView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->drawCount:I

    div-int v2, v4, v5

    .line 64
    .local v2, "margin":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->drawCount:I

    if-gt v0, v4, :cond_0

    .line 65
    mul-int v1, v2, v0

    .line 66
    .local v1, "left":I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget v5, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->sideLenth:I

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/boohee/one/video/view/ProgressBarHintView;->getHeight()I

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "left":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->paint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->defaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    invoke-virtual {p0}, Lcom/boohee/one/video/view/ProgressBarHintView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->defaultBgColor:I

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->defaultBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 57
    iget v0, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->drawCount:I

    if-lez v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcom/boohee/one/video/view/ProgressBarHintView;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 51
    return-void
.end method

.method public setDrawCount(I)V
    .locals 0
    .param p1, "drawCount"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->drawCount:I

    .line 77
    invoke-virtual {p0}, Lcom/boohee/one/video/view/ProgressBarHintView;->invalidate()V

    .line 78
    return-void
.end method

.method public setSideLenth(I)V
    .locals 0
    .param p1, "sideLenth"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/boohee/one/video/view/ProgressBarHintView;->sideLenth:I

    .line 73
    return-void
.end method
