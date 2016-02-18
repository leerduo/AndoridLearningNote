.class Lcom/boohee/one/easemob/HXShowBigImage$2;
.super Ljava/lang/Object;
.source "HXShowBigImage.java"

# interfaces
.implements Lcom/easemob/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/easemob/HXShowBigImage;->downloadImage(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/HXShowBigImage;


# direct methods
.method constructor <init>(Lcom/boohee/one/easemob/HXShowBigImage;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/boohee/one/easemob/HXShowBigImage$2;->this$0:Lcom/boohee/one/easemob/HXShowBigImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    # getter for: Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/easemob/HXShowBigImage;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline file transfer error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage$2;->this$0:Lcom/boohee/one/easemob/HXShowBigImage;

    # getter for: Lcom/boohee/one/easemob/HXShowBigImage;->localFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/easemob/HXShowBigImage;->access$100(Lcom/boohee/one/easemob/HXShowBigImage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage$2;->this$0:Lcom/boohee/one/easemob/HXShowBigImage;

    new-instance v2, Lcom/boohee/one/easemob/HXShowBigImage$2$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/easemob/HXShowBigImage$2$2;-><init>(Lcom/boohee/one/easemob/HXShowBigImage$2;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/easemob/HXShowBigImage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 172
    # getter for: Lcom/boohee/one/easemob/HXShowBigImage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/easemob/HXShowBigImage;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage$2;->this$0:Lcom/boohee/one/easemob/HXShowBigImage;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXShowBigImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "str2":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/easemob/HXShowBigImage$2;->this$0:Lcom/boohee/one/easemob/HXShowBigImage;

    new-instance v2, Lcom/boohee/one/easemob/HXShowBigImage$2$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/boohee/one/easemob/HXShowBigImage$2$3;-><init>(Lcom/boohee/one/easemob/HXShowBigImage$2;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/easemob/HXShowBigImage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/boohee/one/easemob/HXShowBigImage$2;->this$0:Lcom/boohee/one/easemob/HXShowBigImage;

    new-instance v1, Lcom/boohee/one/easemob/HXShowBigImage$2$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/HXShowBigImage$2$1;-><init>(Lcom/boohee/one/easemob/HXShowBigImage$2;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/HXShowBigImage;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
