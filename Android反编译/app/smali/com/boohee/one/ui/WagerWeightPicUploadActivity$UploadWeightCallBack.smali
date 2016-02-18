.class Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;
.super Lcom/boohee/one/http/JsonCallback;
.source "WagerWeightPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WagerWeightPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadWeightCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    .line 303
    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    .line 304
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;

    invoke-virtual {v0, p1}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->onFailed(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 309
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 322
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->dismissLoading()V

    .line 323
    return-void
.end method
