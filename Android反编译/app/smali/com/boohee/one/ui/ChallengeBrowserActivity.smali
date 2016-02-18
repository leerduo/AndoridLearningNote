.class public Lcom/boohee/one/ui/ChallengeBrowserActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ChallengeBrowserActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;,
        Lcom/boohee/one/ui/ChallengeBrowserActivity$MyWebClient;
    }
.end annotation


# static fields
.field public static final CAN_EXIT:Ljava/lang/String; = "can_quit"

.field public static final CHALLENGE:Ljava/lang/String; = "challenge"

.field private static final FILECHOOSER_RESULTCODE:I = 0x1

.field static final TAG:Ljava/lang/String;

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private canExit:Z

.field private challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

.field private exitView:Landroid/widget/TextView;

.field private favoriteId:I

.field private isFavorite:Z

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

.field private shareDescription:Ljava/lang/String;

.field private shareImageUrl:Ljava/lang/String;

.field private shareTitle:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->isFavorite:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->favoriteId:I

    .line 473
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Lcom/boohee/model/chanllenge/BaseChallenge;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setUpMilstoneBtn()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setupShareBtn()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/ChallengeBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/ChallengeBrowserActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->addFavoriteSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->deleteFavoriteSuccess()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/ChallengeBrowserActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->refreshMenu(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/ChallengeBrowserActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChallengeBrowserActivity;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private addFavorite()V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->initFavoriteModel()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 286
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v1, Lcom/boohee/one/ui/ChallengeBrowserActivity$3;

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity$3;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->addFavoriteArticle(Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method private addFavoriteSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 297
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->favoriteId:I

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->isFavorite:Z

    .line 299
    const v0, 0x7f0700c5

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 300
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static comeOnBaby(Landroid/content/Context;Lcom/boohee/model/chanllenge/BaseChallenge;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "challenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 506
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 496
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteFavorite()V
    .locals 3

    .prologue
    .line 306
    iget v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->favoriteId:I

    new-instance v1, Lcom/boohee/one/ui/ChallengeBrowserActivity$4;

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity$4;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FavoriteApi;->deleteFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method private deleteFavoriteSuccess()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->favoriteId:I

    .line 317
    const v0, 0x7f0701bb

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->isFavorite:Z

    .line 319
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->invalidateOptionsMenu()V

    .line 320
    return-void
.end method

.method private getChallenge(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v0, "challenge"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 107
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->detail_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->originUrl:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->detail_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_quit:Z

    iput-boolean v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->canExit:Z

    .line 112
    :cond_0
    return-void
.end method

.method private initFavoriteMenu()V
    .locals 4

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->initFavoriteModel()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 324
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/ChallengeBrowserActivity$5;

    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/ChallengeBrowserActivity$5;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/api/FavoriteApi;->checkFavoriteArticle(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 336
    return-void
.end method

.method private initFavoriteModel()Lcom/boohee/one/http/JsonParams;
    .locals 5

    .prologue
    .line 339
    new-instance v3, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v3}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 340
    .local v3, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v0, Lcom/boohee/model/FavoriteArticle;

    invoke-direct {v0}, Lcom/boohee/model/FavoriteArticle;-><init>()V

    .line 341
    .local v0, "article":Lcom/boohee/model/FavoriteArticle;
    iget-object v4, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->originUrl:Ljava/lang/String;

    iput-object v4, v0, Lcom/boohee/model/FavoriteArticle;->url:Ljava/lang/String;

    .line 342
    iget-object v4, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    iput-object v4, v0, Lcom/boohee/model/FavoriteArticle;->title:Ljava/lang/String;

    .line 346
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 347
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "favorite_article"

    invoke-virtual {v3, v4, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->exitView:Landroid/widget/TextView;

    .line 134
    iget-boolean v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->canExit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->exitView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->exitView:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 166
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    .line 167
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

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

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity$JSInterface;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V

    const-string v2, "jsObj"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity$2;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 223
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/boohee/one/ui/ChallengeBrowserActivity$MyWebClient;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity$MyWebClient;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 224
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->exitView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshMenu(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 356
    :try_start_0
    const-string v0, "exist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->isFavorite:Z

    .line 357
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->favoriteId:I

    .line 358
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUpFavoriteBtn()V
    .locals 4

    .prologue
    .line 247
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e07c8

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 251
    .local v0, "addFavorite":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e07c9

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 252
    .local v1, "deleteFavorite":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 253
    iget-boolean v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->isFavorite:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_2
    if-eqz v1, :cond_0

    .line 256
    iget-boolean v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->isFavorite:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 253
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setUpMilstoneBtn()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e07c6

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 380
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 381
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

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

.method private setupShareBtn()V
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e07c7

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 369
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

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

.method private share()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareTitle:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->shareImageUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
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

    .line 394
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 398
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 399
    iput-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 397
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->getChallenge(Landroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->initFavoriteMenu()V

    .line 101
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->initView()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mMenu:Landroid/view/Menu;

    .line 232
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 235
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 422
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 424
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 425
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 117
    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->getChallenge(Landroid/content/Intent;)V

    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    :cond_2
    sget-object v0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    const-string v0, "\u65e0\u6548\u7684\u94fe\u63a5"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 263
    .local v0, "itemId":I
    sparse-switch v0, :sswitch_data_0

    .line 280
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 265
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->share()V

    goto :goto_0

    .line 268
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v4, Lcom/boohee/one/ui/MilestoneActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
    :sswitch_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->finish()V

    goto :goto_0

    .line 274
    :sswitch_3
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->addFavorite()V

    goto :goto_0

    .line 277
    :sswitch_4
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->deleteFavorite()V

    goto :goto_0

    .line 263
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
    .line 404
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 405
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 408
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setupShareBtn()V

    .line 241
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setUpMilstoneBtn()V

    .line 242
    invoke-direct {p0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->setUpFavoriteBtn()V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onStop()V

    .line 413
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 416
    :cond_0
    return-void
.end method
