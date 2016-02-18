.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;
.super Ljava/lang/Object;
.source "NewLoginAndRegisterActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->moreLoginAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

.field final synthetic val$tempAlpha:F


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;F)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iput p2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;->val$tempAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 427
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v1, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;->val$tempAlpha:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    return-void

    .line 422
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    return-void
.end method
