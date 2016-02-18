.class Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$4;
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

.field final synthetic val$dialog:Lcom/boohee/widgets/LightAlertDialog;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Lcom/boohee/widgets/LightAlertDialog;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$4;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iput-object p2, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$4;->val$dialog:Lcom/boohee/widgets/LightAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$4;->val$dialog:Lcom/boohee/widgets/LightAlertDialog;

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->dismiss()V

    .line 356
    return-void
.end method
