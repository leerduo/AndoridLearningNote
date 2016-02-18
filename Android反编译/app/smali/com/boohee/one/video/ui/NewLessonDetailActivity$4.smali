.class Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;
.super Ljava/lang/Object;
.source "NewLessonDetailActivity.java"

# interfaces
.implements Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/NewLessonDetailActivity;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # ++operator for: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadRetry:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$404(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 305
    const v0, 0x7f0701ea

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 306
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # setter for: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadRetry:I
    invoke-static {v0, v2}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$402(Lcom/boohee/one/video/ui/NewLessonDetailActivity;I)I

    .line 307
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->download()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$500(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V

    goto :goto_0
.end method

.method public onDownloadFinish()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadFinish()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$300(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V

    .line 300
    return-void
.end method
