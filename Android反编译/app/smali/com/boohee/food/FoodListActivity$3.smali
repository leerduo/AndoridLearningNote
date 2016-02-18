.class Lcom/boohee/food/FoodListActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "FoodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodListActivity;->deletePhotoEating(Lcom/boohee/model/RecordPhoto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodListActivity;

.field final synthetic val$index:I

.field final synthetic val$recordPhoto:Lcom/boohee/model/RecordPhoto;


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodListActivity;Landroid/content/Context;Lcom/boohee/model/RecordPhoto;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/boohee/food/FoodListActivity$3;->this$0:Lcom/boohee/food/FoodListActivity;

    iput-object p3, p0, Lcom/boohee/food/FoodListActivity$3;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    iput p4, p0, Lcom/boohee/food/FoodListActivity$3;->val$index:I

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 162
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$3;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/PhotoDietEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/PhotoDietEvent;-><init>()V

    iget-object v2, p0, Lcom/boohee/food/FoodListActivity$3;->val$recordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v2, v2, Lcom/boohee/model/RecordPhoto;->time_type:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/PhotoDietEvent;->setTimeType(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v1

    iget v2, p0, Lcom/boohee/food/FoodListActivity$3;->val$index:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/PhotoDietEvent;->setIndex(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/PhotoDietEvent;->setEditType(I)Lcom/boohee/one/event/PhotoDietEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$3;->this$0:Lcom/boohee/food/FoodListActivity;

    # invokes: Lcom/boohee/food/FoodListActivity;->initView()V
    invoke-static {v0}, Lcom/boohee/food/FoodListActivity;->access$400(Lcom/boohee/food/FoodListActivity;)V

    .line 165
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$3;->this$0:Lcom/boohee/food/FoodListActivity;

    # invokes: Lcom/boohee/food/FoodListActivity;->refreshTotal()V
    invoke-static {v0}, Lcom/boohee/food/FoodListActivity;->access$500(Lcom/boohee/food/FoodListActivity;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 172
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity$3;->this$0:Lcom/boohee/food/FoodListActivity;

    invoke-virtual {v0}, Lcom/boohee/food/FoodListActivity;->dismissLoading()V

    .line 173
    return-void
.end method
