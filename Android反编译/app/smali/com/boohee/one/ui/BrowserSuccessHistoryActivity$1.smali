.class Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BrowserSuccessHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    sget-object v0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$000(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    new-array v0, v3, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$100(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$102(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    new-array v0, v3, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$100(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$100(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    sget-object v0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$1;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$000(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
