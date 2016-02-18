.class Lcom/alipay/sdk/authjs/JsBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/CallInfo;

.field final synthetic b:Lcom/alipay/sdk/authjs/JsBridge;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/authjs/JsBridge;Lcom/alipay/sdk/authjs/CallInfo;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iget-object v1, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-static {v0, v1}, Lcom/alipay/sdk/authjs/JsBridge;->a(Lcom/alipay/sdk/authjs/JsBridge;Lcom/alipay/sdk/authjs/CallInfo;)Lcom/alipay/sdk/authjs/CallInfo$CallError;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->a:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    if-eq v0, v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->b:Lcom/alipay/sdk/authjs/JsBridge;

    iget-object v2, p0, Lcom/alipay/sdk/authjs/JsBridge$1;->a:Lcom/alipay/sdk/authjs/CallInfo;

    invoke-virtual {v2}, Lcom/alipay/sdk/authjs/CallInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/authjs/JsBridge;->a(Lcom/alipay/sdk/authjs/JsBridge;Ljava/lang/String;Lcom/alipay/sdk/authjs/CallInfo$CallError;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
