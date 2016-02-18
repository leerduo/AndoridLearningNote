.class Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;
.super Lme/dm7/barcodescanner/core/ViewFinderView;
.source "ScannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/ScannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomViewFinderView"
.end annotation


# static fields
.field public static final TRADE_MARK_TEXT:Ljava/lang/String; = "\u8bf7\u5c06\u7ea2\u7ebf\u4e0e\u6761\u5f62\u7801\u5782\u76f4\uff0c\u5373\u53ef\u81ea\u52a8\u626b\u63cf"

.field public static final TRADE_MARK_TEXT_SIZE_SP:I = 0xe


# instance fields
.field public final PAINT:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    .line 88
    invoke-direct {p0}, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    .line 93
    invoke-direct {p0}, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->init()V

    .line 94
    return-void
.end method

.method private drawTradeMark(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    .line 111
    invoke-virtual {p0}, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    .local v0, "framingRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 116
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v6, v7

    add-float v5, v6, v8

    .line 117
    .local v5, "tradeMarkTop":F
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v6

    .line 118
    .local v3, "tradeMarkLeft":F
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v6

    .line 124
    .local v4, "tradeMarkRight":F
    :goto_0
    iget-object v6, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    const-string v7, "\u8bf7\u5c06\u7ea2\u7ebf\u4e0e\u6761\u5f62\u7801\u5782\u76f4\uff0c\u5373\u53ef\u81ea\u52a8\u626b\u63cf"

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 125
    .local v2, "textWidth":F
    sub-float v6, v4, v3

    sub-float/2addr v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    sub-float v6, v4, v3

    sub-float/2addr v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v1, v3, v6

    .line 128
    .local v1, "offset":F
    :goto_1
    const-string v6, "\u8bf7\u5c06\u7ea2\u7ebf\u4e0e\u6761\u5f62\u7801\u5782\u76f4\uff0c\u5373\u53ef\u81ea\u52a8\u626b\u63cf"

    iget-object v7, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    return-void

    .line 120
    .end local v1    # "offset":F
    .end local v2    # "textWidth":F
    .end local v3    # "tradeMarkLeft":F
    .end local v4    # "tradeMarkRight":F
    .end local v5    # "tradeMarkTop":F
    :cond_0
    const/high16 v5, 0x41200000    # 10.0f

    .line 121
    .restart local v5    # "tradeMarkTop":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    sub-float/2addr v6, v7

    sub-float v3, v6, v8

    .line 122
    .restart local v3    # "tradeMarkLeft":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    sub-float/2addr v6, v7

    sub-float v4, v6, v8

    .restart local v4    # "tradeMarkRight":F
    goto :goto_0

    .restart local v2    # "textWidth":F
    :cond_1
    move v1, v3

    .line 125
    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 101
    .local v0, "textPixelSize":F
    iget-object v1, p0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;->drawTradeMark(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method
