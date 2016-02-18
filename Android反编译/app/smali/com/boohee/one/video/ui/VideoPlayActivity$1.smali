.class Lcom/boohee/one/video/ui/VideoPlayActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->initDesPlayerManager()V
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
    .line 231
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$1;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepareError()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$1;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->onPlayError()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$000(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 235
    return-void
.end method
