.class Lcom/boohee/one/video/ui/VideoPlayActivity$13;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->performFinishLesson()V
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
    .line 796
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$13;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$13;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->stopLesson()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1200(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 800
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$13;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$3000(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$13;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Lesson;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/ui/LessonFinishActivity;->comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;Z)V

    .line 801
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$13;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->finish()V

    .line 802
    return-void
.end method
