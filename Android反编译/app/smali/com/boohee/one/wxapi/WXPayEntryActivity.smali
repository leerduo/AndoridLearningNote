.class public Lcom/boohee/one/wxapi/WXPayEntryActivity;
.super Lcom/boohee/main/GestureActivity;
.source "WXPayEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->webView:Landroid/webkit/WebView;

    .line 36
    iget-object v0, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://shop.boohee.com/store/pages/notice"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f07040c

    invoke-virtual {p0, v0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->setTitle(I)V

    .line 29
    const-string v0, "wxaddc5c19a31e9d39"

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 30
    iget-object v0, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 31
    invoke-direct {p0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->initView()V

    .line 32
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lcom/boohee/one/wxapi/WXPayEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 45
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 49
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 2
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 54
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-gez v0, :cond_0

    .line 55
    const v0, 0x7f07040b

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 56
    invoke-virtual {p0}, Lcom/boohee/one/wxapi/WXPayEntryActivity;->finish()V

    .line 59
    :cond_0
    return-void
.end method
