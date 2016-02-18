.class public final Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;
.super Ljava/lang/Object;
.source "OneKeyBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/OneKeyBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 302
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 303
    .local v0, "obj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$402(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$502(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareDescription:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$602(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "image"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareImageUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$702(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v1

    goto :goto_0
.end method
