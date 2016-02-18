.class Lcom/boohee/one/video/ui/VideoPlayActivity$11;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->playDesMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2500(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2600(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 644
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2600(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # setter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I
    invoke-static {v0, v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2502(Lcom/boohee/one/video/ui/VideoPlayActivity;I)I

    .line 646
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    const/4 v1, 0x1

    # setter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$302(Lcom/boohee/one/video/ui/VideoPlayActivity;Z)Z

    .line 647
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 648
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 649
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->startMentionTime()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2700(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 650
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/one/video/entity/Mention;->is_times:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->countDownRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v2

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->number:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->refreshMentionCount(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1700(Lcom/boohee/one/video/ui/VideoPlayActivity;Ljava/lang/String;)V

    .line 660
    :goto_2
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 655
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v3}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # operator++ for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2508(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    .line 659
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$11;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->playDesMusic()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2800(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    goto :goto_2
.end method
