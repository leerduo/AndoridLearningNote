.class Lcom/boohee/one/ui/CheckPhoneActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "CheckPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CheckPhoneActivity;->getCode()V
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
    .line 215
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$5;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "hasError"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 225
    const/16 v0, 0x6b

    if-ne p3, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$5;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->showAlertDialog()V
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$800(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    .line 228
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$5;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->stopTimer()V
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$700(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$5;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->stopTimer()V
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$700(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    goto :goto_0
.end method

.method public ok(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "hasError"    # Z

    .prologue
    .line 219
    const-string v0, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u6210\u529f\uff0c\u8bf7\u7a0d\u540e\uff01"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method
