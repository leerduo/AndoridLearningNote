.class public Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "ChallengeBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$ChromeClient;,
        Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$WebClient;
    }
.end annotation


# instance fields
.field private challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field public isJoined:Z

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
    .line 39
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->scrollViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    .line 222
    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;)Lcom/boohee/model/chanllenge/BaseChallenge;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "challenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 53
    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;-><init>()V

    .line 54
    .local v1, "frag":Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "challenge"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method


# virtual methods
.method public firstLoad()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->loadWeb()V

    .line 150
    return-void
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v1, "flex"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->page_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "\u6311\u6218"

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->page_title:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->isJoined:Z

    if-eqz v0, :cond_2

    const-string v0, "\u8fdb\u5c55"

    goto :goto_0

    :cond_2
    const-string v0, "\u4ecb\u7ecd"

    goto :goto_0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public loadWeb()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
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

    .line 90
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$WebClient;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$WebClient;-><init>(Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$ChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$ChromeClient;-><init>(Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->loadWeb()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->isFirstLoad:Z

    .line 96
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onAttach(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    .line 68
    const-string v1, "challenge"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 69
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    iput-boolean v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->isJoined:Z

    .line 71
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    .line 79
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
    .line 83
    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 85
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onResume()V

    .line 119
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "outState":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .restart local p1    # "outState":Landroid/os/Bundle;
    :cond_0
    const-string v0, "url"

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public refreshBaseView()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 155
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 159
    .local v0, "activity":Lcom/boohee/one/ui/BaseChallengeActivity;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->page_title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextGone()V

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "\u6211\u8981\u53c2\u52a0"

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextView(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v1, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;Lcom/boohee/one/ui/BaseChallengeActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextGone()V

    goto :goto_0
.end method

.method public setIsJoined(Z)V
    .locals 0
    .param p1, "isJoined"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->isJoined:Z

    .line 110
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->loadWeb()V

    .line 114
    return-void
.end method
