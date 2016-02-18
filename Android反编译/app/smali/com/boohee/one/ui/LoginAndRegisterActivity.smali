.class public Lcom/boohee/one/ui/LoginAndRegisterActivity;
.super Lcom/boohee/main/GestureActivity;
.source "LoginAndRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;
    }
.end annotation


# static fields
.field public static final LAU_KEY:Ljava/lang/String; = "LAU_KEY"

.field public static final LAU_TYPE_LOGIN:I = 0x1

.field public static final LAU_TYPE_REGISTER:I = 0x2


# instance fields
.field private accountEdit:Landroid/widget/EditText;

.field private actionType:I

.field private checkBox:Landroid/widget/CheckBox;

.field private dealLayout:Landroid/widget/LinearLayout;

.field private dividerLayout:Landroid/widget/FrameLayout;

.field private forgetPwdText:Landroid/widget/TextView;

.field private leyuLoginText:Landroid/widget/TextView;

.field private loginBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mSNSLogin:Lcom/boohee/utils/SNSLogin;

.field private mUploadSNSInfoListener:Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;

.field private mUser:Lcom/boohee/model/User;

.field private moreLoginText:Landroid/widget/TextView;

.field private passWordEdit:Landroid/widget/EditText;

.field private passwordLayout:Landroid/widget/LinearLayout;

.field private phoneEmailEdit:Landroid/widget/EditText;

.field private thirdLayout:Landroid/widget/LinearLayout;

.field private tipsText:Landroid/widget/TextView;

.field private userDeal:Landroid/widget/TextView;

.field private userNameDivider:Landroid/view/View;

.field private userNameLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/LoginAndRegisterActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/LoginAndRegisterActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/LoginAndRegisterActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/LoginAndRegisterActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Lcom/boohee/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/LoginAndRegisterActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/LoginAndRegisterActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/LoginAndRegisterActivity;
    .param p1, "x1"    # Lcom/boohee/model/User;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;

    return-object p1
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a5

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a4

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a3

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->forgetPwdText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userDeal:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/boohee/one/ui/LoginAndRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity$1;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->moreLoginText:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity$2;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/LoginAndRegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity$3;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method private cancleAction()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 290
    invoke-virtual {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finish()V

    .line 291
    return-void
.end method

.method public static comeOnBaby(ZLandroid/app/Activity;)V
    .locals 3
    .param p0, "isLogin"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "LAU_KEY"

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 387
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 389
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 385
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00fc

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->phoneEmailEdit:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e019c

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userNameDivider:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e019b

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e9

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a0

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->forgetPwdText:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ff

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e019d

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->tipsText:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00fd

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->checkBox:Landroid/widget/CheckBox;

    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00fe

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userDeal:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00fb

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userNameLayout:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a1

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dividerLayout:Landroid/widget/FrameLayout;

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e019e

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dealLayout:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->thirdLayout:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e019f

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->passwordLayout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a6

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->moreLoginText:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e01a7

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 194
    const-string v0, "com.umeng.login"

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 197
    invoke-virtual {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LAU_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    .line 198
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->setUpUi()V

    .line 199
    new-instance v0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;

    .line 200
    new-instance v0, Lcom/boohee/utils/SNSLogin;

    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v2, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/utils/SNSLogin;-><init>(Lcom/boohee/one/ui/BaseActivity;Lcom/umeng/socialize/controller/UMSocialService;Lcom/boohee/one/http/JsonCallback;)V

    iput-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    .line 201
    return-void
.end method

.method private loginAction()V
    .locals 5

    .prologue
    .line 295
    iget-object v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "accountStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "pwdStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->phoneEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "phoneEmail":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 300
    iget v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 301
    iget-object v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v3, v0, v2}, Lcom/boohee/utils/ThirdLoginHelper;->doLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 303
    iget-object v3, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v4, ""

    invoke-static {v3, v0, v1, v2, v4}, Lcom/boohee/utils/ThirdLoginHelper;->doRegister(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUpUi()V
    .locals 5

    .prologue
    const v4, 0x7f07046a

    const v1, 0x7f070300

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 309
    iget v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userNameDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->setTitle(I)V

    .line 315
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->forgetPwdText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 317
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->tipsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dividerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dealLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->thirdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->passwordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 323
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->moreLoginText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->passwordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->userNameDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-virtual {p0, v4}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->setTitle(I)V

    .line 332
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->forgetPwdText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 334
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->tipsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dividerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dealLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->thirdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    const-string v1, "\u7528\u6237\u540d"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->moreLoginText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/utils/AccountUtils;->login(Landroid/app/Activity;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 257
    .local v0, "ssoHandler":Lcom/umeng/socialize/sso/UMSsoHandler;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 378
    invoke-static {p0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 379
    invoke-virtual {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finish()V

    .line 380
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 226
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 244
    :goto_1
    return-void

    .line 208
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginAction()V

    goto :goto_0

    .line 211
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/account/ForgetPasspordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "http://shop.boohee.com/store/pages/boohee_privacy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070605

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v1, "com.tencent.mm"

    invoke-static {p0, v1}, Lcom/boohee/utils/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const-string v1, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    invoke-static {v1}, Lcom/boohee/utils/ThirdLoginHelper;->weixinLogin(Lcom/boohee/utils/SNSLogin;)V

    goto :goto_1

    .line 236
    :pswitch_1
    const-string v1, "/api/v1/user_connections/authenticate_sns.json"

    iget-object v2, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;

    invoke-static {p0, v1, v2}, Lcom/boohee/utils/SNSLogin;->qqLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_1

    .line 239
    :pswitch_2
    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    invoke-static {v1}, Lcom/boohee/utils/ThirdLoginHelper;->weiboLogin(Lcom/boohee/utils/SNSLogin;)V

    goto :goto_1

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x7f0e00fe -> :sswitch_2
        0x7f0e00ff -> :sswitch_0
        0x7f0e01a0 -> :sswitch_1
    .end sparse-switch

    .line 226
    :pswitch_data_0
    .packed-switch 0x7f0e01a3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f070300

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->setTitle(I)V

    .line 72
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->setContentView(I)V

    .line 73
    iput-object p0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->findView()V

    .line 75
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->addListener()V

    .line 76
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->init()V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 264
    const/4 v1, 0x0

    iget v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f07046a

    :goto_0
    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 266
    return v2

    .line 264
    :cond_0
    const v0, 0x7f070300

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x102002c

    if-ne v0, v3, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->cancleAction()V

    .line 283
    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 273
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 274
    iget v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    .line 275
    iget v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->actionType:I

    if-ne v0, v1, :cond_3

    .line 276
    const v0, 0x7f070300

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 280
    :goto_2
    invoke-direct {p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->setUpUi()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 274
    goto :goto_1

    .line 278
    :cond_3
    const v0, 0x7f07046a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method
