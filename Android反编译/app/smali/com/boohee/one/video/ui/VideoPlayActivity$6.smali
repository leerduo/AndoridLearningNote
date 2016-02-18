.class Lcom/boohee/one/video/ui/VideoPlayActivity$6;
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
    .line 424
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$800(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # operator-- for: Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$810(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    .line 429
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$800(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v2

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->rest:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->setCount(Ljava/lang/String;I)V

    .line 430
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1000(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mention rest time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I
    invoke-static {v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$800(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    iget-object v1, v1, Lcom/boohee/one/video/ui/VideoPlayActivity;->restRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->restFinish()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$700(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    goto :goto_0
.end method
