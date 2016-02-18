.class Lcom/boohee/one/ui/CheckPhoneActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "CheckPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CheckPhoneActivity;->rightAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CheckPhoneActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/CheckPhoneActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$4;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 191
    const-string v0, "\u9a8c\u8bc1\u6210\u529f\uff01"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$4;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->stopTimer()V
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$700(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    .line 193
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$4;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/CheckPhoneActivity;->setResult(I)V

    .line 194
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$4;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->finish()V

    .line 195
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 200
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$4;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->dismissLoading()V

    .line 201
    return-void
.end method
