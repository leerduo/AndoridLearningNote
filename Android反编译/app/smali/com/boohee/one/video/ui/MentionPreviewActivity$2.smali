.class Lcom/boohee/one/video/ui/MentionPreviewActivity$2;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "MentionPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/MentionPreviewActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    invoke-direct {p0, p2}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;
    invoke-static {v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$400(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$300(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v2}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$000(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v2

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v0, v1, v2, p4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFileFailure(Landroid/content/Context;ILjava/io/File;)V

    .line 131
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # operator++ for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$508(Lcom/boohee/one/video/ui/MentionPreviewActivity;)I

    .line 132
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # ++operator for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$504(Lcom/boohee/one/video/ui/MentionPreviewActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 133
    const v0, 0x7f0701ea

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 134
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$502(Lcom/boohee/one/video/ui/MentionPreviewActivity;I)I

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # invokes: Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadFile()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$600(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V

    goto :goto_0
.end method

.method public onProgress(JJ)V
    .locals 5
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onProgress(JJ)V

    .line 143
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->progressBar:Lcom/boohee/widgets/ProgressWheel;

    const-wide/16 v2, 0x168

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/ProgressWheel;->setProgress(I)V

    .line 144
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;
    invoke-static {v1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$400(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$700(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v3}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$000(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v3

    iget v3, v3, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "target":Ljava/io/File;
    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;
    invoke-static {v1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$400(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 150
    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # invokes: Lcom/boohee/one/video/ui/MentionPreviewActivity;->playVideo()V
    invoke-static {v1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$800(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V

    .line 151
    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # invokes: Lcom/boohee/one/video/ui/MentionPreviewActivity;->ennableViewpagerScroll()V
    invoke-static {v1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$900(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V

    .line 152
    return-void
.end method
