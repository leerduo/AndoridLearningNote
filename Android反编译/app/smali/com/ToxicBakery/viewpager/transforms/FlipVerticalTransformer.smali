.class public Lcom/ToxicBakery/viewpager/transforms/FlipVerticalTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "FlipVerticalTransformer.java"


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
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    const/high16 v1, -0x3ccc0000    # -180.0f

    mul-float v0, v1, p2

    .line 27
    .local v0, "rotation":F
    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 31
    return-void

    .line 27
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
