.class Lcom/boohee/more/FeedbackActivity$8;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/FeedbackActivity;->uploadImage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$8;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string v0, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5~~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$8;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->dismissLoading()V

    .line 426
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 401
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$8;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->showLoading()V

    .line 406
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    const-string v1, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff01"

    invoke-virtual {p0, v1}, Lcom/boohee/more/FeedbackActivity$8;->onFailed(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 414
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboohee/lib/uploader/model/Picture;

    .line 415
    .local v0, "picture":Lboohee/lib/uploader/model/Picture;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    .line 416
    :cond_2
    const-string v1, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff01"

    invoke-virtual {p0, v1}, Lcom/boohee/more/FeedbackActivity$8;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity$8;->this$0:Lcom/boohee/more/FeedbackActivity;

    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity$8;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity;->access$1200(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/more/FeedbackActivity$8;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->fromWhere:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/more/FeedbackActivity;->access$1600(Lcom/boohee/more/FeedbackActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/boohee/more/FeedbackActivity;->sendPictureMessage(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/model/Picture;)V

    goto :goto_0
.end method
