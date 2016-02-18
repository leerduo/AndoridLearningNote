.class Lcom/boohee/food/AddFoodListActivity$6;
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

.field final synthetic val$set2:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddFoodListActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$6;->this$0:Lcom/boohee/food/AddFoodListActivity;

    iput-object p2, p0, Lcom/boohee/food/AddFoodListActivity$6;->val$set2:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$6;->val$set2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 270
    return-void
.end method
