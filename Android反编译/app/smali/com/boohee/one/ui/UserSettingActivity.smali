.class public Lcom/boohee/one/ui/UserSettingActivity;
.super Lcom/boohee/main/GestureActivity;
.source "UserSettingActivity.java"


# instance fields
.field aboutLine:Lcom/boohee/myview/CommonLineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0262
    .end annotation
.end field

.field cacheLine:Lcom/boohee/myview/CommonLineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0218
    .end annotation
.end field

.field ivCouponPoint:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e078e
    .end annotation
.end field

.field ivIcon:Lcom/joooonho/SelectableRoundedImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0781
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0782
    .end annotation
.end field

.field private user:Lcom/boohee/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/UserSettingActivity;)Lcom/boohee/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserSettingActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/UserSettingActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/UserSettingActivity;
    .param p1, "x1"    # Lcom/boohee/model/User;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/UserSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/UserSettingActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->initView()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/UserSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private doLogout()V
    .locals 3

    .prologue
    .line 247
    const v0, 0x7f07030a

    invoke-static {p0, v0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f07001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f070082

    new-instance v2, Lcom/boohee/one/ui/UserSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/UserSettingActivity$5;-><init>(Lcom/boohee/one/ui/UserSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 261
    return-void
.end method

.method private getCacheSize()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/boohee/one/ui/UserSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/UserSettingActivity$3;-><init>(Lcom/boohee/one/ui/UserSettingActivity;)V

    invoke-virtual {v0}, Lcom/boohee/one/ui/UserSettingActivity$3;->start()V

    .line 230
    return-void
.end method

.method private getCouponsInfo()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/boohee/one/ui/UserSettingActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/UserSettingActivity$2;-><init>(Lcom/boohee/one/ui/UserSettingActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getCoupons(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 203
    return-void
.end method

.method private getUserProfile()V
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserSettingActivity;->showLoading()V

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/UserSettingActivity$1;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/UserSettingActivity$1;-><init>(Lcom/boohee/one/ui/UserSettingActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 185
    return-void
.end method

.method private getVersionInfo()V
    .locals 5

    .prologue
    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v3}, Lcom/boohee/one/ui/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 210
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->aboutLine:Lcom/boohee/myview/CommonLineView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/myview/CommonLineView;->setRightText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->avatar_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->ivIcon:Lcom/joooonho/SelectableRoundedImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private scoreUs()V
    .locals 5

    .prologue
    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v4}, Lcom/boohee/one/ui/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 279
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .local v1, "goToMarket":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    iget-object v3, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/boohee/api/OneApi;->getUserBehaviorAppraise(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0703d2

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0
.end method

.method private share()V
    .locals 5

    .prologue
    .line 267
    const-string v3, "\u6700\u6709\u6548\u7684\u51cf\u80a5APP"

    .line 268
    .local v3, "title":Ljava/lang/String;
    const-string v1, "\u63a8\u8350\u201c\u8584\u8377\u201dapp\u7ed9\u5927\u5bb6\u54e6\uff0c\u7b80\u76f4\u4e13\u4e1a\u5230\u4ee4\u4eba\u611f\u52a8\uff01\u5b83\u4f1a\u6839\u636e\u4f60\u7684\u8eab\u9ad8\u4f53\u91cd\u5efa\u8bae\u4f60\u4e00\u5929\u8be5\u6444\u53d6\u7684\u5361\u8def\u91cc\u662f\u591a\u5c11\uff0c\u8fd8\u6709\u5f88\u5168\u7684\u98df\u7269\u5361\u8def\u91cc\u6570\u636e\uff0c\u77e5\u9053\u98df\u7269\u70ed\u91cf\u5c31\u4e0d\u62c5\u5fc3\u5403\u9519\u4e1c\u897f\u957f\u8089\u5566\uff01\u4f20\u9001\u95e8>>>"

    .line 269
    .local v1, "desc":Ljava/lang/String;
    const-string v0, "http://a.app.qq.com/o/simple.jsp?pkgname=com.boohee.one&g_f=991653"

    .line 270
    .local v0, "contentUrl":Ljava/lang/String;
    const-string v2, "http://up.boohee.cn/house/u/one/ad/boohee_weibo.png"

    .line 271
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v4, v3, v1, v0, v2}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method public cleanPictureCache()V
    .locals 3

    .prologue
    .line 234
    const v0, 0x7f070160

    invoke-static {p0, v0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f07001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f070082

    new-instance v2, Lcom/boohee/one/ui/UserSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/UserSettingActivity$4;-><init>(Lcom/boohee/one/ui/UserSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 244
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0780,
            0x7f0e0784,
            0x7f0e0788,
            0x7f0e078b,
            0x7f0e025c,
            0x7f0e025d,
            0x7f0e0218,
            0x7f0e0260,
            0x7f0e0261,
            0x7f0e0262,
            0x7f0e0263,
            0x7f0e025e,
            0x7f0e025f
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 103
    :sswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->comeOn(Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :sswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "mine_clickOrderPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :sswitch_2
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "mine_clickAddressPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/uchoice/AddressListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :sswitch_3
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "mine_clickGiftCoupons"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/CouponActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :sswitch_4
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "mine_clickHealthReport"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/record/EvaluationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/account/UserInitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :sswitch_6
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickClearCache"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserSettingActivity;->cleanPictureCache()V

    goto/16 :goto_0

    .line 133
    :sswitch_7
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickRank"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->scoreUs()V

    goto/16 :goto_0

    .line 137
    :sswitch_8
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->share()V

    goto/16 :goto_0

    .line 140
    :sswitch_9
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/one/ui/AboutBooheeActivity;->comeOnBaby(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 143
    :sswitch_a
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->doLogout()V

    goto/16 :goto_0

    .line 146
    :sswitch_b
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickFavorite"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/one/ui/MyFavoriteActivity;->comeOnBaby(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 150
    :sswitch_c
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickRedeem"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    const-string v1, "/api/v1/checkin/diamonds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/http/client/StatusClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f07047f

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x7f0e0218 -> :sswitch_6
        0x7f0e025c -> :sswitch_4
        0x7f0e025d -> :sswitch_5
        0x7f0e025e -> :sswitch_b
        0x7f0e025f -> :sswitch_c
        0x7f0e0260 -> :sswitch_7
        0x7f0e0261 -> :sswitch_8
        0x7f0e0262 -> :sswitch_9
        0x7f0e0263 -> :sswitch_a
        0x7f0e0780 -> :sswitch_0
        0x7f0e0784 -> :sswitch_1
        0x7f0e0788 -> :sswitch_2
        0x7f0e078b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserSettingActivity;->setContentView(I)V

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p0}, Lcom/boohee/utils/BlackTech;->switchIPDebug(Landroid/support/v7/widget/Toolbar;Landroid/app/Activity;)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 84
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->getUserProfile()V

    .line 85
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->getCouponsInfo()V

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->getVersionInfo()V

    .line 87
    invoke-direct {p0}, Lcom/boohee/one/ui/UserSettingActivity;->getCacheSize()V

    .line 88
    return-void
.end method
