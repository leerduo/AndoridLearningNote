.class Lcom/boohee/one/video/ui/VideoPlayActivity$7;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->lessonFinish()V
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
    .line 517
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$7;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$7;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->removeCallbacks()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1100(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 521
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$7;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->stopLesson()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1200(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 522
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$7;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->postProgress()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1300(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 523
    return-void
.end method
