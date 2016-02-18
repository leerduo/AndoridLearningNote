.class public final Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;
.super Ljava/lang/Object;
.source "ChallengeBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/ChallengeBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

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
    .line 478
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 479
    .local v0, "obj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$1002(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$1102(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareDescription:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$1202(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    const-string v2, "image"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareImageUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$1302(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v1

    goto :goto_0
.end method
