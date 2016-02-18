.class Lcom/boohee/one/video/ui/VideoPlayActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->initVideoData()V
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
    .line 325
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/one/video/entity/Mention;->is_times:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->isMentionComplete()Z
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$200(Lcom/boohee/one/video/ui/VideoPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$300(Lcom/boohee/one/video/ui/VideoPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->countDownRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # operator++ for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$608(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 337
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 338
    return-void
.end method
