.class Lcom/boohee/one/video/ui/LessonDetailActivity$3;
.super Ljava/lang/Object;
.source "LessonDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/LessonDetailActivity;->checkDownloadEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/LessonDetailActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$3;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$3;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/LessonDetailActivity;->performDownload()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$200(Lcom/boohee/one/video/ui/LessonDetailActivity;)V

    .line 255
    return-void
.end method
