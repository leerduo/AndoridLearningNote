.class public abstract Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.super Ljava/lang/Object;
.source "ABaseTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final min(FF)F
    .locals 1
    .param p0, "val"    # F
    .param p1, "min"    # F

    .prologue
    .line 125
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "min":F
    :goto_0
    return p1

    .restart local p1    # "min":F
    :cond_0
    move p1, p0

    goto :goto_0
.end method


# virtual methods
.method protected hideOffscreenPages()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected isPagingEnabled()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected onPostTransform(Landroid/view/View;F)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 115
    return-void
.end method

.method protected onPreTransform(Landroid/view/View;F)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v1

    .line 88
    .local v0, "width":F
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 89
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 91
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 92
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 93
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 95
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 96
    invoke-virtual {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;->isPagingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    invoke-virtual {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;->hideOffscreenPages()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-lez v1, :cond_0

    cmpl-float v1, p2, v3

    if-ltz v1, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 103
    :goto_2
    return-void

    .line 96
    :cond_1
    neg-float v1, v0

    mul-float/2addr v1, p2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 99
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method protected abstract onTransform(Landroid/view/View;F)V
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;->onPreTransform(Landroid/view/View;F)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;->onTransform(Landroid/view/View;F)V

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;->onPostTransform(Landroid/view/View;F)V

    .line 50
    return-void
.end method
