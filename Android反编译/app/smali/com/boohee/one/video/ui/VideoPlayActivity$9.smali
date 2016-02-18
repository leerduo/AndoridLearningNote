.class Lcom/boohee/one/video/ui/VideoPlayActivity$9;
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
    .line 580
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1000(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countDown : playCountNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

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

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

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

    .line 585
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/manager/DesPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1800(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v2}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 586
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->updateProgress()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$2000(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 587
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I
    invoke-static {v3}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
