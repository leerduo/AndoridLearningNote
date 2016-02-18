.class Lcom/boohee/one/ui/StoryDetailActivity$7;
.super Landroid/webkit/WebViewClient;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryDetailActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity$7;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 311
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 288
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    :goto_0
    return v4

    .line 291
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 292
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 293
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 303
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity$7;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # setter for: Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/boohee/one/ui/StoryDetailActivity;->access$402(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity$7;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity$7;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/one/ui/StoryDetailActivity;->access$400(Lcom/boohee/one/ui/StoryDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boohee/one/ui/StoryDetailActivity;->access$502(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity$7;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-static {v2, p2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 296
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 299
    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity$7;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
