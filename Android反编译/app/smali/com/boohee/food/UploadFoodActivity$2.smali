.class Lcom/boohee/food/UploadFoodActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "UploadFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/UploadFoodActivity;->uploadToServer(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/UploadFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/UploadFoodActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/boohee/food/UploadFoodActivity$2;->this$0:Lcom/boohee/food/UploadFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 252
    const v0, 0x7f0705ee

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 253
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/MyFoodEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/MyFoodEvent;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/MyFoodEvent;->setFlag(I)Lcom/boohee/one/event/MyFoodEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity$2;->this$0:Lcom/boohee/food/UploadFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/UploadFoodActivity;->finish()V

    .line 255
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity$2;->this$0:Lcom/boohee/food/UploadFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/UploadFoodActivity;->dismissLoading()V

    .line 260
    return-void
.end method
