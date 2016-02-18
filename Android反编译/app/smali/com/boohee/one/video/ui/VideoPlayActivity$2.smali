.class Lcom/boohee/one/video/ui/VideoPlayActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 318
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$2;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$2;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->onPlayError()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$000(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 322
    const/4 v0, 0x1

    return v0
.end method
