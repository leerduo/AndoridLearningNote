.class public Lcom/ToxicBakery/viewpager/transforms/ZoomOutTranformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "ZoomOutTranformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransform(Landroid/view/View;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float v0, v2, v1

    .line 26
    .local v0, "scale":F
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 30
    cmpg-float v1, p2, v3

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    cmpl-float v1, p2, v3

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 34
    :cond_1
    return-void

    .line 30
    :cond_2
    sub-float v1, v0, v2

    sub-float v1, v2, v1

    goto :goto_0
.end method
