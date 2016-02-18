.class public Lcom/ToxicBakery/viewpager/transforms/ZoomInTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "ZoomInTransformer.java"


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

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 25
    cmpg-float v2, p2, v1

    if-gez v2, :cond_1

    add-float v0, p2, v3

    .line 26
    .local v0, "scale":F
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 30
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    cmpl-float v2, p2, v3

    if-lez v2, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    return-void

    .line 25
    .end local v0    # "scale":F
    :cond_1
    sub-float v2, v3, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 30
    .restart local v0    # "scale":F
    :cond_2
    sub-float v1, v0, v3

    sub-float v1, v3, v1

    goto :goto_1
.end method
