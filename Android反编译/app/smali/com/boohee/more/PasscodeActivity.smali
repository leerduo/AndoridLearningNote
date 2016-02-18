.class public Lcom/boohee/more/PasscodeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "PasscodeActivity.java"


# static fields
.field public static final ACTION_PASSWORD_CLOSE:Ljava/lang/String; = "com.boohee.one.action.PASSWORD_CLOSE"

.field public static final ACTION_PASSWORD_INPUT:Ljava/lang/String; = "com.boohee.one.action.PASSWORD_INPUT"

.field public static final ACTION_PASSWORD_OPEN:Ljava/lang/String; = "com.boohee.one.action.PASSWORD_OPEN"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private action:Ljava/lang/String;

.field private passcodeView1:Lcom/boohee/myview/PasscodeView;

.field private passcodeView2:Lcom/boohee/myview/PasscodeView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/boohee/more/PasscodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/PasscodeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/PasscodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/more/PasscodeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/boohee/more/PasscodeActivity;->setPasswordOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/more/PasscodeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/boohee/more/PasscodeActivity;->setPasswordClose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/more/PasscodeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/boohee/more/PasscodeActivity;->setPasswordInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/more/PasscodeActivity;)Lcom/boohee/myview/PasscodeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView1:Lcom/boohee/myview/PasscodeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/more/PasscodeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/more/PasscodeActivity;)Lcom/boohee/myview/PasscodeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView2:Lcom/boohee/myview/PasscodeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/more/PasscodeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/PasscodeActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private getPwd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/boohee/database/OnePreference;

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "prefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f0e0526

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/PasscodeView;

    iput-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView1:Lcom/boohee/myview/PasscodeView;

    .line 49
    const v0, 0x7f0e0527

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/PasscodeView;

    iput-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView2:Lcom/boohee/myview/PasscodeView;

    .line 50
    const v0, 0x7f0e049a

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/boohee/more/PasscodeActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 52
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView1:Lcom/boohee/myview/PasscodeView;

    new-instance v1, Lcom/boohee/more/PasscodeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/PasscodeActivity$1;-><init>(Lcom/boohee/more/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/PasscodeView;->setOnPasswordCompleteListener(Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;)V

    .line 64
    return-void
.end method

.method private removePwd()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/boohee/database/OnePreference;

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "prefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->remove(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private setPasswordClose(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/boohee/more/PasscodeActivity;->getPwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/boohee/more/PasscodeActivity;->removePwd()V

    .line 90
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f070404

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView1:Lcom/boohee/myview/PasscodeView;

    invoke-virtual {v0}, Lcom/boohee/myview/PasscodeView;->emptyInput()V

    .line 94
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f070405

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private setPasswordInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/boohee/more/PasscodeActivity;->getPwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->finish()V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView1:Lcom/boohee/myview/PasscodeView;

    invoke-virtual {v0}, Lcom/boohee/myview/PasscodeView;->emptyInput()V

    .line 104
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f070405

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private setPasswordOpen(Ljava/lang/String;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040021

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 68
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040022

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 69
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 71
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView2:Lcom/boohee/myview/PasscodeView;

    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Lcom/boohee/myview/PasscodeView;->setPasscodeTitle(I)V

    .line 72
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity;->passcodeView2:Lcom/boohee/myview/PasscodeView;

    new-instance v1, Lcom/boohee/more/PasscodeActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/more/PasscodeActivity$2;-><init>(Lcom/boohee/more/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/PasscodeView;->setOnPasswordCompleteListener(Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/MyApplication;

    invoke-virtual {v1}, Lcom/boohee/one/MyApplication;->getIsMainOpened()Z

    move-result v0

    .line 138
    .local v0, "isOpen":Z
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/boohee/more/PasscodeActivity;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0301a8

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;

    .line 37
    const-string v0, "com.boohee.one.action.PASSWORD_INPUT"

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const v0, 0x7f0702c4

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->setTitle(I)V

    .line 44
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/boohee/more/PasscodeActivity;->init()V

    .line 45
    return-void

    .line 39
    :cond_1
    const-string v0, "com.boohee.one.action.PASSWORD_OPEN"

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const v0, 0x7f0704c2

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->setTitle(I)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "com.boohee.one.action.PASSWORD_CLOSE"

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const v0, 0x7f070167

    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->setTitle(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 124
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 125
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notice_message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/boohee/more/PasscodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notice_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 127
    .local v2, "noticeId":I
    if-eqz v1, :cond_0

    const-string v3, "com.boohee.one.action.PASSWORD_INPUT"

    iget-object v4, p0, Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    const-class v4, Lcom/boohee/more/ViewTipActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "notice_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v3, "notice_message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/boohee/more/PasscodeActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public savePwd(Ljava/lang/String;)V
    .locals 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/boohee/database/OnePreference;

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "prefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
