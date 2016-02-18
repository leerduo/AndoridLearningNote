.class Lcom/boohee/one/video/ui/NewLessonDetailActivity$2;
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

.field final synthetic val$dialog:Lcom/boohee/widgets/LightAlertDialog;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Lcom/boohee/widgets/LightAlertDialog;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$2;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iput-object p2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$2;->val$dialog:Lcom/boohee/widgets/LightAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$2;->val$dialog:Lcom/boohee/widgets/LightAlertDialog;

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->dismiss()V

    .line 269
    return-void
.end method
