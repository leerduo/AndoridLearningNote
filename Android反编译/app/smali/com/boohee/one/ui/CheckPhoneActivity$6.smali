.class Lcom/boohee/one/ui/CheckPhoneActivity$6;
.super Ljava/lang/Object;
.source "CheckPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CheckPhoneActivity;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CheckPhoneActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$6;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$6;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    const/4 v1, 0x1

    # setter for: Lcom/boohee/one/ui/CheckPhoneActivity;->force:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$1402(Lcom/boohee/one/ui/CheckPhoneActivity;I)I

    .line 359
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$6;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->getCode()V
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$000(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    .line 360
    return-void
.end method
