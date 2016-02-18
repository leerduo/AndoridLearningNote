.class public Lcom/boohee/one/http/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field public static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/http/OkHttpStack;

    invoke-direct {v1}, Lcom/boohee/one/http/OkHttpStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/http/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const-string v0, "Volley/URL"

    invoke-virtual {p0}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 35
    :cond_0
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 36
    sget-object v0, Lcom/boohee/one/http/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 37
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/boohee/one/http/client/BaseJsonRequest;

    if-eqz v0, :cond_1

    .line 38
    check-cast p0, Lcom/boohee/one/http/client/BaseJsonRequest;

    .end local p0    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-static {p0}, Lcom/boohee/one/http/RequestManager;->cacheIp(Lcom/boohee/one/http/client/BaseJsonRequest;)V

    .line 40
    :cond_1
    return-void
.end method

.method public static cacheIp(Lcom/boohee/one/http/client/BaseJsonRequest;)V
    .locals 6
    .param p0, "request"    # Lcom/boohee/one/http/client/BaseJsonRequest;

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/boohee/one/http/client/BaseJsonRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 45
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "host"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    .local v2, "host":Ljava/lang/String;
    const-string v4, "Volley/Header"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v4, v3}, Lcom/boohee/utils/Helper;->logJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/boohee/one/http/client/BaseJsonRequest;->jsonParams:Lcom/boohee/one/http/JsonParams;

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "Volley/Params"

    iget-object v4, p0, Lcom/boohee/one/http/client/BaseJsonRequest;->jsonParams:Lcom/boohee/one/http/JsonParams;

    invoke-virtual {v4}, Lcom/boohee/one/http/JsonParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->logJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-static {v2}, Lcom/boohee/one/http/DnspodFree;->getIpWithHost(Ljava/lang/String;)V

    .line 56
    .end local v1    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "host":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 46
    .restart local v1    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "host":Ljava/lang/String;
    :cond_2
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 53
    .end local v1    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "host":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cancelAll(Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    sget-object v0, Lcom/boohee/one/http/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method
