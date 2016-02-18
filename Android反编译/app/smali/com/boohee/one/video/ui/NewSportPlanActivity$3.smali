.class Lcom/boohee/one/video/ui/NewSportPlanActivity$3;
.super Ljava/lang/Object;
.source "NewSportPlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/NewSportPlanActivity;->refreshDashBoard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewSportPlanActivity;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    iput-object p2, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 203
    return-void
.end method
