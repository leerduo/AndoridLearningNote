.class Lcom/boohee/food/CustomFoodListActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "CustomFoodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/CustomFoodListActivity;->sendDeleteCollection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/CustomFoodListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/CustomFoodListActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/boohee/food/CustomFoodListActivity$3;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/boohee/food/CustomFoodListActivity$3;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    const/4 v1, 0x0

    # invokes: Lcom/boohee/food/CustomFoodListActivity;->initData(Z)V
    invoke-static {v0, v1}, Lcom/boohee/food/CustomFoodListActivity;->access$500(Lcom/boohee/food/CustomFoodListActivity;Z)V

    .line 193
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/MyFoodEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/MyFoodEvent;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/MyFoodEvent;->setFlag(I)Lcom/boohee/one/event/MyFoodEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/boohee/food/CustomFoodListActivity$3;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    invoke-virtual {v0}, Lcom/boohee/food/CustomFoodListActivity;->dismissLoading()V

    .line 199
    return-void
.end method
