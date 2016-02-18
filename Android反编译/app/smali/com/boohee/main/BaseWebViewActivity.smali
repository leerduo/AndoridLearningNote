.class public Lcom/boohee/main/BaseWebViewActivity;
.super Lcom/boohee/main/GestureActivity;
.source "BaseWebViewActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "NewApi"
    }
.end annotation


# static fields
.field public static final FROM_SPORT_LIB:I = 0x0

.field public static final FROM_SPORT_REC:I = 0x1

.field public static final FROM_SPORT_SEARCH:I = 0x2

.field static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private commonSport:Lcom/boohee/model/CommonSport;

.field private from_where:I

.field private intent:Landroid/content/Intent;

.field private sport:Lcom/boohee/model/Sport;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/boohee/main/BaseWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/main/BaseWebViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private openAddSport()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method


# virtual methods
.method initView()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/boohee/main/BaseWebViewActivity;->showLoading()V

    .line 53
    invoke-virtual {p0}, Lcom/boohee/main/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->intent:Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->intent:Landroid/content/Intent;

    const-string v1, "common_sport"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CommonSport;

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->commonSport:Lcom/boohee/model/CommonSport;

    .line 55
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->intent:Landroid/content/Intent;

    const-string v1, "sport"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Sport;

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->sport:Lcom/boohee/model/Sport;

    .line 56
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->intent:Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->url:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "http://one.boohee.com/api/v1/articles/android_sport_program.html"

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->url:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->intent:Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->title:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/main/BaseWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    sget-object v0, Lcom/boohee/main/BaseWebViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/main/BaseWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TITLE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/main/BaseWebViewActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/main/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    .line 66
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 68
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/main/BaseWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/main/BaseWebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/main/BaseWebViewActivity$1;-><init>(Lcom/boohee/main/BaseWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcom/boohee/main/BaseWebViewActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Lcom/boohee/main/BaseWebViewActivity;->setTitle(I)V

    .line 48
    invoke-virtual {p0}, Lcom/boohee/main/BaseWebViewActivity;->initView()V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/boohee/main/BaseWebViewActivity;->intent:Landroid/content/Intent;

    const-string v1, "from_where"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/main/BaseWebViewActivity;->from_where:I

    .line 81
    iget v0, p0, Lcom/boohee/main/BaseWebViewActivity;->from_where:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/boohee/main/BaseWebViewActivity;->from_where:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/boohee/main/BaseWebViewActivity;->from_where:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/boohee/main/BaseWebViewActivity;->from_where:I

    if-ne v0, v4, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    const v1, 0x7f0700c9

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    :cond_1
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/main/BaseWebViewActivity;->openAddSport()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/main/BaseWebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
