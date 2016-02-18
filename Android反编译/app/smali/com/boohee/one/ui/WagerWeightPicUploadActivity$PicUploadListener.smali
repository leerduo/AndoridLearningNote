.class Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;
.super Ljava/lang/Object;
.source "WagerWeightPicUploadActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WagerWeightPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicUploadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/WagerWeightPicUploadActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;-><init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCommitBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCommitBtn:Landroid/widget/Button;

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 363
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->dismissLoading()V

    .line 364
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 329
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCommitBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCommitBtn:Landroid/widget/Button;

    const-string v1, "\u6b63\u5728\u63d0\u4ea4,\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->showLoading()V

    .line 336
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v5, v5, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v5, v5, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v5, v5, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 343
    .local v3, "photosArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lboohee/lib/uploader/model/Picture;

    .line 344
    .local v4, "picture":Lboohee/lib/uploader/model/Picture;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 345
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v2, "photo":Lorg/json/JSONObject;
    const-string v5, "qiniu_key"

    iget-object v6, v4, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v7, "key"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v5, "qiniu_hash"

    iget-object v6, v4, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v7, "hash"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 351
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "photo":Lorg/json/JSONObject;
    .end local v4    # "picture":Lboohee/lib/uploader/model/Picture;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v5, v5, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;

    const-string v6, "\u6570\u636e\u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5~~"

    invoke-virtual {v5, v6}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v6, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    iget-object v6, v6, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    # invokes: Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->sendWeightRequest(Lorg/json/JSONArray;Z)V
    invoke-static {v5, v3, v6}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->access$200(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Lorg/json/JSONArray;Z)V

    goto :goto_0
.end method
