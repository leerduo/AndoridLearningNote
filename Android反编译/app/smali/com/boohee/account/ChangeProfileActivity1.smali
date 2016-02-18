.class public Lcom/boohee/account/ChangeProfileActivity1;
.super Lcom/boohee/main/GestureActivity;
.source "ChangeProfileActivity1.java"


# static fields
.field public static final EXTRA_CODE:Ljava/lang/String; = "code"

.field public static final EXTRA_CODE_TEXT:Ljava/lang/String; = "codeText"

.field public static final EXTRA_DEFAULT_CONTENT:Ljava/lang/String; = "default_content"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private attributeText:Landroid/widget/TextView;

.field private code:Ljava/lang/String;

.field private contentEdit:Landroid/widget/EditText;

.field private defaultContent:Ljava/lang/String;

.field private wordNumTips:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/boohee/account/ChangeProfileActivity1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/account/ChangeProfileActivity1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/ChangeProfileActivity1;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity1;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity1;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/boohee/account/ChangeProfileActivity1;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    .line 59
    const-string v3, "default_content"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->defaultContent:Ljava/lang/String;

    .line 60
    sget-object v3, Lcom/boohee/account/ChangeProfileActivity1;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const v3, 0x7f0e02ad

    invoke-virtual {p0, v3}, Lcom/boohee/account/ChangeProfileActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->attributeText:Landroid/widget/TextView;

    .line 62
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->attributeText:Landroid/widget/TextView;

    const-string v4, "codeText"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v3, 0x7f0e02ae

    invoke-virtual {p0, v3}, Lcom/boohee/account/ChangeProfileActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->wordNumTips:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f0e02ac

    invoke-virtual {p0, v3}, Lcom/boohee/account/ChangeProfileActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    .line 65
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity1;->defaultContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v3, "user_name"

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 69
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->wordNumTips:Landroid/widget/TextView;

    const v4, 0x7f070580

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 79
    .local v2, "position":I
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 80
    .local v0, "etext":Landroid/text/Editable;
    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 81
    return-void

    .line 70
    .end local v0    # "etext":Landroid/text/Editable;
    .end local v2    # "position":I
    :cond_0
    const-string v3, "description"

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 72
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->wordNumTips:Landroid/widget/TextView;

    const v4, 0x7f070237

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 75
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->wordNumTips:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onComplete()V
    .locals 6

    .prologue
    .line 99
    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity1;->contentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const v2, 0x7f070138

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 150
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity1;->defaultContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/boohee/account/ChangeProfileActivity1;->finish()V

    goto :goto_0

    .line 108
    :cond_1
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/boohee/utility/RegularUtils;->checkUserName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    const v2, 0x7f070152

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 114
    .local v1, "length":I
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 116
    const v2, 0x7f070580

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v2, "description"

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    const/16 v2, 0x32

    if-le v1, v2, :cond_4

    .line 121
    const v2, 0x7f070237

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/boohee/account/ChangeProfileActivity1;->showLoading()V

    .line 126
    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity1;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1;->code:Ljava/lang/String;

    new-instance v4, Lcom/boohee/account/ChangeProfileActivity1$1;

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity1;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/boohee/account/ChangeProfileActivity1$1;-><init>(Lcom/boohee/account/ChangeProfileActivity1;Landroid/content/Context;)V

    invoke-static {v2, v3, v0, v4}, Lcom/boohee/api/OneApi;->updateUsersChangeProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0300a7

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangeProfileActivity1;->setContentView(I)V

    .line 51
    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangeProfileActivity1;->setTitle(I)V

    .line 52
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity1;->init()V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 85
    const/4 v0, 0x0

    const v1, 0x7f07017d

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 155
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/UserIntEvent;)V
    .locals 0
    .param p1, "userIntEvent"    # Lcom/boohee/one/event/UserIntEvent;

    .prologue
    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity1;->onComplete()V

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
