.class public Lcom/boohee/one/onekey/OneKeyBrowserActivity;
.super Lcom/boohee/main/GestureActivity;
.source "OneKeyBrowserActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;,
        Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static final OUT_LINK_URL:Ljava/lang/String; = "http://lina.elementfresh.com/boohee201508"

.field static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field public final QUESTION_URL:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;

.field private question_url:Ljava/lang/String;

.field private shareDescription:Ljava/lang/String;

.field private shareImageUrl:Ljava/lang/String;

.field private shareTitle:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 51
    const-string v0, "/api/v1/questions/init.html"

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->QUESTION_URL:Ljava/lang/String;

    .line 297
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->shareImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 320
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 118
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 119
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    .line 120
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 122
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 123
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App/boohee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity$JSInterface;-><init>(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)V

    const-string v2, "jsObj"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity$1;-><init>(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;-><init>(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 181
    return-void
.end method

.method private refreshQuestions()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->question_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->question_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 218
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 222
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 223
    iput-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 221
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->setContentView(I)V

    .line 81
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->originUrl:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->originUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    .line 88
    const-string v0, "/api/v1/questions/init.html"

    invoke-static {v0}, Lcom/boohee/one/http/client/BingoClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->question_url:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->initView()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mMenu:Landroid/view/Menu;

    .line 189
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 192
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 248
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 249
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 100
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->setIntent(Landroid/content/Intent;)V

    .line 102
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 198
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 200
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->refreshQuestions()V

    goto :goto_0

    .line 203
    :sswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->finish()V

    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0e07e3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 229
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 232
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onStop()V

    .line 237
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 240
    :cond_0
    return-void
.end method
