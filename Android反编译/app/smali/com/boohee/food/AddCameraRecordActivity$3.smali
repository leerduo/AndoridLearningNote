.class Lcom/boohee/food/AddCameraRecordActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddCameraRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCameraRecordActivity;->postWeight(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddCameraRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddCameraRecordActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/boohee/food/AddCameraRecordActivity$3;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 207
    const-class v1, Lcom/boohee/model/RecordPhoto;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/RecordPhoto;

    .line 208
    .local v0, "recordPhoto":Lcom/boohee/model/RecordPhoto;
    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/PhotoDietEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/PhotoDietEvent;-><init>()V

    iget-object v3, p0, Lcom/boohee/food/AddCameraRecordActivity$3;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    # getter for: Lcom/boohee/food/AddCameraRecordActivity;->mTimeType:I
    invoke-static {v3}, Lcom/boohee/food/AddCameraRecordActivity;->access$200(Lcom/boohee/food/AddCameraRecordActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/PhotoDietEvent;->setTimeType(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/boohee/one/event/PhotoDietEvent;->setRecordPhoto(Lcom/boohee/model/RecordPhoto;)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/PhotoDietEvent;->setEditType(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/AddFinishAnimEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/AddFinishAnimEvent;-><init>()V

    iget-object v3, p0, Lcom/boohee/food/AddCameraRecordActivity$3;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    # getter for: Lcom/boohee/food/AddCameraRecordActivity;->mImagePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/food/AddCameraRecordActivity;->access$300(Lcom/boohee/food/AddCameraRecordActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/AddFinishAnimEvent;->setThumb_image_name(Ljava/lang/String;)Lcom/boohee/one/event/AddFinishAnimEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/boohee/food/AddCameraRecordActivity$3;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-virtual {v1}, Lcom/boohee/food/AddCameraRecordActivity;->finish()V

    .line 213
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 218
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$3;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCameraRecordActivity;->dismissLoading()V

    .line 219
    return-void
.end method
