.class public Lcom/ToxicBakery/viewpager/transforms/RotateUpTransformer;
.super Lcom/ToxicBakery/viewpager/transforms/ABaseTransformer;
.source "RotateUpTransformer.java"


# static fields
.field private static final ROT_MOD:F = -15.0f


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
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 28
    .local v1, "width":F
    const/high16 v2, -0x3e900000    # -15.0f

    mul-float v0, v2, p2

    .line 30
    .local v0, "rotation":F
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 31
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 34
    return-void
.end method
