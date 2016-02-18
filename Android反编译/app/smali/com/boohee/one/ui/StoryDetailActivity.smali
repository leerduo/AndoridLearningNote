.class public Lcom/boohee/one/ui/StoryDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/StoryDetailActivity$JSInterface;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field cbCollect:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0775
    .end annotation
.end field

.field cbPraise:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e02b8
    .end annotation
.end field

.field private favoriteId:I

.field private isFavorite:Z

.field private mStoryId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;

.field private shareDescription:Ljava/lang/String;

.field private shareImageUrl:Ljava/lang/String;

.field private shareTitle:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private storyInfo:Lcom/boohee/model/StoryInfo;

.field tvComment:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e02bb
    .end annotation
.end field

.field tvPraisePlus:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e02b9
    .end annotation
.end field

.field webView:Landroid/webkit/WebView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00df
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->favoriteId:I

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/StoryDetailActivity;Lcom/boohee/model/StoryInfo;)Lcom/boohee/model/StoryInfo;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Lcom/boohee/model/StoryInfo;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/StoryDetailActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StoryDetailActivity;->refreshCollect(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/StoryDetailActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StoryDetailActivity;->addFavoriteSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/StoryDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/StoryDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/StoryDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method private addFavorite()V
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->initFavoriteModel()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 247
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v1, Lcom/boohee/one/ui/StoryDetailActivity$5;

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/StoryDetailActivity$5;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->addFavoriteArticle(Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 254
    return-void
.end method

.method private addFavoriteSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 258
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->favoriteId:I

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z

    .line 260
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    const-string v1, "\u5df2\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static comeOn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 332
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteFavorite()V
    .locals 3

    .prologue
    .line 267
    iget v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->favoriteId:I

    new-instance v1, Lcom/boohee/one/ui/StoryDetailActivity$6;

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/StoryDetailActivity$6;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->deleteFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method private initCollect()V
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    const-string v2, "favorite=false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->initFavoriteModel()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 201
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/StoryDetailActivity$4;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StoryDetailActivity$4;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/api/FavoriteApi;->checkFavoriteArticle(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initFavoriteModel()Lcom/boohee/one/http/JsonParams;
    .locals 5

    .prologue
    .line 230
    new-instance v3, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v3}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 231
    .local v3, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v0, Lcom/boohee/model/FavoriteArticle;

    invoke-direct {v0}, Lcom/boohee/model/FavoriteArticle;-><init>()V

    .line 232
    .local v0, "article":Lcom/boohee/model/FavoriteArticle;
    iget-object v4, p0, Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;

    iput-object v4, v0, Lcom/boohee/model/FavoriteArticle;->url:Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mTitle:Ljava/lang/String;

    iput-object v4, v0, Lcom/boohee/model/FavoriteArticle;->title:Ljava/lang/String;

    .line 237
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 238
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "favorite_article"

    invoke-virtual {v3, v4, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initPraiseAndComment()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mStoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->ctx:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/StoryDetailActivity$3;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StoryDetailActivity$3;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getStoryInfo(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 194
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 279
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 281
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 282
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

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

    .line 283
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/StoryDetailActivity$JSInterface;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/StoryDetailActivity$JSInterface;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;)V

    const-string v2, "jsObj"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/StoryDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/StoryDetailActivity$7;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 313
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private praiseStory()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mStoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->ctx:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/StoryDetailActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StoryDetailActivity$1;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->praiseStory(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 159
    return-void
.end method

.method private refreshCollect(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    :try_start_0
    const-string v0, "exist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z

    .line 218
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->favoriteId:I

    .line 219
    iget-boolean v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    const-string v1, "\u5df2\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unPraiseStory()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mStoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->ctx:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/StoryDetailActivity$2;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StoryDetailActivity$2;-><init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->unPraiseStory(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e02b7,
            0x7f0e02ba,
            0x7f0e0316
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 127
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->cbPraise:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->unPraiseStory()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->praiseStory()V

    goto :goto_0

    .line 135
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mStoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/one/ui/StoryCommentActivity;->comeOn(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :sswitch_2
    iget-boolean v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->deleteFavorite()V

    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->addFavorite()V

    goto :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e02b7 -> :sswitch_0
        0x7f0e02ba -> :sswitch_1
        0x7f0e0316 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->setContentView(I)V

    .line 81
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 82
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->originUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    .line 84
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mStoryId:Ljava/lang/String;

    .line 85
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mTitle:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->mStoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->initView()V

    .line 97
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->initCollect()V

    .line 98
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->initPraiseAndComment()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 104
    invoke-virtual {p0}, Lcom/boohee/one/ui/StoryDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareTitle:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryDetailActivity;->shareImageUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0e07c7
        :pswitch_0
    .end packed-switch
.end method
