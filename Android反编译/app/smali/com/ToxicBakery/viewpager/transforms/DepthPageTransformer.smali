.class public Lcom/ToxicBakery/viewpager/transforms/DepthPageTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "DepthPageTransformer.java"


# static fields
.field private static final MIN_SCALE:F = 0.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected isPagingEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 27
    cmpg-float v1, p2, v2

    if-gtz v1, :cond_1

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    cmpg-float v1, p2, v4

    if-gtz v1, :cond_0

    .line 32
    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 33
    .local v0, "scaleFactor":F
    sub-float v1, v4, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 34
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    neg-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method
