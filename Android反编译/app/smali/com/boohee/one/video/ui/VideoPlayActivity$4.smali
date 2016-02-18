.class Lcom/boohee/one/video/ui/VideoPlayActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->onPlayError()V
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
    .line 346
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$4;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$4;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->finish()V

    .line 350
    return-void
.end method
