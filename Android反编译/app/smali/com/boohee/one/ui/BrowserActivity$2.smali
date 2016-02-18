.class Lcom/boohee/one/ui/BrowserActivity$2;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BrowserActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/BrowserActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "tmpTitle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iput-object v0, v1, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 228
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/BrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 220
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 236
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 237
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    :goto_0
    return v5

    .line 183
    :cond_0
    sget-object v2, Lcom/boohee/one/ui/BrowserActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://lina.elementfresh.com/boohee201508"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/ui/BrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iput-object p2, v2, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/BrowserActivity;->setUpMilstoneBtn()V

    .line 213
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/BrowserActivity;->setupShareBtn()V

    .line 214
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/BrowserActivity;->initFavoriteMenu()V

    goto :goto_0

    .line 194
    :cond_3
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 198
    const-string v2, "user_diets.html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-string v3, "refresh_one_key_status"

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-static {v2, p2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 203
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity$2;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/ui/BrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 192
    :catch_1
    move-exception v2

    goto :goto_1
.end method
