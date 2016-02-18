.class Lcom/boohee/one/onekey/CityListActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/CityListActivity;->sendLocationToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/CityListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/CityListActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/boohee/one/onekey/CityListActivity$3;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 233
    const v0, 0x7f070159

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 235
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "refresh_one_key_status"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity$3;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-static {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 237
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity$3;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/CityListActivity;->finish()V

    .line 238
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity$3;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/CityListActivity;->dismissLoading()V

    .line 243
    return-void
.end method
