.class public Lcom/alipay/sdk/app/H5AuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/H5AuthActivity$MyWebChromeClient;,
        Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/alipay/sdk/widget/Loading;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->c:Landroid/os/Handler;

    .line 472
    new-instance v0, Lcom/alipay/sdk/app/H5AuthActivity$11;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/H5AuthActivity$11;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 161
    sget-object v1, Lcom/alipay/sdk/util/AuthHelper;->a:Ljava/lang/Object;

    .line 163
    monitor-enter v1

    .line 165
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 166
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->e()V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v1}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "com.alipay.mobilecashier"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "com.alipay.mcpay"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "4.0.3"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "/cashier/main"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/sdk/net/RequestWrapper;

    new-instance v2, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v2}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    invoke-direct {v1, v2}, Lcom/alipay/sdk/net/RequestWrapper;-><init>(Lcom/alipay/sdk/data/InteractionData;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v0, v2}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/FrameData;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    invoke-direct {p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/alipay/sdk/app/H5AuthActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/H5AuthActivity$3;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/alipay/sdk/app/H5AuthActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/H5AuthActivity$4;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    throw v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5AuthActivity;Lcom/alipay/sdk/authjs/CallInfo;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/sdk/authjs/CallInfo;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity$10;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5AuthActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/alipay/sdk/authjs/JsBridge;

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/H5AuthActivity$9;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/sdk/authjs/JsBridge;-><init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/IJsCallback;)V

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/authjs/JsBridge;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/sdk/authjs/CallInfo;)V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/sdk/authjs/CallInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity$10;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 430
    new-instance v0, Lcom/alipay/sdk/authjs/JsBridge;

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/H5AuthActivity$9;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/sdk/authjs/JsBridge;-><init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/IJsCallback;)V

    .line 438
    invoke-virtual {v0, p1}, Lcom/alipay/sdk/authjs/JsBridge;->a(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/FailOperatingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    const-string v0, "form"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "onload"

    invoke-static {v0, v2}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/alipay/sdk/exception/FailOperatingException;

    invoke-direct {v0}, Lcom/alipay/sdk/exception/FailOperatingException;-><init>()V

    throw v0

    .line 219
    :cond_0
    invoke-static {v0}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v2

    .line 221
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 222
    sget-object v5, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v4, v5, :cond_3

    .line 223
    invoke-virtual {v4}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    aget-object v0, v0, v1

    .line 226
    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->finish()V

    .line 242
    :cond_1
    :goto_1
    return-void

    .line 230
    :cond_2
    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity$5;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 221
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5AuthActivity;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alipay/sdk/app/H5AuthActivity;->d:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->e()V

    .line 175
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v1}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/Request;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "com.alipay.mobilecashier"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->c(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "com.alipay.mcpay"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->a(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "4.0.3"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->e(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/alipay/sdk/data/Request;->d()Lcom/alipay/sdk/data/Envelope;

    move-result-object v1

    const-string v2, "/cashier/main"

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/data/Envelope;->d(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/alipay/sdk/net/RequestWrapper;

    new-instance v2, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v2}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    invoke-direct {v1, v2}, Lcom/alipay/sdk/net/RequestWrapper;-><init>(Lcom/alipay/sdk/data/InteractionData;)V

    .line 185
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v0, v2}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/FrameData;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    .line 190
    invoke-direct {p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    .line 210
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/alipay/sdk/app/H5AuthActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/H5AuthActivity$3;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/alipay/sdk/app/H5AuthActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/H5AuthActivity$4;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    throw v0
.end method

.method static synthetic b(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0d\u80fd\u8fde\u63a5\u5230\u670d\u52a1\u5668\uff0c\u662f\u5426\u91cd\u8bd5\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/sdk/app/H5AuthActivity$6;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/H5AuthActivity$6;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/alipay/sdk/app/H5AuthActivity$7;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/H5AuthActivity$7;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    const-string v1, "\u4e0d\u80fd\u8fde\u63a5\u5230\u670d\u52a1\u5668\uff0c\u662f\u5426\u91cd\u8bd5\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 391
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/sdk/app/H5AuthActivity$6;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/H5AuthActivity$6;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 404
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/alipay/sdk/app/H5AuthActivity$7;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/H5AuthActivity$7;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 413
    return-void
.end method

.method static synthetic c(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/sdk/app/H5AuthActivity$8;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/H5AuthActivity$8;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/app/H5AuthActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 418
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/alipay/sdk/app/H5AuthActivity$8;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/app/H5AuthActivity$8;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 427
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    .line 485
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/sdk/app/H5AuthActivity;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->d:Z

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    .line 494
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->b:Lcom/alipay/sdk/widget/Loading;

    .line 495
    return-void
.end method

.method static synthetic f(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->e()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/sdk/app/H5AuthActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/sdk/app/H5AuthActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->f()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 156
    sget-object v1, Lcom/alipay/sdk/util/AuthHelper;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 158
    return-void

    .line 156
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 500
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "H5AuthActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "H5AuthActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5AuthActivity;->finish()V

    .line 78
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 147
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "H5AuthActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 82
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sdk/data/MspConfig;->a()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/sdk/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    .line 91
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    iget-object v2, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/sdk/util/Utils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 98
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 99
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 100
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 103
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 104
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 105
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 106
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$MyWebChromeClient;

    invoke-direct {v1, p0, v4}, Lcom/alipay/sdk/app/H5AuthActivity$MyWebChromeClient;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/H5AuthActivity$1;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/app/H5AuthActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/app/H5AuthActivity$2;-><init>(Lcom/alipay/sdk/app/H5AuthActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 130
    :try_start_2
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/alipay/sdk/app/H5AuthActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    :cond_2
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 147
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
