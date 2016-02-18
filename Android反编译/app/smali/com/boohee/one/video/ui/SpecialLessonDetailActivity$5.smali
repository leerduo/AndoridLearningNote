.class Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$5;
.super Ljava/lang/Object;
.source "SpecialLessonDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->checkDownloadEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$5;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$5;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->performDownload()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$400(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V

    .line 362
    return-void
.end method
