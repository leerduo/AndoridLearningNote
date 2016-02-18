.class Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "OneKeyBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/OneKeyBrowserActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    sget-object v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$100(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    new-array v0, v3, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$200(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$202(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    new-array v0, v3, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$200(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$200(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    sget-object v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$100(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 178
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :goto_0
    return v5

    .line 132
    :cond_0
    sget-object v2, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

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

    .line 133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, ".apk"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http://lina.elementfresh.com/boohee201508"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$002(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_3
    const-string v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    :cond_4
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-static {v2, p2}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 147
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 141
    :catch_1
    move-exception v2

    goto :goto_1
.end method
