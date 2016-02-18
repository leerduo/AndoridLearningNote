.class public Lcom/boohee/one/ui/NewLoginAndRegisterActivity;
.super Lcom/boohee/main/GestureActivity;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;,
        Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;,
        Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;
    }
.end annotation


# static fields
.field public static final LAU_KEY:Ljava/lang/String; = "LAU_KEY"

.field public static final LAU_TYPE_LOGIN:I = 0x1

.field public static final LAU_TYPE_REGISTER:I = 0x2

.field private static final UPDATE_TIME:I = 0x110


# instance fields
.field accountEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e019b
    .end annotation
.end field

.field private actionType:I

.field btCaptcha:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c1
    .end annotation
.end field

.field dealLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e019e
    .end annotation
.end field

.field forgetPwdText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01a0
    .end annotation
.end field

.field leyuLoginText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01a7
    .end annotation
.end field

.field loginBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ff
    .end annotation
.end field

.field private mCaptcha:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

.field private mCheckHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mNumber:I

.field private mSNSLogin:Lcom/boohee/utils/SNSLogin;

.field private mUploadSNSInfoListener:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

.field private mUser:Lcom/boohee/model/User;

.field moreLoginText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01a6
    .end annotation
.end field

.field passWordEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e9
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field tvVoiceCaptcha:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    .line 79
    const/16 v0, 0x3c

    iput v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->token:Ljava/lang/String;

    .line 308
    return-void
.end method

.method static synthetic access$010(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->refreshTimeView()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)Lcom/boohee/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;
    .param p1, "x1"    # Lcom/boohee/model/User;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loadUserData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->runTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showAlertDialog()V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$1;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    return-void
.end method

.method private cancleAction()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 256
    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->finish()V

    .line 257
    return-void
.end method

.method private checkCaptcha()V
    .locals 5

    .prologue
    .line 490
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "cellPhone":Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    const v2, 0x7f07038d

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 524
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "captcha":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    const v2, 0x7f07038e

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showLoading()V

    .line 502
    const-string v2, "check token : "

    iget-object v3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->token:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->token:Ljava/lang/String;

    new-instance v4, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;

    invoke-direct {v4, p0, p0, v1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$7;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v1, v0, v3, v4}, Lcom/boohee/api/PassportApi;->checkCellphoneCaptcha(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static comeOnBaby(ZLandroid/app/Activity;)V
    .locals 3
    .param p0, "isLogin"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "LAU_KEY"

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 363
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 365
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 361
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "com.umeng.login"

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 118
    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LAU_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    .line 119
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->setUpUi()V

    .line 120
    new-instance v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

    .line 121
    new-instance v0, Lcom/boohee/utils/SNSLogin;

    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/utils/SNSLogin;-><init>(Lcom/boohee/one/ui/BaseActivity;Lcom/umeng/socialize/controller/UMSocialService;Lcom/boohee/one/http/JsonCallback;)V

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    .line 122
    return-void
.end method

.method private initTimeCheck()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCheckHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method private loadUserData()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;

    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/RecordApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 350
    return-void
.end method

.method private loginAction()V
    .locals 4

    .prologue
    .line 260
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "accountStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "pwdStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 263
    iget v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 264
    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2, v0, v1}, Lcom/boohee/utils/ThirdLoginHelper;->doLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->checkCaptcha()V

    goto :goto_0
.end method

.method private moreLoginAnim(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 395
    const/high16 v5, 0x41a00000    # 20.0f

    .line 396
    .local v5, "translateY":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 397
    .local v0, "alpha":F
    const-string v6, "clicked"

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 404
    :goto_0
    iget-object v6, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    const-string v7, "translationY"

    new-array v8, v12, [F

    iget-object v9, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTranslationY()F

    move-result v9

    aput v9, v8, v10

    aput v5, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 406
    .local v2, "animTranslateY":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v12, [F

    iget-object v9, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getAlpha()F

    move-result v9

    aput v9, v8, v10

    aput v0, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 408
    .local v1, "animAlpha":Landroid/animation/ObjectAnimator;
    move v4, v0

    .line 409
    .local v4, "tempAlpha":F
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 410
    .local v3, "set":Landroid/animation/AnimatorSet;
    new-instance v6, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;

    invoke-direct {v6, p0, v4}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$5;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;F)V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    new-array v6, v12, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 431
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 433
    return-void

    .line 399
    .end local v0    # "alpha":F
    .end local v1    # "animAlpha":Landroid/animation/ObjectAnimator;
    .end local v2    # "animTranslateY":Landroid/animation/ObjectAnimator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v4    # "tempAlpha":F
    .end local v5    # "translateY":F
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 401
    const/high16 v5, -0x3e600000    # -20.0f

    .line 402
    .restart local v5    # "translateY":F
    const/4 v0, 0x0

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private refreshTimeView()V
    .locals 5

    .prologue
    const/16 v4, 0x110

    const/4 v2, 0x1

    .line 202
    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    if-gtz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 204
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    const v1, 0x7f070391

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    iget v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCheckHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private requestCaptcha()V
    .locals 5

    .prologue
    .line 439
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "cellPhone":Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    const v1, 0x7f07038d

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 479
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showLoading()V

    .line 445
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCaptcha:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    invoke-virtual {v2}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;

    iget-object v4, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$6;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/api/PassportApi;->getCellphoneCaptcha(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private runTimer()V
    .locals 4

    .prologue
    .line 482
    const/16 v0, 0x3c

    iput v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    .line 483
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 484
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    iget v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCheckHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 487
    return-void
.end method

.method private setUpUi()V
    .locals 4

    .prologue
    const v1, 0x7f070300

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    packed-switch v0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 275
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->setTitle(I)V

    .line 276
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->forgetPwdText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 278
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->dealLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    const v1, 0x7f070401

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 280
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 283
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    const v0, 0x7f07046a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->setTitle(I)V

    .line 288
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->forgetPwdText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    const v1, 0x7f0703b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 290
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->dealLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->leyuLoginText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 293
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->accountEdit:Landroid/widget/EditText;

    const-string v1, "\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->passWordEdit:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showAlertDialog()V
    .locals 4

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u6b64\u624b\u673a\u53f7\u5df2\u4e0e\u5176\u4ed6\u8d26\u53f7\u7ed1\u5b9a\uff0c\u662f\u5426\u627e\u56de\u5bc6\u7801\uff1f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 531
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 532
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$8;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$8;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$9;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$9;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 546
    return-void
.end method

.method private showLeyunDialog()V
    .locals 7

    .prologue
    .line 369
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0702f1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 371
    const v4, 0x7f07001c

    new-instance v5, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$3;

    invoke-direct {v5, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$3;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    iget-object v4, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f03024d

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 379
    const v4, 0x7f0e019b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 380
    .local v0, "accountEdit":Landroid/widget/EditText;
    const v4, 0x7f0e0705

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 381
    .local v3, "passwordEdit":Landroid/widget/EditText;
    const v4, 0x7f070300

    new-instance v5, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;

    invoke-direct {v5, p0, v0, v3}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$4;-><init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 389
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 219
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/utils/AccountUtils;->login(Landroid/app/Activity;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 225
    .local v0, "ssoHandler":Lcom/umeng/socialize/sso/UMSsoHandler;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 354
    invoke-static {p0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 355
    invoke-virtual {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->finish()V

    .line 356
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00ff,
            0x7f0e01a0,
            0x7f0e01a3,
            0x7f0e01a4,
            0x7f0e01a5,
            0x7f0e01a6,
            0x7f0e01a7,
            0x7f0e01c1,
            0x7f0e01c2
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 156
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loginAction()V

    goto :goto_0

    .line 159
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/account/ForgetPasspordActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 162
    :sswitch_2
    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/boohee/utils/AppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    invoke-static {v0}, Lcom/boohee/utils/ThirdLoginHelper;->weixinLogin(Lcom/boohee/utils/SNSLogin;)V

    goto :goto_0

    .line 170
    :sswitch_3
    const-string v0, "/api/v1/user_connections/authenticate_sns.json"

    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUploadSNSInfoListener:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;

    invoke-static {p0, v0, v1}, Lcom/boohee/utils/SNSLogin;->qqLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 173
    :sswitch_4
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    invoke-static {v0}, Lcom/boohee/utils/ThirdLoginHelper;->weiboLogin(Lcom/boohee/utils/SNSLogin;)V

    goto :goto_0

    .line 176
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->moreLoginAnim(Landroid/view/View;)V

    goto :goto_0

    .line 179
    :sswitch_6
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->showLeyunDialog()V

    .line 181
    :sswitch_7
    sget-object v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->sms:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCaptcha:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    .line 182
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->requestCaptcha()V

    goto :goto_0

    .line 185
    :sswitch_8
    sget-object v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->voice:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    iput-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mCaptcha:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    .line 186
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->requestCaptcha()V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00ff -> :sswitch_0
        0x7f0e01a0 -> :sswitch_1
        0x7f0e01a3 -> :sswitch_2
        0x7f0e01a4 -> :sswitch_3
        0x7f0e01a5 -> :sswitch_4
        0x7f0e01a6 -> :sswitch_5
        0x7f0e01a7 -> :sswitch_6
        0x7f0e01c1 -> :sswitch_7
        0x7f0e01c2 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f070300

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->setTitle(I)V

    .line 106
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->setContentView(I)V

    .line 107
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 108
    iput-object p0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->addListener()V

    .line 110
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->init()V

    .line 111
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->initTimeCheck()V

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 232
    const/4 v1, 0x0

    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f07046a

    :goto_0
    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 234
    return v2

    .line 232
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

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x102002c

    if-ne v0, v3, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->cancleAction()V

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 241
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 242
    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    .line 243
    iget v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->actionType:I

    if-ne v0, v1, :cond_3

    .line 244
    const v0, 0x7f070300

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 248
    :goto_2
    invoke-direct {p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->setUpUi()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 242
    goto :goto_1

    .line 246
    :cond_3
    const v0, 0x7f07046a

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method
