.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$8;
.super Ljava/lang/Object;
.source "NewLoginAndRegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$8;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$8;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/account/ForgetPasspordActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 536
    return-void
.end method
