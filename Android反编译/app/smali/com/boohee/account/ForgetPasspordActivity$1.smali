.class Lcom/boohee/account/ForgetPasspordActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "ForgetPasspordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ForgetPasspordActivity;->resetByEmail()V
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
    .line 67
    iput-object p1, p0, Lcom/boohee/account/ForgetPasspordActivity$1;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 71
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity$1;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    # getter for: Lcom/boohee/account/ForgetPasspordActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/account/ForgetPasspordActivity;->access$000(Lcom/boohee/account/ForgetPasspordActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 72
    const-string v0, "\u5df2\u53d1\u9001\u5230\u60a8\u7684\u90ae\u7bb1"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity$1;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ForgetPasspordActivity;->finish()V

    .line 74
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 79
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity$1;->this$0:Lcom/boohee/account/ForgetPasspordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ForgetPasspordActivity;->dismissLoading()V

    .line 80
    return-void
.end method
