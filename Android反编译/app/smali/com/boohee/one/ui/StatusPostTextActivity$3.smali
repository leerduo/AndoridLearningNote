.class Lcom/boohee/one/ui/StatusPostTextActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "StatusPostTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StatusPostTextActivity;->doSend(Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

.field final synthetic val$isNeedSync:Z

.field final synthetic val$nfId:I

.field final synthetic val$sendFaildIntent:Landroid/app/PendingIntent;

.field final synthetic val$syncData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;Landroid/content/Context;ZLjava/lang/String;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iput-boolean p3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$isNeedSync:Z

    iput-object p4, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$syncData:Ljava/lang/String;

    iput p5, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$nfId:I

    iput-object p6, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$sendFaildIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5~~"

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$sendFaildIntent:Landroid/app/PendingIntent;

    iget v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$nfId:I

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->sendFaild(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$900(Lcom/boohee/one/ui/StatusPostTextActivity;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 628
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 610
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "status_addStatusOK"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 611
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->setResult(I)V

    .line 615
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$isNeedSync:Z

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$syncData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/FilterDataSyncUtil;->syncData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->removeTempFilterRecord(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$400(Lcom/boohee/one/ui/StatusPostTextActivity;Landroid/content/Context;)V

    .line 618
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    iget v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$3;->val$nfId:I

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->sendSuccess(I)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$1000(Lcom/boohee/one/ui/StatusPostTextActivity;I)V

    .line 620
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "post_success"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 621
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 632
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 633
    return-void
.end method
