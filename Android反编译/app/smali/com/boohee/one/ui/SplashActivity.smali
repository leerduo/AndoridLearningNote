.class public Lcom/boohee/one/ui/SplashActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "SplashActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private MAX_TIME:I

.field private SPALSH_API:Ljava/lang/String;

.field private count:I

.field private handler:Landroid/os/Handler;

.field imgStartLogo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e020e
    .end annotation
.end field

.field private isAd:Z

.field ivAdContent:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e020f
    .end annotation
.end field

.field ivThirdLogo:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0211
    .end annotation
.end field

.field r:Ljava/lang/Runnable;

.field private splash:Lcom/boohee/model/Splash;

.field tvAdTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0210
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017a
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/boohee/one/ui/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/SplashActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 54
    const-string v0, "/api/v1/app_square/start_up_with_ad"

    iput-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->SPALSH_API:Ljava/lang/String;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/boohee/one/ui/SplashActivity;->MAX_TIME:I

    .line 59
    iget v0, p0, Lcom/boohee/one/ui/SplashActivity;->MAX_TIME:I

    iput v0, p0, Lcom/boohee/one/ui/SplashActivity;->count:I

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/boohee/one/ui/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/SplashActivity$1;-><init>(Lcom/boohee/one/ui/SplashActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/SplashActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/boohee/one/ui/SplashActivity;->count:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/SplashActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/boohee/one/ui/SplashActivity;->count:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/boohee/one/ui/SplashActivity;->isAd:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/boohee/one/ui/SplashActivity;->isAd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/SplashActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/SplashActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/SplashActivity;->finishToJump()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/SplashActivity;Lcom/boohee/model/Splash;)Lcom/boohee/model/Splash;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SplashActivity;
    .param p1, "x1"    # Lcom/boohee/model/Splash;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;

    return-object p1
.end method

.method private finishToJump()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    invoke-direct {p0}, Lcom/boohee/one/ui/SplashActivity;->getPwd()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/more/PasscodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.boohee.one.action.PASSWORD_INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/boohee/one/ui/SplashActivity;->finish()V

    .line 162
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->isReleaseUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-static {p0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/boohee/one/ui/SplashActivity;->finish()V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/ui/SplashActivity;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/boohee/one/ui/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .restart local v0    # "intent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 153
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-class v1, Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/boohee/one/ui/SplashActivity;->finish()V

    goto :goto_0

    .line 159
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/account/UserInitActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/boohee/one/ui/SplashActivity;->finish()V

    goto :goto_0
.end method

.method private getPwd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/boohee/database/OnePreference;

    invoke-direct {v0, p0}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "onePrefs":Lcom/boohee/database/OnePreference;
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasProfile()Z
    .locals 3

    .prologue
    .line 177
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    .line 178
    .local v0, "user":Lcom/boohee/model/User;
    invoke-virtual {v0}, Lcom/boohee/model/User;->hasProfile()Z

    move-result v1

    return v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->SPALSH_API:Ljava/lang/String;

    new-instance v1, Lcom/boohee/one/ui/SplashActivity$2;

    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/SplashActivity$2;-><init>(Lcom/boohee/one/ui/SplashActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method private openRemind()V
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    invoke-direct {v0, p0}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, "alarmDao":Lcom/boohee/modeldao/AlarmDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->getAlarms()Ljava/util/ArrayList;

    move-result-object v1

    .line 184
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/Alarm;

    invoke-static {v3, p0}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 188
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/boohee/one/http/IPCheck;->ipTest()V

    .line 83
    const v0, 0x7f03007b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SplashActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 85
    invoke-direct {p0}, Lcom/boohee/one/ui/SplashActivity;->init()V

    .line 87
    invoke-static {p0}, Lcom/boohee/more/DailySignReceiver;->start(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/boohee/more/SportRemindReceiver;->start(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onStart()V

    .line 167
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method
