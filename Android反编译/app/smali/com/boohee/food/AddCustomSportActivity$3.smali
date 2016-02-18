.class Lcom/boohee/food/AddCustomSportActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddCustomSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCustomSportActivity;->createCustomSport(Ljava/lang/String;Ljava/lang/String;FF)V
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
    .line 214
    iput-object p1, p0, Lcom/boohee/food/AddCustomSportActivity$3;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 218
    const-class v1, Lcom/boohee/model/CustomSport;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CustomSport;

    .line 219
    .local v0, "customSport":Lcom/boohee/model/CustomSport;
    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/CustomSportEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/CustomSportEvent;-><init>()V

    invoke-virtual {v2, v0}, Lcom/boohee/one/event/CustomSportEvent;->setCustomSport(Lcom/boohee/model/CustomSport;)Lcom/boohee/one/event/CustomSportEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity$3;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    # invokes: Lcom/boohee/food/AddCustomSportActivity;->createActivity(Lcom/boohee/model/CustomSport;)V
    invoke-static {v1, v0}, Lcom/boohee/food/AddCustomSportActivity;->access$300(Lcom/boohee/food/AddCustomSportActivity;Lcom/boohee/model/CustomSport;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 229
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity$3;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCustomSportActivity;->dismissLoading()V

    .line 230
    return-void
.end method
