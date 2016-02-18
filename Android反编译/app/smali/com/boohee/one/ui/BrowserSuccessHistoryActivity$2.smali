.class Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 95
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$000(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$000(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity$2;->this$0:Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;

    # getter for: Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;->access$000(Lcom/boohee/one/ui/BrowserSuccessHistoryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method
