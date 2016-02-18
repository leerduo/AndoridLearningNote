.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;
.super Ljava/lang/Object;
.source "NewLoginAndRegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showLeyunDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

.field final synthetic val$accountEdit:Landroid/widget/EditText;

.field final synthetic val$passwordEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->val$accountEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->val$passwordEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->val$accountEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->val$passwordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;
    invoke-static {v3}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$400(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ThirdLoginHelper;->leyuLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 386
    return-void
.end method
