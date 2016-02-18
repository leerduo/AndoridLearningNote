.class Lcom/boohee/one/onekey/OneKeyContactActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "OneKeyContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 321
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 323
    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$800()Ljava/lang/String;

    move-result-object v3

    instance-of v2, p1, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$900(Lcom/boohee/one/onekey/OneKeyContactActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 326
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, p1, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local p1    # "object":Lorg/json/JSONObject;
    :goto_1
    const-class v4, Lcom/boohee/one/onekey/model/ContactMessage;

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Lcom/boohee/one/onekey/model/ContactMessage;

    .line 327
    .local v1, "newFeedBack":Lcom/boohee/one/onekey/model/ContactMessage;
    const-string v2, "user"

    iput-object v2, v1, Lcom/boohee/one/onekey/model/ContactMessage;->sender:Ljava/lang/String;

    .line 328
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->tipIndex:I
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$1000(Lcom/boohee/one/onekey/OneKeyContactActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # operator++ for: Lcom/boohee/one/onekey/OneKeyContactActivity;->tipIndex:I
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$1008(Lcom/boohee/one/onekey/OneKeyContactActivity;)I

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->adapter:Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$300(Lcom/boohee/one/onekey/OneKeyContactActivity;)Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->notifyDataSetChanged()V

    .line 333
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v2, v2, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 334
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v2, v2, Lcom/boohee/one/onekey/OneKeyContactActivity;->etContent:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    const/4 v3, 0x0

    # setter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$1102(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "newFeedBack":Lcom/boohee/one/onekey/model/ContactMessage;
    :goto_3
    return-void

    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_1
    move-object v2, p1

    .line 323
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 326
    :cond_2
    :try_start_1
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5~"

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # setter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->imageUri:Landroid/net/Uri;
    invoke-static {v2, v6}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$1102(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 346
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity;->btnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->dismissLoading()V

    .line 348
    return-void
.end method
