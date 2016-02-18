.class public Lcom/boohee/account/UserProfileActivity;
.super Lcom/boohee/main/GestureActivity;
.source "UserProfileActivity.java"


# static fields
.field public static final CHANGE_PROFILE:I = 0x0

.field private static final SELECT_PHOTOS:I = 0x2

.field public static SPACE_DOMAIN:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field public static user:Lcom/boohee/model/User;


# instance fields
.field private avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private birthday:Landroid/widget/TextView;

.field private cellphone:Landroid/widget/TextView;

.field private cycle:I

.field private description:Landroid/widget/TextView;

.field private duration:I

.field private gender:Landroid/widget/TextView;

.field private height:Landroid/widget/TextView;

.field private ll_mc:Landroid/widget/LinearLayout;

.field private ll_target:Landroid/widget/LinearLayout;

.field private mcCircle:Landroid/widget/TextView;

.field private mcDays:Landroid/widget/TextView;

.field private menu:Landroid/widget/PopupWindow;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private targetDate:Landroid/widget/TextView;

.field private targetWeight:Landroid/widget/TextView;

.field private userName:Landroid/widget/TextView;

.field private userPreference:Lcom/boohee/database/UserPreference;

.field private weight:Landroid/widget/TextView;

.field private weight_mode_switch:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/account/UserProfileActivity;->TAG:Ljava/lang/String;

    .line 61
    const-string v0, "http://one.boohee.cn/"

    sput-object v0, Lcom/boohee/account/UserProfileActivity;->SPACE_DOMAIN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 71
    iput v0, p0, Lcom/boohee/account/UserProfileActivity;->duration:I

    .line 72
    iput v0, p0, Lcom/boohee/account/UserProfileActivity;->cycle:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/UserProfileActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/account/UserProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/boohee/account/UserProfileActivity;->cycle:I

    return v0
.end method

.method static synthetic access$1002(Lcom/boohee/account/UserProfileActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/boohee/account/UserProfileActivity;->cycle:I

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->mcDays:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->mcCircle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/account/UserProfileActivity;)Lcom/boohee/database/UserPreference;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->userPreference:Lcom/boohee/database/UserPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/account/UserProfileActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/account/UserProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->initUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/account/UserProfileActivity;Lboohee/lib/uploader/model/Picture;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;
    .param p1, "x1"    # Lboohee/lib/uploader/model/Picture;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/boohee/account/UserProfileActivity;->changeAvatar(Lboohee/lib/uploader/model/Picture;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/account/UserProfileActivity;)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/account/UserProfileActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/account/UserProfileActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/account/UserProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/boohee/account/UserProfileActivity;->duration:I

    return v0
.end method

.method static synthetic access$902(Lcom/boohee/account/UserProfileActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserProfileActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/boohee/account/UserProfileActivity;->duration:I

    return p1
.end method

.method private changeAvatar(Lboohee/lib/uploader/model/Picture;Landroid/net/Uri;)V
    .locals 5
    .param p1, "photo"    # Lboohee/lib/uploader/model/Picture;
    .param p2, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "avatar_url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/boohee/account/UserProfileActivity;->SPACE_DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/account/UserProfileActivity$5;

    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4, p2}, Lcom/boohee/account/UserProfileActivity$5;-><init>(Lcom/boohee/account/UserProfileActivity;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/OneApi;->updateUsersChangeProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 375
    return-void
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f0e02bf

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 96
    const v0, 0x7f0e0667

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->userName:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0e066a

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->description:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0e066c

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->cellphone:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0e066e

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->gender:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0e0670

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->birthday:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0e0672

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->height:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0e0674

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->weight:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0e067c

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->targetWeight:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0e067e

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->targetDate:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0e0680

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->weight_mode_switch:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0e0677

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->mcDays:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0e0679

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->mcCircle:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0e0675

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ll_mc:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f0e067a

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ll_target:Landroid/widget/LinearLayout;

    .line 110
    return-void
.end method

.method private getUserProfile()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/boohee/account/UserProfileActivity;->showLoading()V

    .line 129
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/account/UserProfileActivity$3;

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/account/UserProfileActivity$3;-><init>(Lcom/boohee/account/UserProfileActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 149
    return-void
.end method

.method private initMc()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/account/UserProfileActivity$6;

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/account/UserProfileActivity$6;-><init>(Lcom/boohee/account/UserProfileActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getMcPeriodsLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 401
    return-void
.end method

.method private initPopupBtnListener(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    const v0, 0x7f0e0681

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/boohee/account/UserProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/account/UserProfileActivity$1;-><init>(Lcom/boohee/account/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0e04bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/boohee/account/UserProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/account/UserProfileActivity$2;-><init>(Lcom/boohee/account/UserProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private initUI()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 152
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "--> user is null"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/User;->token:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/boohee/modeldao/UserDao;

    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 159
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->avatar_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v2, v2, Lcom/boohee/model/User;->avatar_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?imageView2/1/w/70/h/70"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->userName:Landroid/widget/TextView;

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->description:Landroid/widget/TextView;

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 168
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-boolean v0, v0, Lcom/boohee/model/User;->cellphone_state:Z

    if-eqz v0, :cond_8

    .line 169
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->cellphone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v2, v2, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u5df2\u9a8c\u8bc1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->cellphone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/account/UserProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    :goto_2
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->gender:Landroid/widget/TextView;

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->sexName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_2
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->birthday:Landroid/widget/TextView;

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->birthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_3
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget v0, v0, Lcom/boohee/model/User;->height:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->height:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v2}, Lcom/boohee/model/User;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_4
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget v0, v0, Lcom/boohee/model/User;->begin_weight:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->weight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v2}, Lcom/boohee/model/User;->beginWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_5
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget v0, v0, Lcom/boohee/model/User;->target_weight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 188
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->weight_mode_switch:Landroid/widget/TextView;

    const v1, 0x7f0702dc

    invoke-virtual {p0, v1}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ll_target:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    :cond_6
    :goto_3
    const-string v0, "2"

    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity;->userPreference:Lcom/boohee/database/UserPreference;

    invoke-virtual {v1}, Lcom/boohee/database/UserPreference;->getSextype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ll_mc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->initMc()V

    goto/16 :goto_0

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 172
    :cond_8
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->cellphone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v2, v2, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u672a\u9a8c\u8bc1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->cellphone:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 176
    :cond_9
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->cellphone:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u586b\u5199"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 191
    :cond_a
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->weight_mode_switch:Landroid/widget/TextView;

    const v1, 0x7f07030d

    invoke-virtual {p0, v1}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ll_target:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget v0, v0, Lcom/boohee/model/User;->target_weight:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->targetWeight:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v2}, Lcom/boohee/model/User;->targetWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_b
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->targetDate:Landroid/widget/TextView;

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v1}, Lcom/boohee/model/User;->targetDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ll_mc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private startChangeProfileActiivty2(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/account/ChangeProfileActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v1, "user"

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 290
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "default_mc"

    iget v2, p0, Lcom/boohee/account/UserProfileActivity;->duration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/account/UserProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    return-void
.end method

.method private uploadAvatar(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v0, "a"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/account/UserProfileActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/boohee/account/UserProfileActivity$4;-><init>(Lcom/boohee/account/UserProfileActivity;Landroid/net/Uri;)V

    invoke-static {v0, v1, v2}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 301
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 329
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 303
    :pswitch_1
    if-ne p2, v5, :cond_3

    if-eqz p3, :cond_3

    .line 304
    const-string v3, "user"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/User;

    .line 305
    .local v1, "tempUser":Lcom/boohee/model/User;
    if-eqz v1, :cond_2

    .line 306
    sput-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    .line 307
    new-instance v3, Lcom/boohee/modeldao/UserDao;

    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v3, v4}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 309
    :cond_2
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->initUI()V

    .line 310
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->initMc()V

    .line 312
    .end local v1    # "tempUser":Lcom/boohee/model/User;
    :cond_3
    if-ne p2, v5, :cond_4

    .line 314
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->getUserProfile()V

    .line 317
    :cond_4
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/event/UserIntEvent;

    invoke-direct {v4}, Lcom/boohee/one/event/UserIntEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :pswitch_2
    if-ne p2, v5, :cond_1

    .line 321
    const-string v3, "select_result"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    .local v0, "mSelectPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 323
    new-instance v4, Ljava/io/File;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 324
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/boohee/account/UserProfileActivity;->uploadAvatar(Landroid/net/Uri;)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 207
    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f0702fd

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    const-class v5, Lcom/boohee/account/ChangeProfileActivity1;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    if-nez v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030216

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 217
    .local v2, "view":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v2, v5, v6, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    .line 219
    iget-object v4, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 220
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    const v4, 0x7f0a00d7

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 221
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/boohee/account/UserProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-direct {p0, v2}, Lcom/boohee/account/UserProfileActivity;->initPopupBtnListener(Landroid/view/View;)V

    .line 224
    .end local v2    # "view":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;

    const v4, 0x7f0e0208

    invoke-virtual {p0, v4}, Lcom/boohee/account/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v3, "code"

    const-string v4, "user_name"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v3, "codeText"

    const v4, 0x7f0703c5

    invoke-virtual {p0, v4}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v3, v3, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 230
    const-string v3, "default_content"

    sget-object v4, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v4, v4, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_3
    invoke-virtual {p0, v1, v7}, Lcom/boohee/account/UserProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 234
    :pswitch_3
    const-string v3, "code"

    const-string v4, "description"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v3, "codeText"

    const v4, 0x7f070415

    invoke-virtual {p0, v4}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v3, v3, Lcom/boohee/model/User;->description:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 237
    const-string v3, "default_content"

    sget-object v4, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v4, v4, Lcom/boohee/model/User;->description:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :cond_4
    invoke-virtual {p0, v1, v7}, Lcom/boohee/account/UserProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 241
    :pswitch_4
    sget-object v4, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-eqz v4, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v0, "checkIntent":Landroid/content/Intent;
    const-string v4, "KEY"

    sget-object v5, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-boolean v5, v5, Lcom/boohee/model/User;->cellphone_state:Z

    if-eqz v5, :cond_6

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v3, v3, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 248
    const-string v4, "Phone"

    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-boolean v3, v3, Lcom/boohee/model/User;->cellphone_state:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v5, v5, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "(\u5df2\u9a8c\u8bc1)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_5
    invoke-virtual {p0, v0, v7}, Lcom/boohee/account/UserProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 244
    :cond_6
    const/4 v3, 0x2

    goto :goto_1

    .line 248
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v5, v5, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "(\u672a\u9a8c\u8bc1)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 254
    .end local v0    # "checkIntent":Landroid/content/Intent;
    :pswitch_5
    const/4 v3, 0x3

    const-string v4, "sex_type"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :pswitch_6
    const/4 v3, 0x4

    const-string v4, "birthday"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :pswitch_7
    const/4 v3, 0x5

    const-string v4, "height"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :pswitch_8
    const/4 v3, 0x6

    const-string v4, "begin_weight"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :pswitch_9
    const/4 v3, 0x7

    const-string v4, "target_weight"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :pswitch_a
    const/16 v3, 0x8

    const-string v4, "target_date"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :pswitch_b
    const/16 v3, 0x9

    const-string v4, "target_weight"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_c
    iget v3, p0, Lcom/boohee/account/UserProfileActivity;->duration:I

    if-nez v3, :cond_8

    .line 276
    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f070320

    invoke-virtual {p0, v4}, Lcom/boohee/account/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :cond_8
    const/16 v3, 0xa

    const-string v4, "cycle"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :pswitch_d
    const/16 v3, 0xb

    const-string v4, "duration"

    invoke-direct {p0, v3, v4}, Lcom/boohee/account/UserProfileActivity;->startChangeProfileActiivty2(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0665
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f070416

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->setTitle(I)V

    .line 86
    const v0, 0x7f030215

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserProfileActivity;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->noImage()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 88
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/UserProfileActivity;->userPreference:Lcom/boohee/database/UserPreference;

    .line 89
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->findView()V

    .line 90
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;

    const-string v1, "mine_clickAccount"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/boohee/account/UserProfileActivity;->getUserProfile()V

    .line 92
    return-void
.end method
