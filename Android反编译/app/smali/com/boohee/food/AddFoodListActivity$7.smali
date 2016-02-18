.class Lcom/boohee/food/AddFoodListActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddFoodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddFoodListActivity;->setTranslateAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddFoodListActivity;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/boohee/food/AddFoodListActivity;I)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$7;->this$0:Lcom/boohee/food/AddFoodListActivity;

    iput p2, p0, Lcom/boohee/food/AddFoodListActivity$7;->val$total:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v0, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 278
    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity$7;->this$0:Lcom/boohee/food/AddFoodListActivity;

    iget-object v1, v1, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity$7;->this$0:Lcom/boohee/food/AddFoodListActivity;

    iget-object v1, v1, Lcom/boohee/food/AddFoodListActivity;->iv_diet_cart:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 280
    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity$7;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v1}, Lcom/boohee/food/AddFoodListActivity;->access$000(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v1

    iget v2, p0, Lcom/boohee/food/AddFoodListActivity$7;->val$total:I

    invoke-virtual {v1, v2}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 281
    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity$7;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v1}, Lcom/boohee/food/AddFoodListActivity;->access$000(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v1

    iget v2, p0, Lcom/boohee/food/AddFoodListActivity$7;->val$total:I

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 282
    return-void
.end method
