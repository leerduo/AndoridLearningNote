.class public Lcom/ToxicBakery/viewpager/transforms/ScaleInOutTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "ScaleInOutTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransform(Landroid/view/View;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 9
    cmpg-float v1, p2, v2

    if-gez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 11
    cmpg-float v1, p2, v2

    if-gez v1, :cond_1

    add-float v0, v4, p2

    .line 12
    .local v0, "scale":F
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 14
    return-void

    .line 9
    .end local v0    # "scale":F
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    .line 11
    :cond_1
    sub-float v0, v4, p2

    goto :goto_1
.end method
