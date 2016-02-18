.class Lcom/boohee/food/FoodDetailActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "FoodDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->requestData()V
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
    .line 330
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p1    # "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v0}, Lcom/boohee/model/FoodInfo;->parse(Ljava/lang/String;)Lcom/boohee/model/FoodInfo;

    move-result-object v0

    # setter for: Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;
    invoke-static {v1, v0}, Lcom/boohee/food/FoodDetailActivity;->access$002(Lcom/boohee/food/FoodDetailActivity;Lcom/boohee/model/FoodInfo;)Lcom/boohee/model/FoodInfo;

    .line 334
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;
    invoke-static {v0}, Lcom/boohee/food/FoodDetailActivity;->access$000(Lcom/boohee/food/FoodDetailActivity;)Lcom/boohee/model/FoodInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # invokes: Lcom/boohee/food/FoodDetailActivity;->initData()V
    invoke-static {v0}, Lcom/boohee/food/FoodDetailActivity;->access$200(Lcom/boohee/food/FoodDetailActivity;)V

    .line 336
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # invokes: Lcom/boohee/food/FoodDetailActivity;->changeUnitInDataList()V
    invoke-static {v0}, Lcom/boohee/food/FoodDetailActivity;->access$100(Lcom/boohee/food/FoodDetailActivity;)V

    .line 337
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/food/FoodDetailActivity;->access$300(Lcom/boohee/food/FoodDetailActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/food/FoodDetailActivity;->isFavorite(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/food/FoodDetailActivity;->access$400(Lcom/boohee/food/FoodDetailActivity;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # invokes: Lcom/boohee/food/FoodDetailActivity;->checkGuide()V
    invoke-static {v0}, Lcom/boohee/food/FoodDetailActivity;->access$500(Lcom/boohee/food/FoodDetailActivity;)V

    .line 342
    :goto_1
    return-void

    .line 333
    .restart local p1    # "obj":Lorg/json/JSONObject;
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "obj":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_1
    const-string v0, "Data error!"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$3;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/food/FoodDetailActivity;->dismissLoading()V

    .line 347
    return-void
.end method
