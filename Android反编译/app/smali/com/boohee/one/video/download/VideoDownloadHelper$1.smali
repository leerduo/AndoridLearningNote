.class Lcom/boohee/one/video/download/VideoDownloadHelper$1;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "VideoDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFiles(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$onDownloadListener:Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/download/VideoDownloadHelper;Landroid/content/Context;Landroid/content/Context;Ljava/util/List;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iput-object p3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$list:Ljava/util/List;

    iput-object p5, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$onDownloadListener:Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;

    iput-object p6, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$list:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    # getter for: Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I
    invoke-static {v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->access$200(Lcom/boohee/one/video/download/VideoDownloadHelper;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v1, v2, v0, p4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFileFailure(Landroid/content/Context;ILjava/io/File;)V

    .line 123
    iget-object v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$onDownloadListener:Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$onDownloadListener:Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;

    invoke-interface {v0}, Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;->onDownloadFail()V

    .line 126
    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onProgress(JJ)V

    .line 131
    iget-object v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    # getter for: Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I
    invoke-static {v1}, Lcom/boohee/one/video/download/VideoDownloadHelper;->access$200(Lcom/boohee/one/video/download/VideoDownloadHelper;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v2, v1

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p1

    div-long/2addr v4, p3

    add-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 136
    const-string v1, "VideoDownloadHelper"

    const-string v2, "downloadVideo success"

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    const/4 v2, 0x1

    # setter for: Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z
    invoke-static {v1, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->access$302(Lcom/boohee/one/video/download/VideoDownloadHelper;Z)Z

    .line 138
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$list:Ljava/util/List;

    iget-object v4, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    # getter for: Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I
    invoke-static {v4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->access$200(Lcom/boohee/one/video/download/VideoDownloadHelper;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/video/entity/Mention;

    iget v1, v1, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "target":Ljava/io/File;
    iget-object v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    invoke-virtual {v1, p3, v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 140
    iget-object v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->this$0:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$list:Ljava/util/List;

    iget-object v4, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;->val$onDownloadListener:Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;

    # invokes: Lcom/boohee/one/video/download/VideoDownloadHelper;->isDownloadFinish(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/boohee/one/video/download/VideoDownloadHelper;->access$400(Lcom/boohee/one/video/download/VideoDownloadHelper;Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    .line 141
    return-void
.end method
