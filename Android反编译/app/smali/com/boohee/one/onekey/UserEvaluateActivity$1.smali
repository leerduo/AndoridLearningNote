.class Lcom/boohee/one/onekey/UserEvaluateActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserEvaluateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserEvaluateActivity;->requestConsultorsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserEvaluateActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 87
    .end local p1    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    instance-of v2, p1, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p1    # "object":Lorg/json/JSONObject;
    :goto_1
    const-class v4, Lcom/boohee/one/onekey/model/Consultor;

    instance-of v5, v1, Lcom/google/gson/Gson;

    if-nez v5, :cond_3

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Lcom/boohee/one/onekey/model/Consultor;

    # setter for: Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;
    invoke-static {v3, v1}, Lcom/boohee/one/onekey/UserEvaluateActivity;->access$002(Lcom/boohee/one/onekey/UserEvaluateActivity;Lcom/boohee/one/onekey/model/Consultor;)Lcom/boohee/one/onekey/model/Consultor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_3
    iget-object v1, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    # getter for: Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;
    invoke-static {v1}, Lcom/boohee/one/onekey/UserEvaluateActivity;->access$000(Lcom/boohee/one/onekey/UserEvaluateActivity;)Lcom/boohee/one/onekey/model/Consultor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    iget-object v1, v1, Lcom/boohee/one/onekey/UserEvaluateActivity;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    # getter for: Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;
    invoke-static {v2}, Lcom/boohee/one/onekey/UserEvaluateActivity;->access$000(Lcom/boohee/one/onekey/UserEvaluateActivity;)Lcom/boohee/one/onekey/model/Consultor;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/one/onekey/model/Consultor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    # getter for: Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;
    invoke-static {v2}, Lcom/boohee/one/onekey/UserEvaluateActivity;->access$000(Lcom/boohee/one/onekey/UserEvaluateActivity;)Lcom/boohee/one/onekey/model/Consultor;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/one/onekey/model/Consultor;->photo:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    iget-object v3, v3, Lcom/boohee/one/onekey/UserEvaluateActivity;->ivAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const v4, 0x7f02011a

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 86
    iget-object v1, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    iget-object v1, v1, Lcom/boohee/one/onekey/UserEvaluateActivity;->tvIntroduce:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    # getter for: Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;
    invoke-static {v2}, Lcom/boohee/one/onekey/UserEvaluateActivity;->access$000(Lcom/boohee/one/onekey/UserEvaluateActivity;)Lcom/boohee/one/onekey/model/Consultor;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/one/onekey/model/Consultor;->consultor_info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/boohee/one/onekey/UserEvaluateActivity$1;->this$0:Lcom/boohee/one/onekey/UserEvaluateActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->dismissLoading()V

    .line 92
    return-void
.end method
