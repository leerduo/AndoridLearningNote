.class Lcom/boohee/food/EditCameraRecordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "EditCameraRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/EditCameraRecordActivity;->deletePhotoEating()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/EditCameraRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/EditCameraRecordActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/boohee/food/EditCameraRecordActivity$1;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 146
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity$1;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    # getter for: Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;
    invoke-static {v0}, Lcom/boohee/food/EditCameraRecordActivity;->access$000(Lcom/boohee/food/EditCameraRecordActivity;)Lcom/boohee/model/RecordPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/PhotoDietEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/PhotoDietEvent;-><init>()V

    iget-object v2, p0, Lcom/boohee/food/EditCameraRecordActivity$1;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    # getter for: Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;
    invoke-static {v2}, Lcom/boohee/food/EditCameraRecordActivity;->access$000(Lcom/boohee/food/EditCameraRecordActivity;)Lcom/boohee/model/RecordPhoto;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/PhotoDietEvent;->setTimeType(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/EditCameraRecordActivity$1;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    # getter for: Lcom/boohee/food/EditCameraRecordActivity;->mIndex:I
    invoke-static {v2}, Lcom/boohee/food/EditCameraRecordActivity;->access$100(Lcom/boohee/food/EditCameraRecordActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/PhotoDietEvent;->setIndex(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/PhotoDietEvent;->setEditType(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity$1;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/food/EditCameraRecordActivity;->finish()V

    .line 150
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 155
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity$1;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/food/EditCameraRecordActivity;->dismissLoading()V

    .line 156
    return-void
.end method
