.class Lcom/boohee/account/ForgetPasspordActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ForgetPasspordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ForgetPasspordActivity;->resetByPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/ForgetPasspordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/ForgetPasspordActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/boohee/account/ForgetPasspordActivity$2;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 91
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity$2;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    # getter for: Lcom/boohee/account/ForgetPasspordActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/account/ForgetPasspordActivity;->access$100(Lcom/boohee/account/ForgetPasspordActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/account/ResetPasswordActivity;->comeOn(Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity$2;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ForgetPasspordActivity;->finish()V

    .line 93
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 98
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity$2;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ForgetPasspordActivity;->dismissLoading()V

    .line 99
    return-void
.end method
