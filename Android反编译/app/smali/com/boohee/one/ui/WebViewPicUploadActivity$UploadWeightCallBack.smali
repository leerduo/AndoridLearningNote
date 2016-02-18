.class Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;
.super Lcom/boohee/one/http/JsonCallback;
.source "WebViewPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WebViewPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadWeightCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    .line 341
    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    .line 342
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # getter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;
    invoke-static {v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$600(Lcom/boohee/one/ui/WebViewPicUploadActivity;)Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->onFailed(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 347
    const-string v2, "redirect_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "redirect_url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v2, v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->startActivity(Landroid/content/Intent;)V

    .line 351
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->finish()V

    .line 352
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 363
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->dismissLoading()V

    .line 364
    return-void
.end method
