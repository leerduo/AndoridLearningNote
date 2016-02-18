.class Lcom/boohee/food/CollectionActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "CollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/CollectionActivity;->sendDeleteCollection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/CollectionActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/CollectionActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/boohee/food/CollectionActivity$4;->this$0:Lcom/boohee/food/CollectionActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity$4;->this$0:Lcom/boohee/food/CollectionActivity;

    # invokes: Lcom/boohee/food/CollectionActivity;->initData(Z)V
    invoke-static {v0, v2}, Lcom/boohee/food/CollectionActivity;->access$600(Lcom/boohee/food/CollectionActivity;Z)V

    .line 218
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/MyFoodEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/MyFoodEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/MyFoodEvent;->setFlag(I)Lcom/boohee/one/event/MyFoodEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity$4;->this$0:Lcom/boohee/food/CollectionActivity;

    invoke-virtual {v0}, Lcom/boohee/food/CollectionActivity;->dismissLoading()V

    .line 223
    return-void
.end method
