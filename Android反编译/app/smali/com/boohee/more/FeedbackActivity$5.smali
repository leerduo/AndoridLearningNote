.class Lcom/boohee/more/FeedbackActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/FeedbackActivity;->sendPictureMessage(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/model/Picture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/FeedbackActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 301
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 302
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$800(Lcom/boohee/more/FeedbackActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 304
    :try_start_0
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "created_at":Ljava/lang/String;
    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-static {v0, v4}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 306
    .local v1, "date":Ljava/util/Date;
    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v1, v4}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_2

    .line 308
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->tip_index:I
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$900(Lcom/boohee/more/FeedbackActivity;)I

    move-result v4

    if-nez v4, :cond_0

    .line 309
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1000(Lcom/boohee/more/FeedbackActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070233

    invoke-static {v4, v5}, Lcom/boohee/utils/Helper;->showLong(Landroid/content/Context;I)V

    .line 310
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # operator++ for: Lcom/boohee/more/FeedbackActivity;->tip_index:I
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$908(Lcom/boohee/more/FeedbackActivity;)I

    .line 312
    :cond_0
    new-instance v3, Lcom/boohee/model/Feedback;

    const-string v4, "shuju"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Lcom/boohee/model/Feedback;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    .local v3, "newFeedBack":Lcom/boohee/model/Feedback;
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1100(Lcom/boohee/more/FeedbackActivity;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 314
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1100(Lcom/boohee/more/FeedbackActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/boohee/model/Feedback;->setSmall_photo_url(Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1100(Lcom/boohee/more/FeedbackActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/boohee/model/Feedback;->setBig_photo_url(Ljava/lang/String;)V

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1200(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/boohee/model/Feedback;->m:Ljava/lang/String;

    .line 318
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->adapter:Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1300(Lcom/boohee/more/FeedbackActivity;)Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->notifyDataSetChanged()V

    .line 320
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->list:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1400(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 321
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1200(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    const/4 v5, 0x0

    # setter for: Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v4, v5}, Lcom/boohee/more/FeedbackActivity;->access$1102(Lcom/boohee/more/FeedbackActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 324
    .end local v3    # "newFeedBack":Lcom/boohee/model/Feedback;
    :cond_2
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v4}, Lcom/boohee/more/FeedbackActivity;->dismissLoading()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "created_at":Ljava/lang/String;
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/more/FeedbackActivity;->access$1500(Lcom/boohee/more/FeedbackActivity;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5~"

    invoke-static {v4, v5}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 327
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    # setter for: Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/boohee/more/FeedbackActivity;->access$1102(Lcom/boohee/more/FeedbackActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 328
    iget-object v4, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v4}, Lcom/boohee/more/FeedbackActivity;->dismissLoading()V

    .line 329
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 336
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->dismissLoading()V

    .line 337
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$5;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->startTimer()V

    .line 338
    return-void
.end method
