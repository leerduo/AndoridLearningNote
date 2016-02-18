.class public Lcom/ToxicBakery/viewpager/transforms/ForegroundToBackgroundTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "ForegroundToBackgroundTransformer.java"


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
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 26
    .local v0, "height":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 27
    .local v2, "width":F
    cmpl-float v4, p2, v6

    if-lez v4, :cond_0

    :goto_0
    invoke-static {v3, v5}, Lcom/ToxicBakery/viewpager/transforms/ForegroundToBackgroundTransformer;->min(FF)F

    move-result v1

    .line 29
    .local v1, "scale":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 31
    mul-float v3, v2, v5

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 32
    mul-float v3, v0, v5

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 33
    cmpl-float v3, p2, v6

    if-lez v3, :cond_1

    mul-float v3, v2, p2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 34
    return-void

    .line 27
    .end local v1    # "scale":F
    :cond_0
    add-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_0

    .line 33
    .restart local v1    # "scale":F
    :cond_1
    neg-float v3, v2

    mul-float/2addr v3, p2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    goto :goto_1
.end method
