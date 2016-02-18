.class Lcom/boohee/one/onekey/MobileCheckActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "MobileCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/MobileCheckActivity;->checkCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/MobileCheckActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/MobileCheckActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/boohee/one/onekey/MobileCheckActivity$2;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 182
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/boohee/model/ApiError;->getErrorCode(Lorg/json/JSONObject;)I

    move-result v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$2;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    # invokes: Lcom/boohee/one/onekey/MobileCheckActivity;->showAlertDialog()V
    invoke-static {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->access$200(Lcom/boohee/one/onekey/MobileCheckActivity;)V

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    const v0, 0x7f070390

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 192
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "refresh_one_key_status"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$2;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-static {v0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 195
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$2;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->finish()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$2;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->dismissLoading()V

    .line 201
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$2;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/MobileCheckActivity;->btNext:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    return-void
.end method
