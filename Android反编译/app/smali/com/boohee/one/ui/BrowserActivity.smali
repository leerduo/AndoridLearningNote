.class public Lcom/boohee/one/ui/BrowserActivity;
.super Lcom/boohee/main/GestureActivity;
.source "BrowserActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/BrowserActivity$JSInterface;,
        Lcom/boohee/one/ui/BrowserActivity$MyWebClient;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field public static final OUT_LINK_URL:Ljava/lang/String; = "http://lina.elementfresh.com/boohee201508"

.field static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private favoriteId:I

.field private isFavorite:Z

.field private mMenu:Landroid/view/Menu;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mTitle:Ljava/lang/String;

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

.field protected mUrl:Ljava/lang/String;

.field protected originUrl:Ljava/lang/String;

.field private shareDescription:Ljava/lang/String;

.field private shareImageUrl:Ljava/lang/String;

.field private shareTitle:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/boohee/one/ui/BrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/BrowserActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/BrowserActivity;->isFavorite:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/BrowserActivity;->favoriteId:I

    .line 464
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/BrowserActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/BrowserActivity;->refreshMenu(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/BrowserActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/BrowserActivity;->addFavoriteSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/BrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->deleteFavoriteSuccess()V

    return-void
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/BrowserActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/BrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity;->shareUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/BrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity;->shareTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/BrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity;->shareDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/BrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/BrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity;->shareImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method private addFavorite()V
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->initFavoriteModel()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 288
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v1, Lcom/boohee/one/ui/BrowserActivity$3;

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/BrowserActivity$3;-><init>(Lcom/boohee/one/ui/BrowserActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->addFavoriteArticle(Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method private addFavoriteSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 299
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/BrowserActivity;->favoriteId:I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/BrowserActivity;->isFavorite:Z

    .line 301
    const v0, 0x7f0700c5

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 302
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 487
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteFavorite()V
    .locals 3

    .prologue
    .line 308
    iget v0, p0, Lcom/boohee/one/ui/BrowserActivity;->favoriteId:I

    new-instance v1, Lcom/boohee/one/ui/BrowserActivity$4;

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/BrowserActivity$4;-><init>(Lcom/boohee/one/ui/BrowserActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->deleteFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 315
    return-void
.end method

.method private deleteFavoriteSuccess()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/BrowserActivity;->favoriteId:I

    .line 319
    const v0, 0x7f0701bb

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/BrowserActivity;->isFavorite:Z

    .line 321
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->invalidateOptionsMenu()V

    .line 322
    return-void
.end method

.method private initFavoriteModel()Lcom/boohee/one/http/JsonParams;
    .locals 5

    .prologue
    .line 122
    new-instance v3, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v3}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 123
    .local v3, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v0, Lcom/boohee/model/FavoriteArticle;

    invoke-direct {v0}, Lcom/boohee/model/FavoriteArticle;-><init>()V

    .line 124
    .local v0, "article":Lcom/boohee/model/FavoriteArticle;
    iget-object v4, p0, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    iput-object v4, v0, Lcom/boohee/model/FavoriteArticle;->url:Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    iput-object v4, v0, Lcom/boohee/model/FavoriteArticle;->title:Ljava/lang/String;

    .line 129
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 130
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "favorite_article"

    invoke-virtual {v3, v4, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 169
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 172
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 173
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

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

    .line 174
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/BrowserActivity$JSInterface;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/BrowserActivity$JSInterface;-><init>(Lcom/boohee/one/ui/BrowserActivity;)V

    const-string v2, "jsObj"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/BrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/BrowserActivity$2;-><init>(Lcom/boohee/one/ui/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 239
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/BrowserActivity$MyWebClient;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/BrowserActivity$MyWebClient;-><init>(Lcom/boohee/one/ui/BrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 240
    return-void
.end method

.method private refreshMenu(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 139
    :try_start_0
    const-string v0, "exist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/ui/BrowserActivity;->isFavorite:Z

    .line 140
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/BrowserActivity;->favoriteId:I

    .line 141
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->setUpFavoriteBtn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUpFavoriteBtn()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0e07c8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 351
    .local v0, "addFavorite":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0e07c9

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 352
    .local v1, "deleteFavorite":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 353
    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    const-string v4, "favorite=false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 359
    :cond_2
    if-eqz v0, :cond_4

    .line 360
    iget-boolean v3, p0, Lcom/boohee/one/ui/BrowserActivity;->isFavorite:Z

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    :cond_4
    if-eqz v1, :cond_0

    .line 363
    iget-boolean v2, p0, Lcom/boohee/one/ui/BrowserActivity;->isFavorite:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private share()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->shareTitle:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->shareDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->shareUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->shareImageUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method


# virtual methods
.method protected initFavoriteMenu()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    const-string v2, "favorite=false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->initFavoriteModel()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 107
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/BrowserActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/BrowserActivity$1;-><init>(Lcom/boohee/one/ui/BrowserActivity;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/api/FavoriteApi;->checkFavoriteArticle(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 376
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 380
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 381
    iput-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 379
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->setContentView(I)V

    .line 86
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/boohee/one/ui/BrowserActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->initFavoriteMenu()V

    .line 99
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->initView()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 245
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    .line 248
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 251
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 404
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 406
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 407
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 149
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/BrowserActivity;->setIntent(Landroid/content/Intent;)V

    .line 151
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->originUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/boohee/one/ui/BrowserActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 265
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 282
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 267
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->share()V

    goto :goto_0

    .line 270
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/one/ui/BrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v4, Lcom/boohee/one/ui/MilestoneActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :sswitch_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->finish()V

    goto :goto_0

    .line 276
    :sswitch_3
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->addFavorite()V

    goto :goto_0

    .line 279
    :sswitch_4
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->deleteFavorite()V

    goto :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0e07c6 -> :sswitch_1
        0x7f0e07c7 -> :sswitch_0
        0x7f0e07c8 -> :sswitch_3
        0x7f0e07c9 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 387
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 390
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->setupShareBtn()V

    .line 257
    invoke-virtual {p0}, Lcom/boohee/one/ui/BrowserActivity;->setUpMilstoneBtn()V

    .line 258
    invoke-direct {p0}, Lcom/boohee/one/ui/BrowserActivity;->setUpFavoriteBtn()V

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onStop()V

    .line 395
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 398
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 503
    :cond_0
    return-void
.end method

.method protected setUpMilstoneBtn()V
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e07c6

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 341
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    const-string v2, "/api/v1/milestones/daily"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected setupShareBtn()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e07c7

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 330
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserActivity;->mUrl:Ljava/lang/String;

    const-string v2, "share=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
