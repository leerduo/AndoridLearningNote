.class public Lcom/ToxicBakery/viewpager/transforms/ZoomOutSlideTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "ZoomOutSlideTransformer.java"


# static fields
.field private static final MIN_ALPHA:F = 0.5f

.field private static final MIN_SCALE:F = 0.85f


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
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const v8, 0x3f59999a    # 0.85f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 28
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, p2, v4

    if-gez v4, :cond_0

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_1

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 31
    .local v0, "height":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 32
    .local v2, "scaleFactor":F
    sub-float v4, v5, v2

    mul-float/2addr v4, v0

    div-float v3, v4, v6

    .line 33
    .local v3, "vertMargin":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    div-float v1, v4, v6

    .line 36
    .local v1, "horzMargin":F
    mul-float v4, v7, v0

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    .line 38
    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 39
    div-float v4, v3, v6

    sub-float v4, v1, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 49
    sub-float v4, v2, v8

    const v5, 0x3e199998    # 0.14999998f

    div-float/2addr v4, v5

    mul-float/2addr v4, v7

    add-float/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .end local v0    # "height":F
    .end local v1    # "horzMargin":F
    .end local v2    # "scaleFactor":F
    .end local v3    # "vertMargin":F
    :cond_1
    return-void

    .line 41
    .restart local v0    # "height":F
    .restart local v1    # "horzMargin":F
    .restart local v2    # "scaleFactor":F
    .restart local v3    # "vertMargin":F
    :cond_2
    neg-float v4, v1

    div-float v5, v3, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
