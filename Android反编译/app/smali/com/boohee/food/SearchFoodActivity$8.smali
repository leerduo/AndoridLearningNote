.class Lcom/boohee/food/SearchFoodActivity$8;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->initHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$8;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iput-object p2, p0, Lcom/boohee/food/SearchFoodActivity$8;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$8;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity$8;->val$title:Ljava/lang/String;

    # setter for: Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/food/SearchFoodActivity;->access$1102(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$8;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity$8;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/food/SearchFoodActivity;->access$1100(Lcom/boohee/food/SearchFoodActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/food/SearchFoodActivity;->doFastSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/food/SearchFoodActivity;->access$1200(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V

    .line 399
    return-void
.end method
