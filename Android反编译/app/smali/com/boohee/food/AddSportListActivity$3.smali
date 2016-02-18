.class Lcom/boohee/food/AddSportListActivity$3;
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

.field final synthetic val$set2:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddSportListActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/boohee/food/AddSportListActivity$3;->this$0:Lcom/boohee/food/AddSportListActivity;

    iput-object p2, p0, Lcom/boohee/food/AddSportListActivity$3;->val$set2:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$3;->val$set2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    return-void
.end method
