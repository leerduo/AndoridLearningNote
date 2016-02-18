.class public Lcom/boohee/one/ui/AccountSettingActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AccountSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/AccountSettingActivity$6;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/UserConnection;",
            ">;"
        }
    .end annotation
.end field

.field mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mSNSLogin:Lcom/boohee/utils/SNSLogin;

.field qqConn:Lcom/boohee/model/status/UserConnection;

.field qqScreenName:Landroid/widget/TextView;

.field settingPwdText:Landroid/widget/TextView;

.field sinaConn:Lcom/boohee/model/status/UserConnection;

.field sinaScreenName:Landroid/widget/TextView;

.field tvPushSetting:Landroid/widget/TextView;

.field tvSecretStatus:Landroid/widget/TextView;

.field weixinConn:Lcom/boohee/model/status/UserConnection;

.field weixinScreenName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/AccountSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/AccountSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/AccountSettingActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->getUserConnections()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/AccountSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/AccountSettingActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->initSocialAccount()V

    return-void
.end method

.method private clickAuthStatusItem(Lcom/boohee/model/status/UserConnection;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 6
    .param p1, "conn"    # Lcom/boohee/model/status/UserConnection;
    .param p2, "args"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "alert":I
    const/4 v1, 0x0

    .line 186
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/boohee/one/ui/AccountSettingActivity$6;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 204
    :goto_0
    if-eqz p1, :cond_0

    .line 205
    move-object v2, v1

    .line 206
    .local v2, "tmpKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/AccountSettingActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f0705d3

    invoke-static {v3, v4, v0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;II)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v3

    const v4, 0x7f07001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v3

    const v4, 0x7f0701b9

    new-instance v5, Lcom/boohee/one/ui/AccountSettingActivity$3;

    invoke-direct {v5, p0, v2, p1}, Lcom/boohee/one/ui/AccountSettingActivity$3;-><init>(Lcom/boohee/one/ui/AccountSettingActivity;Ljava/lang/String;Lcom/boohee/model/status/UserConnection;)V

    invoke-virtual {v3, v4, v5}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 229
    .end local v2    # "tmpKey":Ljava/lang/String;
    :goto_1
    return-void

    .line 188
    :pswitch_0
    const-string v1, "sina_weibo"

    .line 189
    const v0, 0x7f0705d6

    .line 190
    goto :goto_0

    .line 192
    :pswitch_1
    const-string v1, "qq_zone"

    .line 193
    const v0, 0x7f0705d5

    .line 194
    goto :goto_0

    .line 196
    :pswitch_2
    const-string v1, "weixin"

    .line 197
    const v0, 0x7f0705d7

    .line 198
    goto :goto_0

    .line 215
    :cond_0
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v3, :cond_1

    .line 216
    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/boohee/one/ui/AccountSettingActivity$4;

    invoke-direct {v5, p0}, Lcom/boohee/one/ui/AccountSettingActivity$4;-><init>(Lcom/boohee/one/ui/AccountSettingActivity;)V

    invoke-static {v3, v4, p0, v5}, Lcom/boohee/utils/ThirdLoginHelper;->doQQAuth(ZZLcom/boohee/one/ui/BaseActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/AccountSettingActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    const-string v4, "/api/v1/user_connections.json"

    invoke-virtual {v3, p2, v4}, Lcom/boohee/utils/SNSLogin;->doRequest(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUserConnections()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->showLoading()V

    .line 101
    new-instance v0, Lcom/boohee/one/ui/AccountSettingActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/AccountSettingActivity$2;-><init>(Lcom/boohee/one/ui/AccountSettingActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/PassportApi;->getUserConnections(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 115
    return-void
.end method

.method private initAccountSetting()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00b4

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->textView(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->settingPwdText:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->textView(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaScreenName:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->textView(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinScreenName:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ba

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->textView(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->qqScreenName:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00bc

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->textView(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvSecretStatus:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00be

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->textView(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvPushSetting:Landroid/widget/TextView;

    .line 66
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->getUserConnections()V

    .line 68
    new-instance v0, Lcom/boohee/utils/SNSLogin;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    new-instance v2, Lcom/boohee/one/ui/AccountSettingActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/boohee/one/ui/AccountSettingActivity$1;-><init>(Lcom/boohee/one/ui/AccountSettingActivity;Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/utils/SNSLogin;-><init>(Lcom/boohee/one/ui/BaseActivity;Lcom/umeng/socialize/controller/UMSocialService;Lcom/boohee/one/http/JsonCallback;)V

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->mSNSLogin:Lcom/boohee/utils/SNSLogin;

    .line 80
    return-void
.end method

.method private initPrivacyStatus()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/boohee/database/OnePreference;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, v1}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "mOnePrefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvSecretStatus:Landroid/widget/TextView;

    const v2, 0x7f0704a4

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvSecretStatus:Landroid/widget/TextView;

    const v2, 0x7f0704a3

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initPushStatus()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/boohee/database/OnePreference;->isAcceptPush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvPushSetting:Landroid/widget/TextView;

    const v1, 0x7f0704a4

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvPushSetting:Landroid/widget/TextView;

    const v1, 0x7f0704a3

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initSettingPwdText()V
    .locals 4

    .prologue
    .line 145
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    const-string v2, "user_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/boohee/database/UserPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, "user_type":I
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->settingPwdText:Landroid/widget/TextView;

    const v2, 0x7f0704c2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->settingPwdText:Landroid/widget/TextView;

    const v2, 0x7f070145

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initSocialAccount()V
    .locals 5

    .prologue
    const v4, 0x7f0d00d6

    .line 118
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/UserConnection;

    .line 119
    .local v0, "connection":Lcom/boohee/model/status/UserConnection;
    const-string v2, "sina_weibo"

    iget-object v3, v0, Lcom/boohee/model/status/UserConnection;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaConn:Lcom/boohee/model/status/UserConnection;

    .line 121
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaScreenName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/status/UserConnection;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaScreenName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 123
    :cond_1
    const-string v2, "weixin"

    iget-object v3, v0, Lcom/boohee/model/status/UserConnection;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinConn:Lcom/boohee/model/status/UserConnection;

    .line 125
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinScreenName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/status/UserConnection;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinScreenName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v2, "qq_zone"

    iget-object v3, v0, Lcom/boohee/model/status/UserConnection;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->qqConn:Lcom/boohee/model/status/UserConnection;

    .line 129
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->qqScreenName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/status/UserConnection;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->qqScreenName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 134
    .end local v0    # "connection":Lcom/boohee/model/status/UserConnection;
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/one/ui/AccountSettingActivity;->connections:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/boohee/utils/AccountUtils;->saveQQOpenIDAndAccessToken(Landroid/content/Context;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method private settingPrivacy()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvSecretStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0704a4

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/PasscodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.boohee.one.action.PASSWORD_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AccountSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    :goto_0
    return-void

    .line 281
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/PasscodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.boohee.one.action.PASSWORD_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AccountSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private settingPush()V
    .locals 3

    .prologue
    const v2, 0x7f0704a4

    .line 288
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvPushSetting:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setPrefAcceptPush(Z)V

    .line 290
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/push/PushManager;->pausePush()V

    .line 291
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvPushSetting:Landroid/widget/TextView;

    const v1, 0x7f0704a3

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setPrefAcceptPush(Z)V

    .line 294
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/push/PushManager;->resumePush()V

    .line 295
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->tvPushSetting:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method deleteConn(Ljava/lang/String;Lcom/boohee/model/status/UserConnection;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "conn"    # Lcom/boohee/model/status/UserConnection;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->showLoading()V

    .line 233
    iget v0, p2, Lcom/boohee/model/status/UserConnection;->id:I

    new-instance v1, Lcom/boohee/one/ui/AccountSettingActivity$5;

    invoke-direct {v1, p0, p0, p1}, Lcom/boohee/one/ui/AccountSettingActivity$5;-><init>(Lcom/boohee/one/ui/AccountSettingActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/PassportApi;->deleteUserConnection(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 261
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 270
    .local v0, "ssoHandler":Lcom/umeng/socialize/sso/UMSsoHandler;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/account/ChangeProfileActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "codeText"

    const v2, 0x7f0703c5

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "code"

    const-string v2, "user_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AccountSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/account/ChangePasswordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/AccountSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaConn:Lcom/boohee/model/status/UserConnection;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v1, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->clickAuthStatusItem(Lcom/boohee/model/status/UserConnection;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinConn:Lcom/boohee/model/status/UserConnection;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v1, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->clickAuthStatusItem(Lcom/boohee/model/status/UserConnection;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 172
    :pswitch_5
    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity;->qqConn:Lcom/boohee/model/status/UserConnection;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v1, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->clickAuthStatusItem(Lcom/boohee/model/status/UserConnection;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 175
    :pswitch_6
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->settingPrivacy()V

    goto :goto_0

    .line 178
    :pswitch_7
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->settingPush()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AccountSettingActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0700ab

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AccountSettingActivity;->setTitle(I)V

    .line 55
    const-string v0, "com.umeng.login"

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 56
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->initAccountSetting()V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 139
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->initSettingPwdText()V

    .line 140
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->initPrivacyStatus()V

    .line 141
    invoke-direct {p0}, Lcom/boohee/one/ui/AccountSettingActivity;->initPushStatus()V

    .line 142
    return-void
.end method
