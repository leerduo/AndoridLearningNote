.class public Lcom/boohee/one/ui/SetInvitorActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SetInvitorActivity.java"


# instance fields
.field private friendPhoneNumber:Landroid/widget/EditText;

.field private skipTipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/SetInvitorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SetInvitorActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->goDirect()V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity;->skipTipText:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/SetInvitorActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/SetInvitorActivity$1;-><init>(Lcom/boohee/one/ui/SetInvitorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method private createParams(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "token"

    iget-object v3, p0, Lcom/boohee/one/ui/SetInvitorActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v2, "user_key"

    iget-object v3, p0, Lcom/boohee/one/ui/SetInvitorActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v2, "referrer_cellphone"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity;->skipTipText:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e0177

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity;->friendPhoneNumber:Landroid/widget/EditText;

    .line 44
    return-void
.end method

.method private goDirect()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/SetInvitorActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SetInvitorActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->finish()V

    .line 111
    return-void
.end method

.method private rightAction()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/boohee/one/ui/SetInvitorActivity;->friendPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "phone":Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 80
    :cond_0
    const-string v1, "\u624b\u673a\u53f7\u586b\u5199\u6709\u8bef~~"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v1, Lcom/boohee/one/ui/SetInvitorActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/SetInvitorActivity$2;-><init>(Lcom/boohee/one/ui/SetInvitorActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/PassportApi;->createReferrer(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public leftAction()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->goDirect()V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "\u9080\u8bf7\u4e0e\u9a8c\u8bc1"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SetInvitorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SetInvitorActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->findView()V

    .line 38
    invoke-direct {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->addListener()V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 57
    const/4 v0, 0x0

    const v1, 0x7f0703b8

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 58
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->rightAction()V

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/boohee/one/ui/SetInvitorActivity;->leftAction()V

    .line 69
    :cond_1
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
