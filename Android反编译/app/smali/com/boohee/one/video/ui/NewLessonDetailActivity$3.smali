.class Lcom/boohee/one/video/ui/NewLessonDetailActivity$3;
.super Ljava/lang/Object;
.source "NewLessonDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/NewLessonDetailActivity;->checkDownloadEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$3;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$3;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->performDownload()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$200(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V

    .line 275
    return-void
.end method
