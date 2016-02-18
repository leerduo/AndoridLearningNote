.class public Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "BrowserSuccessHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    const v0, 0x7f0e020a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/boohee/utils/AccountUtils;->isReleaseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 68
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;-><init>(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;-><init>(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->comeOnBaby(ZLandroid/app/Activity;)V

    goto :goto_0

    .line 152
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->comeOnBaby(ZLandroid/app/Activity;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x7f0e057b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f030082

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mUrl:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 62
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->initView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 140
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->onBackPressed()V

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 134
    :cond_0
    return-void
.end method
