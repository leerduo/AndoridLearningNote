.class Lcom/boohee/one/ui/CheckPhoneActivity$7;
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
    .line 362
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$7;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 365
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    return-void
.end method
