.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$1;
.super Ljava/lang/Object;
.source "NewLoginAndRegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->addListener()V
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
    .line 129
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$1;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$1;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$1;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 138
    return-void
.end method
