.class Lcom/boohee/account/ChangePasswordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ChangePasswordActivity;->changePwd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/ChangePasswordActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/boohee/account/ChangePasswordActivity$1;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 95
    const-string v0, "\u4fee\u6539\u5bc6\u7801\u6210\u529f"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity$1;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ChangePasswordActivity;->finish()V

    .line 97
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 102
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity$1;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ChangePasswordActivity;->dismissLoading()V

    .line 103
    return-void
.end method
