.class Lcom/boohee/one/video/ui/LessonDetailActivity$2;
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

.field final synthetic val$dialog:Lcom/boohee/widgets/LightAlertDialog;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/LessonDetailActivity;Lcom/boohee/widgets/LightAlertDialog;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$2;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iput-object p2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$2;->val$dialog:Lcom/boohee/widgets/LightAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$2;->val$dialog:Lcom/boohee/widgets/LightAlertDialog;

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->dismiss()V

    .line 249
    return-void
.end method
