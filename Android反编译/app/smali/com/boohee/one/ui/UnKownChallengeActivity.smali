.class public Lcom/boohee/one/ui/UnKownChallengeActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "UnKownChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/UnKownChallengeActivity$MyWebClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field ivChallengeThumb:Lcom/boohee/widgets/CircularImage;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06ba
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0243
    .end annotation
.end field

.field sv_timeline:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0242
    .end annotation
.end field

.field tvChallengeDetail:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06bd
    .end annotation
.end field

.field tvChallengeName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06bb
    .end annotation
.end field

.field tvChallengeTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06bc
    .end annotation
.end field

.field webView:Landroid/webkit/WebView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0244
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/boohee/one/ui/UnKownChallengeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/UnKownChallengeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 42
    const-string v0, "http://shop.boohee.com/store/pages/challenge_unsupport"

    iput-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    .line 202
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/UnKownChallengeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/UnKownChallengeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/UnKownChallengeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UnKownChallengeActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/UnKownChallengeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/UnKownChallengeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/UnKownChallengeActivity;)Lcom/boohee/model/chanllenge/BaseChallenge;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UnKownChallengeActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    return-object v0
.end method

.method private getChallenge(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "CHALLENGE_MODEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->setHeaderView()V

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

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

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/UnKownChallengeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UnKownChallengeActivity$1;-><init>(Lcom/boohee/one/ui/UnKownChallengeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 160
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/UnKownChallengeActivity$MyWebClient;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UnKownChallengeActivity$MyWebClient;-><init>(Lcom/boohee/one/ui/UnKownChallengeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 161
    return-void
.end method

.method private setHeaderView()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->avatar_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->ivChallengeThumb:Lcom/boohee/widgets/CircularImage;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 168
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->tvChallengeName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->tvChallengeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->tvChallengeDetail:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/one/ui/UnKownChallengeActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UnKownChallengeActivity$2;-><init>(Lcom/boohee/one/ui/UnKownChallengeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030088

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->getChallenge(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/boohee/one/ui/UnKownChallengeActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->initView()V

    .line 77
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 197
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 91
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/UnKownChallengeActivity;->getChallenge(Landroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UnKownChallengeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    :cond_2
    sget-object v0, Lcom/boohee/one/ui/UnKownChallengeActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 183
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onStop()V

    .line 188
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 191
    :cond_0
    return-void
.end method
