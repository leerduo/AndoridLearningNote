.class public Lcom/boohee/one/ui/CompleteRegisterActivity;
.super Lcom/boohee/main/GestureActivity;
.source "CompleteRegisterActivity.java"


# static fields
.field public static final CELLPHONE:Ljava/lang/String; = "CELLPHONE"

.field public static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private cellPhone:Ljava/lang/String;

.field checkBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00fd
    .end annotation
.end field

.field etName:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00fc
    .end annotation
.end field

.field etPassWord:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e9
    .end annotation
.end field

.field loginBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ff
    .end annotation
.end field

.field private mUser:Lcom/boohee/model/User;

.field private token:Ljava/lang/String;

.field userDeal:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00fe
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/CompleteRegisterActivity;)Lcom/boohee/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CompleteRegisterActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->mUser:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/CompleteRegisterActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CompleteRegisterActivity;
    .param p1, "x1"    # Lcom/boohee/model/User;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->mUser:Lcom/boohee/model/User;

    return-object p1
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/boohee/one/ui/CompleteRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/CompleteRegisterActivity$1;-><init>(Lcom/boohee/one/ui/CompleteRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cellphone"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/CompleteRegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CELLPHONE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CELLPHONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->cellPhone:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->token:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private register()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "userName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const v0, 0x7f07060b

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 122
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->etPassWord:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "passWord":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const v0, 0x7f070402

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->showLoading()V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->cellPhone:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->token:Ljava/lang/String;

    new-instance v5, Lcom/boohee/one/ui/CompleteRegisterActivity$2;

    iget-object v6, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v5, p0, v6}, Lcom/boohee/one/ui/CompleteRegisterActivity$2;-><init>(Lcom/boohee/one/ui/CompleteRegisterActivity;Landroid/content/Context;)V

    invoke-static/range {v0 .. v5}, Lcom/boohee/api/PassportApi;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public OnClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00fe,
            0x7f0e00ff
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070605

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://shop.boohee.com/store/pages/boohee_privacy"

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-direct {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->register()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f07046a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->setTitle(I)V

    .line 58
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 60
    invoke-direct {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->handleIntent()V

    .line 61
    invoke-direct {p0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->addListener()V

    .line 62
    return-void
.end method
