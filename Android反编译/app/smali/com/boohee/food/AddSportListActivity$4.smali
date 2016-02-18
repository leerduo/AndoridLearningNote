.class Lcom/boohee/food/AddSportListActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddSportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddSportListActivity;->setTranslateAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddSportListActivity;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/boohee/food/AddSportListActivity;I)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/boohee/food/AddSportListActivity$4;->this$0:Lcom/boohee/food/AddSportListActivity;

    iput p2, p0, Lcom/boohee/food/AddSportListActivity$4;->val$total:I

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

    .line 194
    iget-object v1, p0, Lcom/boohee/food/AddSportListActivity$4;->this$0:Lcom/boohee/food/AddSportListActivity;

    iget-object v1, v1, Lcom/boohee/food/AddSportListActivity;->iv_sport_cart:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/boohee/food/AddSportListActivity$4;->this$0:Lcom/boohee/food/AddSportListActivity;

    iget-object v1, v1, Lcom/boohee/food/AddSportListActivity;->iv_sport_cart:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 196
    iget-object v1, p0, Lcom/boohee/food/AddSportListActivity$4;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v1}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v1

    iget v2, p0, Lcom/boohee/food/AddSportListActivity$4;->val$total:I

    invoke-virtual {v1, v2}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 197
    iget-object v1, p0, Lcom/boohee/food/AddSportListActivity$4;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v1}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v1

    iget v2, p0, Lcom/boohee/food/AddSportListActivity$4;->val$total:I

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 198
    return-void
.end method
