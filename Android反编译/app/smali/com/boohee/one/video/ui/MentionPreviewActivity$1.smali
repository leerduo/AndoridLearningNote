.class Lcom/boohee/one/video/ui/MentionPreviewActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MentionPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/MentionPreviewActivity;->initView()V
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
    .line 102
    iput-object p1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 106
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 107
    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # getter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$100(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    # setter for: Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;
    invoke-static {v1, v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$002(Lcom/boohee/one/video/ui/MentionPreviewActivity;Lcom/boohee/one/video/entity/Mention;)Lcom/boohee/one/video/entity/Mention;

    .line 109
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;->this$0:Lcom/boohee/one/video/ui/MentionPreviewActivity;

    # invokes: Lcom/boohee/one/video/ui/MentionPreviewActivity;->setCurrentIndex(I)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->access$200(Lcom/boohee/one/video/ui/MentionPreviewActivity;I)V

    .line 110
    return-void
.end method
