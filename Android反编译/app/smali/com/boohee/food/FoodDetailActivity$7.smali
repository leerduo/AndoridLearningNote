.class Lcom/boohee/food/FoodDetailActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "FoodDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->isFavorite(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$7;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 392
    if-eqz p1, :cond_0

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 394
    .local v1, "whetherLiked":Z
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity$7;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/boohee/food/FoodDetailActivity;->access$700(Lcom/boohee/food/FoodDetailActivity;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity$7;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v2}, Lcom/boohee/food/FoodDetailActivity;->access$700(Lcom/boohee/food/FoodDetailActivity;)Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 396
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 397
    const v2, 0x7f0701c0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 398
    const v2, 0x7f020248

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "whetherLiked":Z
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local v0    # "item":Landroid/view/MenuItem;
    .restart local v1    # "whetherLiked":Z
    :cond_1
    const v2, 0x7f0701d2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 401
    const v2, 0x7f020249

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 410
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$7;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/food/FoodDetailActivity;->dismissLoading()V

    .line 411
    return-void
.end method
