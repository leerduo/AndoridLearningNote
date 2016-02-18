.class Lcom/boohee/account/ResetPasswordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "ResetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ResetPasswordActivity;->resetPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/ResetPasswordActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/boohee/account/ResetPasswordActivity$1;->this$0:Lcom/boohee/account/ResetPasswordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 94
    const-string v0, "\u5df2\u7ecf\u6210\u529f\u91cd\u7f6e\u5bc6\u7801,\u8bf7\u767b\u5f55"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity$1;->this$0:Lcom/boohee/account/ResetPasswordActivity;

    # getter for: Lcom/boohee/account/ResetPasswordActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/account/ResetPasswordActivity;->access$000(Lcom/boohee/account/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity$1;->this$0:Lcom/boohee/account/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ResetPasswordActivity;->finish()V

    .line 97
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 102
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity$1;->this$0:Lcom/boohee/account/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ResetPasswordActivity;->dismissLoading()V

    .line 103
    return-void
.end method
