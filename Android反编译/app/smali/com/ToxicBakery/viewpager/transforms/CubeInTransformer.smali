.class public Lcom/ToxicBakery/viewpager/transforms/CubeInTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "CubeInTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public isPagingEnabled()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v1, 0x0

    .line 26
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 28
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 29
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method
