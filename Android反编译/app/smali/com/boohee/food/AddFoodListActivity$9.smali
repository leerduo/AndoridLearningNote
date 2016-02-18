.class Lcom/boohee/food/AddFoodListActivity$9;
.super Ljava/lang/Object;
.source "AddFoodListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddFoodListActivity;->showUploadDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddFoodListActivity;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddFoodListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$9;->this$0:Lcom/boohee/food/AddFoodListActivity;

    iput-object p2, p0, Lcom/boohee/food/AddFoodListActivity$9;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$9;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$1000(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_searchfood_assistadd"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$9;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$1100(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddFoodListActivity$9;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/food/UploadFoodActivity;->comeOnBabyWithCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    return-void
.end method
