.class Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;
.super Ljava/lang/Object;
.source "WebViewPicUploadActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WebViewPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicUploadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Lcom/boohee/one/ui/WebViewPicUploadActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/WebViewPicUploadActivity$1;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;)V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->dismissLoading()V

    .line 407
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 370
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->showLoading()V

    .line 375
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 9
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
    .line 379
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v6, v6, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCbSyncPost:Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v6, v6, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v6, v6, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v6}, Lcom/boohee/one/ui/BaseActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 382
    .local v4, "photosArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 383
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lboohee/lib/uploader/model/Picture;

    .line 384
    .local v5, "picture":Lboohee/lib/uploader/model/Picture;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v3, "photo":Lorg/json/JSONObject;
    const-string v6, "tag"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    if-eqz v5, :cond_3

    iget-object v6, v5, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 387
    const-string v6, "qiniu_key"

    iget-object v7, v5, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v8, "key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v6, "qiniu_hash"

    iget-object v7, v5, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v8, "hash"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    :cond_2
    :goto_2
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 390
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 391
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "qiniu_key"

    const-string v7, "qiniu_key"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v6, "qiniu_hash"

    const-string v7, "qiniu_hash"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 396
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "photo":Lorg/json/JSONObject;
    .end local v5    # "picture":Lboohee/lib/uploader/model/Picture;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # getter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;
    invoke-static {v6}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$600(Lcom/boohee/one/ui/WebViewPicUploadActivity;)Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

    move-result-object v6

    const-string v7, "\u6570\u636e\u89e3\u6790\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5~~"

    invoke-virtual {v6, v7}, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v7, v7, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCbSyncPost:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    # invokes: Lcom/boohee/one/ui/WebViewPicUploadActivity;->sendWeightRequest(Lorg/json/JSONArray;Z)V
    invoke-static {v6, v4, v7}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$700(Lcom/boohee/one/ui/WebViewPicUploadActivity;Lorg/json/JSONArray;Z)V

    goto :goto_0
.end method
