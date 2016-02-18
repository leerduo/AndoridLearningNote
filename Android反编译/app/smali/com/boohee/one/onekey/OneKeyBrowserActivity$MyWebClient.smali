.class public Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;
.super Landroid/webkit/WebChromeClient;
.source "OneKeyBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/OneKeyBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 279
    sget-object v0, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->TAG:Ljava/lang/String;

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

    .line 280
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$100(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$100(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 282
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$100(Lcom/boohee/one/onekey/OneKeyBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v1, p1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$302(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "File Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 258
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 4
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v1, p1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$302(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "File Browser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    # setter for: Lcom/boohee/one/onekey/OneKeyBrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;
    invoke-static {v1, p1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->access$302(Lcom/boohee/one/onekey/OneKeyBrowserActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyBrowserActivity$MyWebClient;->this$0:Lcom/boohee/one/onekey/OneKeyBrowserActivity;

    const-string v2, "File Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 276
    return-void
.end method
