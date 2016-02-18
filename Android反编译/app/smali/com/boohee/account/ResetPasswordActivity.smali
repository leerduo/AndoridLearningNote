.class public Lcom/boohee/account/ResetPasswordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ResetPasswordActivity.java"


# instance fields
.field private code:Ljava/lang/String;

.field private newPassword:Ljava/lang/String;

.field resetCodeEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01fb
    .end annotation
.end field

.field resetPasswordEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01fc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/ResetPasswordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ResetPasswordActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/account/ResetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method private confirmReset()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801!"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->newPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801!"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->newPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->newPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 81
    :cond_2
    const-string v0, "\u5bc6\u7801\u5fc5\u987b\u4e3a6-32\u4f4d\u54e6~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/boohee/account/ResetPasswordActivity;->resetPassword()V

    goto :goto_0
.end method

.method private resetPassword()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/boohee/account/ResetPasswordActivity;->showLoading()V

    .line 90
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->newPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/account/ResetPasswordActivity;->code:Ljava/lang/String;

    new-instance v2, Lcom/boohee/account/ResetPasswordActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/boohee/account/ResetPasswordActivity$1;-><init>(Lcom/boohee/account/ResetPasswordActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0, v2}, Lcom/boohee/api/PassportApi;->finishResetPassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Lcom/boohee/account/ResetPasswordActivity;->finish()V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcom/boohee/account/ResetPasswordActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 53
    const v0, 0x7f07047b

    invoke-virtual {p0, v0}, Lcom/boohee/account/ResetPasswordActivity;->setTitle(I)V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 58
    const/4 v0, 0x0

    const-string v1, "\u786e\u5b9a"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 59
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->resetCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->code:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->resetPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ResetPasswordActivity;->newPassword:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/boohee/account/ResetPasswordActivity;->confirmReset()V

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
