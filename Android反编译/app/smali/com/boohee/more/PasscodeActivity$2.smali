.class Lcom/boohee/more/PasscodeActivity$2;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/PasscodeActivity;->setPasswordOpen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/PasscodeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/PasscodeActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->passcodeView1:Lcom/boohee/myview/PasscodeView;
    invoke-static {v0}, Lcom/boohee/more/PasscodeActivity;->access$400(Lcom/boohee/more/PasscodeActivity;)Lcom/boohee/myview/PasscodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/PasscodeView;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    invoke-virtual {v0, p1}, Lcom/boohee/more/PasscodeActivity;->savePwd(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/more/PasscodeActivity;->access$500(Lcom/boohee/more/PasscodeActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070408

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    .line 78
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    invoke-virtual {v0}, Lcom/boohee/more/PasscodeActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->passcodeView2:Lcom/boohee/myview/PasscodeView;
    invoke-static {v0}, Lcom/boohee/more/PasscodeActivity;->access$600(Lcom/boohee/more/PasscodeActivity;)Lcom/boohee/myview/PasscodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/PasscodeView;->emptyInput()V

    .line 81
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$2;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/more/PasscodeActivity;->access$700(Lcom/boohee/more/PasscodeActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070406

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
