.class public Lcom/boohee/one/ui/MainActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/MainActivity$Tabs;
    }
.end annotation


# static fields
.field public static final KEY_ONNEWINTENT:Ljava/lang/String; = "onnewintent"

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_COUPLE:I = 0x2

.field public static final TYPE_HOME:I = 0x3

.field public static final TYPE_SHOP:I = 0x1

.field public static ivAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

.field private static final mTabs:[Ljava/lang/String;

.field private static final mTabsId:[I


# instance fields
.field private avatarLayout:Landroid/view/View;

.field private ctx:Landroid/content/Context;

.field private mExitTime:J

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMessageBadge:Lcom/boohee/myview/BadgeView;

.field private mShopBadge:Landroid/widget/ImageView;

.field private messageCount:I

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field viewTabs:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01aa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 72
    const-class v0, Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/MainActivity;->TAG:Ljava/lang/String;

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u9996\u9875"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4f19\u4f34"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5de5\u5177"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5546\u5e97"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/ui/MainActivity;->mTabs:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/MainActivity;->mTabsId:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020572
        0x7f020574
        0x7f020576
        0x7f020575
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/boohee/one/ui/MainActivity;->mExitTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/fragment/BaseFragment;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/MainActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/MainActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mShopBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/boohee/one/ui/MainActivity;->messageCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/boohee/one/ui/MainActivity;->messageCount:I

    return p1
.end method

.method static synthetic access$512(Lcom/boohee/one/ui/MainActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/boohee/one/ui/MainActivity;->messageCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/boohee/one/ui/MainActivity;->messageCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/MainActivity;->updateMessageBager(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/MainActivity;)Lcom/boohee/myview/BadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/myview/BadgeView;)Lcom/boohee/myview/BadgeView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;
    .param p1, "x1"    # Lcom/boohee/myview/BadgeView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->refreshUnreadMsg()V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MainActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->getApnUnread()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    if-nez p0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private doLogout()V
    .locals 3

    .prologue
    .line 465
    const v0, 0x7f07030a

    invoke-static {p0, v0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f07001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f070082

    new-instance v2, Lcom/boohee/one/ui/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/MainActivity$9;-><init>(Lcom/boohee/one/ui/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 480
    return-void
.end method

.method private getApnUnread()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/MainActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/MainActivity$7;-><init>(Lcom/boohee/one/ui/MainActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ApnApi;->checkUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getShopUpdatedTime()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    new-instance v1, Lcom/boohee/one/ui/MainActivity$5;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/MainActivity$5;-><init>(Lcom/boohee/one/ui/MainActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getTabbarSettings(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 340
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->isReleaseUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    invoke-static {p0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->finish()V

    .line 182
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v5, "home_homePage"

    invoke-static {p0, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/boohee/push/PushManager;->initPush(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/boohee/push/PushManager;->bindRegId(Landroid/content/Context;)V

    .line 156
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 157
    invoke-static {p0}, Lcom/boohee/utils/MeiQiaHelper;->updateMeiQiaUserID(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/boohee/one/MyApplication;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/boohee/one/MyApplication;->setIsMainActivityOpened(Z)V

    .line 160
    invoke-static {p0, v7}, Lcom/boohee/utils/BadgeUtils;->setIconBadge(Landroid/content/Context;I)V

    .line 162
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0201df

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 163
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 166
    .local v0, "color":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v5, Lcom/boohee/one/ui/MainActivity;->mTabs:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 167
    const v5, 0x7f0301d3

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 168
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e047d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 169
    .local v2, "imageView":Landroid/widget/ImageView;
    sget-object v5, Lcom/boohee/one/ui/MainActivity;->mTabsId:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    const v5, 0x7f0e0584

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 172
    .local v3, "textView":Landroid/widget/TextView;
    sget-object v5, Lcom/boohee/one/ui/MainActivity;->mTabs:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    sget-object v5, Lcom/boohee/one/ui/MainActivity$Tabs;->SHOP:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v5}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 176
    const v5, 0x7f0e0583

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/boohee/one/ui/MainActivity;->mShopBadge:Landroid/widget/ImageView;

    .line 179
    :cond_1
    iget-object v5, p0, Lcom/boohee/one/ui/MainActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    iget-object v6, p0, Lcom/boohee/one/ui/MainActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->showAvatarInToolBar()V

    goto/16 :goto_0
.end method

.method private initFragments()V
    .locals 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    new-instance v3, Lcom/boohee/one/ui/fragment/HomeNewFragment;

    invoke-direct {v3}, Lcom/boohee/one/ui/fragment/HomeNewFragment;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    new-instance v3, Lcom/boohee/one/ui/fragment/PartnerFragment;

    invoke-direct {v3}, Lcom/boohee/one/ui/fragment/PartnerFragment;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    new-instance v3, Lcom/boohee/one/ui/fragment/ToolsFragment;

    invoke-direct {v3}, Lcom/boohee/one/ui/fragment/ToolsFragment;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    new-instance v3, Lcom/boohee/one/ui/fragment/ShopMainFragment;

    invoke-direct {v3}, Lcom/boohee/one/ui/fragment/ShopMainFragment;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    sget-object v3, Lcom/boohee/one/ui/MainActivity$Tabs;->HOME:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v3}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    .line 220
    .local v0, "homeFragment":Lcom/boohee/one/ui/fragment/BaseFragment;
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 221
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0e01a8

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 222
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 224
    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/BaseFragment;->loadFirst()V

    .line 226
    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    new-instance v3, Lcom/boohee/one/ui/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/MainActivity$4;-><init>(Lcom/boohee/one/ui/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 283
    return-void
.end method

.method private initToolbar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    const v0, 0x7f0e059a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 129
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/boohee/one/ui/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MainActivity$1;-><init>(Lcom/boohee/one/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 138
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p0}, Lcom/boohee/utils/BlackTech;->enableApiSwitch(Landroid/support/v7/widget/Toolbar;Landroid/app/Activity;)V

    .line 143
    :cond_0
    return-void
.end method

.method private refreshUnreadMsg()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/MainActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/MainActivity$6;-><init>(Lcom/boohee/one/ui/MainActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/OneApi;->getUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private showAlert()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/one/ui/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MainActivity$3;-><init>(Lcom/boohee/one/ui/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    return-void
.end method

.method private showAvatarInToolBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->avatarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 186
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030114

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/MainActivity;->avatarLayout:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->avatarLayout:Landroid/view/View;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    sput-object v0, Lcom/boohee/one/ui/MainActivity;->ivAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 188
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->avatarLayout:Landroid/view/View;

    new-instance v1, Lcom/boohee/one/ui/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MainActivity$2;-><init>(Lcom/boohee/one/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->avatarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->avatarLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 202
    return-void
.end method

.method private switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/boohee/one/ui/fragment/BaseFragment;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 287
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/ui/fragment/BaseFragment;

    .line 288
    .local v1, "item":Lcom/boohee/one/ui/fragment/BaseFragment;
    if-ne v1, p1, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    const v3, 0x7f0e01a8

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    invoke-virtual {p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->loadFirst()V

    .line 294
    :cond_1
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/BaseFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 301
    .end local v1    # "item":Lcom/boohee/one/ui/fragment/BaseFragment;
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 302
    return-void
.end method

.method private updateMessageBager(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 395
    :cond_0
    if-lez p1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    const-string v0, "99+"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/boohee/myview/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->show()V

    goto :goto_0

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;

    invoke-virtual {v0}, Lcom/boohee/myview/BadgeView;->hide()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/boohee/one/ui/MainActivity$Tabs;->MINE:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v1}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 530
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    iput-object p0, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    .line 107
    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MainActivity;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 109
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->initToolbar()V

    .line 110
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->init()V

    .line 112
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->initFragments()V

    .line 113
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->showAlert()V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x0

    sput-object v0, Lcom/boohee/one/ui/MainActivity;->ivAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 485
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 486
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/MyApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/MyApplication;->setIsMainActivityOpened(Z)V

    .line 488
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/LogoutEvent;)V
    .locals 0
    .param p1, "logoutEvent"    # Lcom/boohee/one/event/LogoutEvent;

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->finish()V

    .line 535
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 492
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 493
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {}, Lcom/boohee/widgets/CheckAccountPopwindow;->dismiss()V

    .line 506
    :goto_0
    return v0

    .line 498
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/boohee/one/ui/MainActivity;->mExitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 499
    const v1, 0x7f070224

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/boohee/one/ui/MainActivity;->mExitTime:J

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->finish()V

    goto :goto_0

    .line 506
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 511
    const-string v1, "onnewintent"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 512
    .local v0, "key":I
    packed-switch v0, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->SHOP:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->COUPLE:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 520
    :pswitch_2
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->HOME:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 457
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 428
    :sswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-string v2, "other_clickMsgPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 429
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/status/MsgCategoryActivity;

    invoke-direct {v1, v2, v3}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 432
    :sswitch_1
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    const-class v2, Lcom/boohee/one/ui/PreferenceActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 435
    :sswitch_2
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->doLogout()V

    goto :goto_0

    .line 438
    :sswitch_3
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickCartPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 439
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/uchoice/CartActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 442
    :sswitch_4
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickOrderPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 446
    :sswitch_5
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickGiftCoupons"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/one/ui/CouponActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 450
    :sswitch_6
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-string v2, "mine_clickAddressPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 451
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/uchoice/AddressListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 454
    :sswitch_7
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;

    const-string v2, "\u5173\u4e8e\u5546\u5e97"

    const-string v3, "http://shop.boohee.com/store/pages/about_shop"

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x7f0e07c3 -> :sswitch_0
        0x7f0e07d2 -> :sswitch_3
        0x7f0e07d3 -> :sswitch_4
        0x7f0e07d4 -> :sswitch_5
        0x7f0e07d5 -> :sswitch_6
        0x7f0e07d6 -> :sswitch_7
        0x7f0e07d7 -> :sswitch_1
        0x7f0e07d8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 405
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 406
    invoke-virtual {p0}, Lcom/boohee/one/ui/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 407
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MainActivity$8;-><init>(Lcom/boohee/one/ui/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onResume()V

    .line 308
    invoke-static {v0}, Lcom/boohee/one/sync/SyncHelper;->syncWeight(Z)V

    .line 309
    iput v0, p0, Lcom/boohee/one/ui/MainActivity;->messageCount:I

    .line 310
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->refreshUnreadMsg()V

    .line 311
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->getApnUnread()V

    .line 312
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onStart()V

    .line 317
    invoke-direct {p0}, Lcom/boohee/one/ui/MainActivity;->getShopUpdatedTime()V

    .line 318
    return-void
.end method

.method public setToolBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 125
    return-void
.end method
