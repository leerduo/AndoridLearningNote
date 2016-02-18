.class Lcom/boohee/one/video/ui/LessonDetailActivity$4;
.super Ljava/lang/Object;
.source "LessonDetailActivity.java"

# interfaces
.implements Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/LessonDetailActivity;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/LessonDetailActivity;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # ++operator for: Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadRetry:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$404(Lcom/boohee/one/video/ui/LessonDetailActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 285
    const v0, 0x7f0701ea

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 286
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # setter for: Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadRetry:I
    invoke-static {v0, v2}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$402(Lcom/boohee/one/video/ui/LessonDetailActivity;I)I

    .line 287
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvStart:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/LessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/LessonDetailActivity;->download()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$500(Lcom/boohee/one/video/ui/LessonDetailActivity;)V

    goto :goto_0
.end method

.method public onDownloadFinish()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadFinish()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$300(Lcom/boohee/one/video/ui/LessonDetailActivity;)V

    .line 280
    return-void
.end method
