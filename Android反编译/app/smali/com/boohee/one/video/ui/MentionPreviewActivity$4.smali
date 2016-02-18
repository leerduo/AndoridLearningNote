.class Lcom/boohee/one/video/ui/MentionPreviewActivity$4;
.super Ljava/lang/Object;
.source "MentionPreviewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/MentionPreviewActivity;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$4;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$4;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->progressLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 181
    return-void
.end method
