.class Lcom/boohee/one/ui/SelectClubActivity$2;
.super Ljava/lang/Object;
.source "SelectClubActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SelectClubActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SelectClubActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SelectClubActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/boohee/one/ui/SelectClubActivity$2;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity$2;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/SelectClubActivity;->finish()V

    .line 121
    return-void
.end method
