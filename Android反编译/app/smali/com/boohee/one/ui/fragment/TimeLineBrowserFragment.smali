.class public Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
.super Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;
.source "TimeLineBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$1;,
        Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$ChromeClient;,
        Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$WebClient;
    }
.end annotation


# instance fields
.field mPbLoading:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0243
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0244
    .end annotation
.end field

.field private scrollViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->scrollViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    .line 128
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;-><init>()V

    .line 42
    .local v1, "frag":Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public loadWeb()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$WebClient;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$WebClient;-><init>(Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$ChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$ChromeClient;-><init>(Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mUrl:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 67
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 91
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "outState":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .restart local p1    # "outState":Landroid/os/Bundle;
    :cond_0
    const-string v0, "url"

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
