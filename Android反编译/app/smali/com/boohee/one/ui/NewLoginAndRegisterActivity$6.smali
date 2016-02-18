.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->requestCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 475
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 449
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->token:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$502(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # invokes: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->runTimer()V
    invoke-static {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$600(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    .line 453
    :cond_0
    return-void
.end method

.method public ok(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "hasError"    # Z

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;Z)V

    .line 459
    const-string v1, "NewLoginAndRegisterActivity : "

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/boohee/model/ApiError;->getErrorCode(Lorg/json/JSONObject;)I

    move-result v0

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # invokes: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showAlertDialog()V
    invoke-static {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$700(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    .line 465
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 459
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->dismissLoading()V

    .line 470
    return-void
.end method
