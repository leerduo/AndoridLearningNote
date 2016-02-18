.class Lcom/boohee/food/FoodListActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "FoodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodListActivity;->deleteEating(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodListActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodListActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/boohee/food/FoodListActivity$4;->this$0:Lcom/boohee/food/FoodListActivity;

    iput p3, p0, Lcom/boohee/food/FoodListActivity$4;->val$position:I

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 187
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$4;->this$0:Lcom/boohee/food/FoodListActivity;

    # getter for: Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/food/FoodListActivity;->access$600(Lcom/boohee/food/FoodListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/boohee/food/FoodListActivity$4;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$4;->this$0:Lcom/boohee/food/FoodListActivity;

    # invokes: Lcom/boohee/food/FoodListActivity;->initView()V
    invoke-static {v0}, Lcom/boohee/food/FoodListActivity;->access$400(Lcom/boohee/food/FoodListActivity;)V

    .line 189
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/DietEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/DietEvent;-><init>()V

    iget-object v2, p0, Lcom/boohee/food/FoodListActivity$4;->this$0:Lcom/boohee/food/FoodListActivity;

    # getter for: Lcom/boohee/food/FoodListActivity;->mTimeType:I
    invoke-static {v2}, Lcom/boohee/food/FoodListActivity;->access$700(Lcom/boohee/food/FoodListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/DietEvent;->setTimeType(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v1

    iget v2, p0, Lcom/boohee/food/FoodListActivity$4;->val$position:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/DietEvent;->setIndex(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/DietEvent;->setEditType(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$4;->this$0:Lcom/boohee/food/FoodListActivity;

    # invokes: Lcom/boohee/food/FoodListActivity;->refreshTotal()V
    invoke-static {v0}, Lcom/boohee/food/FoodListActivity;->access$500(Lcom/boohee/food/FoodListActivity;)V

    .line 191
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 196
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$4;->this$0:Lcom/boohee/food/FoodListActivity;

    invoke-virtual {v0}, Lcom/boohee/food/FoodListActivity;->dismissLoading()V

    .line 197
    return-void
.end method
