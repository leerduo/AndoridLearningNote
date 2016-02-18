.class Lcom/boohee/food/AddCustomFoodActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddCustomFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCustomFoodActivity;->createEating(Lcom/boohee/model/CustomFood;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddCustomFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddCustomFoodActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/boohee/food/AddCustomFoodActivity$3;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 236
    const-string v1, "\u6dfb\u52a0\u6210\u529f"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 237
    const-class v1, Lcom/boohee/model/RecordFood;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/RecordFood;

    .line 238
    .local v0, "recordFood":Lcom/boohee/model/RecordFood;
    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/DietEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/DietEvent;-><init>()V

    iget v3, v0, Lcom/boohee/model/RecordFood;->time_type:I

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/DietEvent;->setTimeType(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/boohee/one/event/DietEvent;->setRecordFood(Lcom/boohee/model/RecordFood;)Lcom/boohee/one/event/DietEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/DietEvent;->setEditType(I)Lcom/boohee/one/event/DietEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/AddFinishAnimEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/AddFinishAnimEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/boohee/food/AddCustomFoodActivity$3;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    invoke-virtual {v1}, Lcom/boohee/food/AddCustomFoodActivity;->finish()V

    .line 243
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 248
    iget-object v0, p0, Lcom/boohee/food/AddCustomFoodActivity$3;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCustomFoodActivity;->dismissLoading()V

    .line 249
    return-void
.end method
