.class Lcom/boohee/one/video/ui/VideoPlayActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;
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
    .line 590
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 593
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/one/video/entity/Mention;->is_times:Z

    if-nez v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1000(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chronometer : playCountNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$300(Lcom/boohee/one/video/ui/VideoPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->updateProgress()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2000(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 597
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v1

    iget v1, v1, Lcom/boohee/one/video/entity/Mention;->number:I

    if-gt v0, v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

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

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v0

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->number:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5

    .line 601
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v0

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->number:I

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 602
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/manager/DesPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "d_last_ten_seconds"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->isMentionComplete()Z
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$200(Lcom/boohee/one/video/ui/VideoPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 611
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # operator++ for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$608(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    .line 612
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 617
    :cond_2
    :goto_2
    return-void

    .line 598
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v3}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 603
    :cond_4
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v0

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->number:I

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/manager/DesPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2200(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "didi"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 607
    :cond_5
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/manager/DesPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2300(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "didi"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 614
    :cond_6
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
