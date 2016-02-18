.class public Lcom/boohee/account/ForgetPasspordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ForgetPasspordActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private accountStr:Ljava/lang/String;

.field forgetPassEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0307
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/boohee/account/ForgetPasspordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/account/ForgetPasspordActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/ForgetPasspordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ForgetPasspordActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/account/ForgetPasspordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ForgetPasspordActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/account/ForgetPasspordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private corfirmResetPassWord()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->forgetPassEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/boohee/account/ForgetPasspordActivity;->resetByPhone()V

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/boohee/account/ForgetPasspordActivity;->resetByEmail()V

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "\u8bf7\u6b63\u786e\u586b\u5199\u624b\u673a\u53f7\u7801/\u90ae\u7bb1"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private resetByEmail()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/boohee/account/ForgetPasspordActivity;->showLoading()V

    .line 67
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    new-instance v1, Lcom/boohee/account/ForgetPasspordActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/account/ForgetPasspordActivity$1;-><init>(Lcom/boohee/account/ForgetPasspordActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/PassportApi;->forgetPasswordByEmail(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 82
    return-void
.end method

.method private resetByPhone()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/boohee/account/ForgetPasspordActivity;->showLoading()V

    .line 86
    invoke-virtual {p0}, Lcom/boohee/account/ForgetPasspordActivity;->showLoading()V

    .line 87
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->accountStr:Ljava/lang/String;

    new-instance v1, Lcom/boohee/account/ForgetPasspordActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/account/ForgetPasspordActivity$2;-><init>(Lcom/boohee/account/ForgetPasspordActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/PassportApi;->forgetPasswordByPhone(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/boohee/account/ForgetPasspordActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0}, Lcom/boohee/account/ForgetPasspordActivity;->finish()V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0300cb

    invoke-virtual {p0, v0}, Lcom/boohee/account/ForgetPasspordActivity;->setContentView(I)V

    .line 34
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 35
    const v0, 0x7f070262

    invoke-virtual {p0, v0}, Lcom/boohee/account/ForgetPasspordActivity;->setTitle(I)V

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 40
    const/4 v0, 0x0

    const v1, 0x7f07047b

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 42
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/boohee/account/ForgetPasspordActivity;->corfirmResetPassWord()V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
