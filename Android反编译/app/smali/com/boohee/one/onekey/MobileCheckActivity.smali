.class public Lcom/boohee/one/onekey/MobileCheckActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "MobileCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;,
        Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;
    }
.end annotation


# static fields
.field private static final UPDATE_TIME:I = 0x110


# instance fields
.field btCaptcha:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c1
    .end annotation
.end field

.field btNext:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01cb
    .end annotation
.end field

.field etCaptcha:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01d2
    .end annotation
.end field

.field etMobile:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01d1
    .end annotation
.end field

.field private force:I

.field private mCaptcha:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

.field private mCheckHandler:Landroid/os/Handler;

.field private mNumber:I

.field tvVoiceCaptcha:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 103
    const/16 v0, 0x3c

    iput v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->force:I

    return-void
.end method

.method static synthetic access$010(Lcom/boohee/one/onekey/MobileCheckActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/onekey/MobileCheckActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/one/onekey/MobileCheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/MobileCheckActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->refreshTimeView()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/onekey/MobileCheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/MobileCheckActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/boohee/one/onekey/MobileCheckActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/MobileCheckActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->force:I

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/onekey/MobileCheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/MobileCheckActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->checkCaptcha()V

    return-void
.end method

.method private checkCaptcha()V
    .locals 5

    .prologue
    .line 160
    iget-object v3, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->btNext:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cellPhone":Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    const v3, 0x7f07038d

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 209
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->etCaptcha:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "captcha":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    const v3, 0x7f07038e

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->showLoading()V

    .line 174
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 175
    .local v2, "params":Lcom/boohee/one/http/JsonParams;
    const-string v3, "cellphone"

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "code"

    invoke-virtual {v2, v3, v0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "/api/v1/cellphone_verification/check"

    new-instance v4, Lcom/boohee/one/onekey/MobileCheckActivity$2;

    invoke-direct {v4, p0, p0}, Lcom/boohee/one/onekey/MobileCheckActivity$2;-><init>(Lcom/boohee/one/onekey/MobileCheckActivity;Landroid/content/Context;)V

    invoke-static {v3, v2, v4, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initTimeCheck()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;

    invoke-direct {v0, p0}, Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;-><init>(Lcom/boohee/one/onekey/MobileCheckActivity;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCheckHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method private refreshTimeView()V
    .locals 5

    .prologue
    const/16 v4, 0x110

    const/4 v2, 0x1

    .line 88
    iget v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    if-gtz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->btCaptcha:Landroid/widget/Button;

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    const v1, 0x7f070391

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCheckHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->btCaptcha:Landroid/widget/Button;

    iget v1, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    iget v1, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCheckHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private requestCaptcha()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->etMobile:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cellPhone":Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const v2, 0x7f07038d

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 157
    :goto_0
    return-void

    .line 129
    :cond_0
    const/16 v2, 0x3c

    iput v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    .line 130
    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->btCaptcha:Landroid/widget/Button;

    iget v3, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->btCaptcha:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    iget v3, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->tvVoiceCaptcha:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCheckHandler:Landroid/os/Handler;

    const/16 v3, 0x110

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    invoke-virtual {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->showLoading()V

    .line 137
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 138
    .local v1, "params":Lcom/boohee/one/http/JsonParams;
    const-string v2, "cellphone"

    invoke-virtual {v1, v2, v0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "method"

    iget-object v3, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCaptcha:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    invoke-virtual {v3}, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "/api/v1/cellphone_verification"

    new-instance v3, Lcom/boohee/one/onekey/MobileCheckActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/onekey/MobileCheckActivity$1;-><init>(Lcom/boohee/one/onekey/MobileCheckActivity;Landroid/content/Context;)V

    invoke-static {v2, v1, v3, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showAlertDialog()V
    .locals 4

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u6b64\u624b\u673a\u53f7\u5df2\u4e0e\u5176\u4ed6\u8d26\u53f7\u7ed1\u5b9a\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 217
    const-string v2, "\u7ee7\u7eed"

    new-instance v3, Lcom/boohee/one/onekey/MobileCheckActivity$3;

    invoke-direct {v3, p0}, Lcom/boohee/one/onekey/MobileCheckActivity$3;-><init>(Lcom/boohee/one/onekey/MobileCheckActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/boohee/one/onekey/MobileCheckActivity$4;

    invoke-direct {v3, p0}, Lcom/boohee/one/onekey/MobileCheckActivity$4;-><init>(Lcom/boohee/one/onekey/MobileCheckActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 232
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01c1,
            0x7f0e01c2,
            0x7f0e01cb
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 64
    :sswitch_0
    sget-object v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->sms:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    iput-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCaptcha:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    .line 65
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->requestCaptcha()V

    goto :goto_0

    .line 68
    :sswitch_1
    sget-object v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->voice:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    iput-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCaptcha:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    .line 69
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->requestCaptcha()V

    goto :goto_0

    .line 72
    :sswitch_2
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->checkCaptcha()V

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x7f0e01c1 -> :sswitch_0
        0x7f0e01c2 -> :sswitch_1
        0x7f0e01cb -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->setContentView(I)V

    .line 111
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 112
    invoke-direct {p0}, Lcom/boohee/one/onekey/MobileCheckActivity;->initTimeCheck()V

    .line 113
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 237
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity;->mCheckHandler:Landroid/os/Handler;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    return-void
.end method
