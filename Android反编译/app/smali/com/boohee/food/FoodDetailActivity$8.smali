.class Lcom/boohee/food/FoodDetailActivity$8;
.super Lcom/boohee/one/http/JsonCallback;
.source "FoodDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->deleteFavorite(Ljava/lang/String;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodDetailActivity;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodDetailActivity;Landroid/content/Context;Landroid/view/MenuItem;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$8;->this$0:Lcom/boohee/food/FoodDetailActivity;

    iput-object p3, p0, Lcom/boohee/food/FoodDetailActivity$8;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 427
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$8;->val$item:Landroid/view/MenuItem;

    const v1, 0x7f0701d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 428
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$8;->val$item:Landroid/view/MenuItem;

    const v1, 0x7f020249

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 429
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/FoodCollectEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/FoodCollectEvent;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/FoodCollectEvent;->setIsCollect(Z)Lcom/boohee/one/event/FoodCollectEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 434
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 435
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$8;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/food/FoodDetailActivity;->dismissLoading()V

    .line 436
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$8;->val$item:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$8;->val$item:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 439
    :cond_0
    return-void
.end method
