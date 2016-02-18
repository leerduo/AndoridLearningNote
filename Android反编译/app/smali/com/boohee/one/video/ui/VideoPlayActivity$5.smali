.class Lcom/boohee/one/video/ui/VideoPlayActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->takeRest()Z
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
    .line 408
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$5;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restFinish()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$5;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->restFinish()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$700(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 412
    return-void
.end method
