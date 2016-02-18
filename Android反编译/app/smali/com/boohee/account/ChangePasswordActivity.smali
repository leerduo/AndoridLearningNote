.class public Lcom/boohee/account/ChangePasswordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ChangePasswordActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private newPwdEdit:Landroid/widget/EditText;

.field private oldPwdEdit:Landroid/widget/EditText;

.field private resetPwdLayout:Landroid/widget/LinearLayout;

.field private setPwdEdit:Landroid/widget/EditText;

.field private user_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/boohee/account/ChangePasswordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/account/ChangePasswordActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/ChangePasswordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ChangePasswordActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private changePwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldPwd"    # Ljava/lang/String;
    .param p2, "newPwd"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/boohee/account/ChangePasswordActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/boohee/account/ChangePasswordActivity$1;-><init>(Lcom/boohee/account/ChangePasswordActivity;Landroid/content/Context;)V

    invoke-static {p1, p2, p0, v0}, Lcom/boohee/api/PassportApi;->changePassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 105
    return-void
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/boohee/account/ChangePasswordActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/account/ChangePasswordActivity$2;-><init>(Lcom/boohee/account/ChangePasswordActivity;Landroid/content/Context;)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/PassportApi;->setPassword(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    const v4, 0x7f070138

    .line 65
    iget v3, p0, Lcom/boohee/account/ChangePasswordActivity;->user_type:I

    packed-switch v3, :pswitch_data_0

    .line 76
    iget-object v3, p0, Lcom/boohee/account/ChangePasswordActivity;->setPwdEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "passowrd":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/boohee/account/ChangePasswordActivity;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    .line 88
    .end local v2    # "passowrd":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v3, p0, Lcom/boohee/account/ChangePasswordActivity;->oldPwdEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "oldPassword":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/account/ChangePasswordActivity;->newPwdEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "newPassword":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/boohee/account/ChangePasswordActivity;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/boohee/account/ChangePasswordActivity;->changePwd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0    # "newPassword":Ljava/lang/String;
    .end local v1    # "oldPassword":Ljava/lang/String;
    .restart local v2    # "passowrd":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_4

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/boohee/account/ChangePasswordActivity;->ctx:Landroid/content/Context;

    const-string v4, "\u5bc6\u7801\u5fc5\u987b\u4e3a6-32\u4f4d\u54e6~"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-direct {p0, v2}, Lcom/boohee/account/ChangePasswordActivity;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 33
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangePasswordActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f0300a5

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangePasswordActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f0e02a8

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->resetPwdLayout:Landroid/widget/LinearLayout;

    .line 37
    const v0, 0x7f0e02a9

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->oldPwdEdit:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0e02aa

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->newPwdEdit:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f0e02ab

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->setPwdEdit:Landroid/widget/EditText;

    .line 40
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/account/ChangePasswordActivity;->user_type:I

    .line 41
    sget-object v0, Lcom/boohee/account/ChangePasswordActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/boohee/account/ChangePasswordActivity;->user_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/boohee/account/ChangePasswordActivity;->user_type:I

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->setPwdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity;->resetPwdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 51
    const/4 v0, 0x0

    const-string v1, "\u5b8c\u6210"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 52
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/boohee/account/ChangePasswordActivity;->onComplete()V

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
