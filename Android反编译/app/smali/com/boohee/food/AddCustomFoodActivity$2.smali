.class Lcom/boohee/food/AddCustomFoodActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddCustomFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCustomFoodActivity;->createCustomFood(Ljava/lang/String;Ljava/lang/String;FF)V
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
    .line 202
    iput-object p1, p0, Lcom/boohee/food/AddCustomFoodActivity$2;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 206
    const-class v1, Lcom/boohee/model/CustomFood;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CustomFood;

    .line 207
    .local v0, "customFood":Lcom/boohee/model/CustomFood;
    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/CustomFoodEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/CustomFoodEvent;-><init>()V

    invoke-virtual {v2, v0}, Lcom/boohee/one/event/CustomFoodEvent;->setCustomFood(Lcom/boohee/model/CustomFood;)Lcom/boohee/one/event/CustomFoodEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lcom/boohee/food/AddCustomFoodActivity$2;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    # getter for: Lcom/boohee/food/AddCustomFoodActivity;->isAddDiet:Z
    invoke-static {v1}, Lcom/boohee/food/AddCustomFoodActivity;->access$000(Lcom/boohee/food/AddCustomFoodActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/boohee/food/AddCustomFoodActivity$2;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    # invokes: Lcom/boohee/food/AddCustomFoodActivity;->createEating(Lcom/boohee/model/CustomFood;)V
    invoke-static {v1, v0}, Lcom/boohee/food/AddCustomFoodActivity;->access$100(Lcom/boohee/food/AddCustomFoodActivity;Lcom/boohee/model/CustomFood;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v1, "\u6dfb\u52a0\u6210\u529f"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lcom/boohee/food/AddCustomFoodActivity$2;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    invoke-virtual {v1}, Lcom/boohee/food/AddCustomFoodActivity;->finish()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 222
    iget-object v0, p0, Lcom/boohee/food/AddCustomFoodActivity$2;->this$0:Lcom/boohee/food/AddCustomFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCustomFoodActivity;->dismissLoading()V

    .line 223
    return-void
.end method
