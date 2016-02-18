.class public Lcom/boohee/one/ui/CheckPhoneActivity;
.super Lcom/boohee/main/GestureActivity;
.source "CheckPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;
    }
.end annotation


# static fields
.field public static final ALREADY_CHECK:I = 0x1

.field public static final CHECK_PHONE:I = 0x2

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final KEY_PHONE:Ljava/lang/String; = "Phone"

.field public static final REQ_CODE_REGISTER:I = 0xb

.field private static final RIGHT_ACTION:I


# instance fields
.field private accountEdit:Landroid/widget/EditText;

.field private accountLayout:Landroid/widget/LinearLayout;

.field private alreadyCheckLayout:Landroid/widget/LinearLayout;

.field private changePhoneBtn:Landroid/widget/Button;

.field private checkedAccountText:Landroid/widget/TextView;

.field private force:I

.field private getAuthCodeBtn:Landroid/widget/Button;

.field private mMenu:Landroid/view/Menu;

.field private maskView:Landroid/view/View;

.field private passWordEdit:Landroid/widget/EditText;

.field private passWordLayout:Landroid/widget/LinearLayout;

.field private skipTipText:Landroid/widget/TextView;

.field private timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

.field private tipText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->force:I

    .line 301
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/CheckPhoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->getCode()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->maskView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->getAuthCodeBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/boohee/one/ui/CheckPhoneActivity;Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;)Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/boohee/one/ui/CheckPhoneActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->force:I

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->passWordLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->tipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->skipTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->alreadyCheckLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/CheckPhoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->stopTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/CheckPhoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/CheckPhoneActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/CheckPhoneActivity;->delay(I)V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->getAuthCodeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/boohee/one/ui/CheckPhoneActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$1;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->changePhoneBtn:Landroid/widget/Button;

    new-instance v1, Lcom/boohee/one/ui/CheckPhoneActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$2;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->skipTipText:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/CheckPhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$3;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private createJSONParams(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "cellPhone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .local v1, "param":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "cellphone"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "force"

    iget v3, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->force:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v2, "code"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v2, "token"

    iget-object v3, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v2, "user_key"

    iget-object v3, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private createTimeThread(I)Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 289
    new-instance v0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    invoke-direct {v0, p0, p1}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;I)V

    return-object v0
.end method

.method private delay(I)V
    .locals 4
    .param p1, "millseconds"    # I

    .prologue
    .line 294
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountEdit:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e9

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->passWordEdit:Landroid/widget/EditText;

    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ea

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->getAuthCodeBtn:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e5

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->changePhoneBtn:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00eb

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->maskView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->skipTipText:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ec

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->tipText:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e4

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->checkedAccountText:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e6

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountLayout:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e8

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->passWordLayout:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00e3

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->alreadyCheckLayout:Landroid/widget/LinearLayout;

    .line 71
    return-void
.end method

.method private getCode()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "cellPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 209
    :cond_0
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53f7\u7801~~"

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    return-void

    .line 213
    :cond_1
    const/16 v1, 0xb4

    .line 214
    .local v1, "seconds":I
    invoke-direct {p0, v1}, Lcom/boohee/one/ui/CheckPhoneActivity;->startTimer(I)V

    .line 215
    iget v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->force:I

    new-instance v3, Lcom/boohee/one/ui/CheckPhoneActivity$5;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$5;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;Landroid/content/Context;)V

    invoke-static {v0, v2, p0, v3}, Lcom/boohee/api/PassportApi;->sendCellphoneVerification(Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "phone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->checkedAccountText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method private leftAction()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->finish()V

    .line 170
    return-void
.end method

.method private rightAction()V
    .locals 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "cellPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53f7\u7801~~"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->passWordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801~~"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->showLoading()V

    .line 187
    iget v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->force:I

    new-instance v3, Lcom/boohee/one/ui/CheckPhoneActivity$4;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$4;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, p0, v3}, Lcom/boohee/api/PassportApi;->verifyCellphone(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private setUpView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->passWordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->tipText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->skipTipText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 127
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 128
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->alreadyCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->accountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->passWordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->tipText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->skipTipText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 137
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 138
    iget-object v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->alreadyCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showAlertDialog()V
    .locals 4

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u6b64\u624b\u673a\u53f7\u5df2\u4e0e\u5176\u4ed6\u8d26\u53f7\u7ed1\u5b9a\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 355
    const-string v2, "\u7ee7\u7eed"

    new-instance v3, Lcom/boohee/one/ui/CheckPhoneActivity$6;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$6;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/boohee/one/ui/CheckPhoneActivity$7;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$7;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 370
    return-void
.end method

.method private startTimer(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    if-nez v0, :cond_1

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/CheckPhoneActivity;->createTimeThread(I)Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    .line 266
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->start()V

    .line 269
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->maskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->getAuthCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    return-void

    .line 266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    if-eqz v0, :cond_1

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->stopTimer()V

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->timeThread:Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;

    .line 280
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->getAuthCodeBtn:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->getAuthCodeBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->maskView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-void

    .line 280
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "\u624b\u673a\u53f7\u9a8c\u8bc1"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->findView()V

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->addListener()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->init()V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 147
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;

    .line 148
    const-string v0, "\u786e\u8ba4"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->setUpView()V

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 256
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->stopTimer()V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->leftAction()V

    .line 163
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity;->rightAction()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
