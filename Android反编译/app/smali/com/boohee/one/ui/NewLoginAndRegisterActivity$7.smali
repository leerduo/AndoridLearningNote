.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->checkCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

.field final synthetic val$cellPhone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iput-object p3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->val$cellPhone:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 507
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->val$cellPhone:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/CompleteRegisterActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->finish()V

    .line 511
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->dismissLoading()V

    .line 516
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 517
    return-void
.end method
