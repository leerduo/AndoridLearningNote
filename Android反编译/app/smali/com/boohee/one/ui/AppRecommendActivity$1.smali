.class Lcom/boohee/one/ui/AppRecommendActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "AppRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/AppRecommendActivity;->getAppRecommends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/AppRecommendActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/AppRecommendActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/one/ui/AppRecommendActivity$1;->this$0:Lcom/boohee/one/ui/AppRecommendActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "android_recommends"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 49
    .local v1, "recommends":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/boohee/one/ui/AppRecommendActivity$1;->this$0:Lcom/boohee/one/ui/AppRecommendActivity;

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "recommends":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/boohee/model/AppRecommend;->parseAppRecommends(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v3, Lcom/boohee/one/ui/AppRecommendActivity;->apps:Ljava/util/ArrayList;

    .line 50
    iget-object v2, p0, Lcom/boohee/one/ui/AppRecommendActivity$1;->this$0:Lcom/boohee/one/ui/AppRecommendActivity;

    # invokes: Lcom/boohee/one/ui/AppRecommendActivity;->initAppRecommendView()V
    invoke-static {v2}, Lcom/boohee/one/ui/AppRecommendActivity;->access$000(Lcom/boohee/one/ui/AppRecommendActivity;)V

    .line 54
    :goto_1
    return-void

    .line 49
    .restart local v1    # "recommends":Lorg/json/JSONArray;
    :cond_0
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "recommends":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 59
    iget-object v0, p0, Lcom/boohee/one/ui/AppRecommendActivity$1;->this$0:Lcom/boohee/one/ui/AppRecommendActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/AppRecommendActivity;->dismissLoading()V

    .line 60
    return-void
.end method
