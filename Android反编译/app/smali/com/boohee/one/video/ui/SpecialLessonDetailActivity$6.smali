.class Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;
.super Ljava/lang/Object;
.source "SpecialLessonDetailActivity.java"

# interfaces
.implements Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # ++operator for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadRetry:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$604(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 392
    const v0, 0x7f0701ea

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 393
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # setter for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadRetry:I
    invoke-static {v0, v2}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$602(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;I)I

    .line 394
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->download()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$700(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V

    goto :goto_0
.end method

.method public onDownloadFinish()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadFinish()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$500(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V

    .line 387
    return-void
.end method
