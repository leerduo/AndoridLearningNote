.class Lcom/alipay/sdk/authjs/JsBridge$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/CallInfo;

.field final synthetic b:Lcom/alipay/sdk/authjs/JsBridge;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/JsBridge;Lcom/alipay/sdk/authjs/CallInfo;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/sdk/authjs/JsBridge$2;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/JsBridge$2;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_0
    const-string v0, "toastCallBack"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    new-instance v0, Lcom/alipay/sdk/authjs/CallInfo;

    const-string v2, "callback"

    invoke-direct {v0, v2}, Lcom/alipay/sdk/authjs/CallInfo;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/alipay/sdk/authjs/JsBridge$2;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-virtual {v2}, Lcom/alipay/sdk/authjs/CallInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/authjs/CallInfo;->a(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/alipay/sdk/authjs/CallInfo;->a(Lorg/json/JSONObject;)V

    .line 168
    iget-object v1, p0, Lcom/alipay/sdk/authjs/JsBridge$2;->b:Lcom/alipay/sdk/authjs/JsBridge;

    invoke-static {v1}, Lcom/alipay/sdk/authjs/JsBridge;->a(Lcom/alipay/sdk/authjs/JsBridge;)Lcom/alipay/sdk/authjs/IJsCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/sdk/authjs/IJsCallback;->a(Lcom/alipay/sdk/authjs/CallInfo;)V

    .line 169
    return-void

    .line 162
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
