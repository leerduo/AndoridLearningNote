.class Lcom/boohee/one/onekey/OneKeyContactActivity$4;
.super Ljava/lang/Object;
.source "OneKeyContactActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity;->uploadImage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 284
    const-string v0, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5~~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->dismissLoading()V

    .line 286
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 260
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->showLoading()V

    .line 265
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
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
    .line 269
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    const-string v2, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff01"

    invoke-virtual {p0, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->onFailed(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lboohee/lib/uploader/model/Picture;

    .line 274
    .local v1, "picture":Lboohee/lib/uploader/model/Picture;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    if-nez v2, :cond_3

    .line 275
    :cond_2
    const-string v2, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff01"

    invoke-virtual {p0, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # invokes: Lcom/boohee/one/onekey/OneKeyContactActivity;->createPhotoParams(Lboohee/lib/uploader/model/Picture;)Lcom/boohee/one/http/JsonParams;
    invoke-static {v2, v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$600(Lcom/boohee/one/onekey/OneKeyContactActivity;Lboohee/lib/uploader/model/Picture;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 279
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$4;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # invokes: Lcom/boohee/one/onekey/OneKeyContactActivity;->sendMessage(Lcom/boohee/one/http/JsonParams;)V
    invoke-static {v2, v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$700(Lcom/boohee/one/onekey/OneKeyContactActivity;Lcom/boohee/one/http/JsonParams;)V

    goto :goto_0
.end method
