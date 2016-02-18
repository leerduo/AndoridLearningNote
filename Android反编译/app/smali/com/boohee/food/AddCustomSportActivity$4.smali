.class Lcom/boohee/food/AddCustomSportActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddCustomSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCustomSportActivity;->createActivity(Lcom/boohee/model/CustomSport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddCustomSportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddCustomSportActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/boohee/food/AddCustomSportActivity$4;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 243
    const-string v1, "\u6dfb\u52a0\u6210\u529f"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {p1}, Lcom/boohee/model/RecordSport;->parse(Lorg/json/JSONObject;)Lcom/boohee/model/RecordSport;

    move-result-object v0

    .line 245
    .local v0, "recordSport":Lcom/boohee/model/RecordSport;
    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/SportEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/SportEvent;-><init>()V

    invoke-virtual {v2, v0}, Lcom/boohee/one/event/SportEvent;->setRecordSport(Lcom/boohee/model/RecordSport;)Lcom/boohee/one/event/SportEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/SportEvent;->setEditType(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/AddFinishAnimEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/AddFinishAnimEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity$4;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    invoke-virtual {v1}, Lcom/boohee/food/AddCustomSportActivity;->finish()V

    .line 250
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 255
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity$4;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCustomSportActivity;->dismissLoading()V

    .line 256
    return-void
.end method
