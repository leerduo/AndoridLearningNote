.class Lcom/boohee/one/ui/DiamondSignActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "DiamondSignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/DiamondSignActivity;->repair()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/DiamondSignActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/DiamondSignActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity$3;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 172
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$3;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # invokes: Lcom/boohee/one/ui/DiamondSignActivity;->requestCheckNumber()V
    invoke-static {v0}, Lcom/boohee/one/ui/DiamondSignActivity;->access$200(Lcom/boohee/one/ui/DiamondSignActivity;)V

    .line 173
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$3;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    # invokes: Lcom/boohee/one/ui/DiamondSignActivity;->requestRecords()V
    invoke-static {v0}, Lcom/boohee/one/ui/DiamondSignActivity;->access$300(Lcom/boohee/one/ui/DiamondSignActivity;)V

    .line 174
    iget-object v0, p0, Lcom/boohee/one/ui/DiamondSignActivity$3;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/DiamondSignActivity;->repairBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "refresh_one_key_status"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public ok(Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "hasError"    # Z

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;Z)V

    .line 182
    return-void
.end method
