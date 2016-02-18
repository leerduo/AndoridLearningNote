.class public Lcom/boohee/account/UserInitActivity;
.super Lcom/boohee/main/GestureActivity;
.source "UserInitActivity.java"


# static fields
.field public static ACTION_NEXT:I = 0x0

.field public static ACTION_SAVE:I = 0x0

.field private static final KEY_NEXT:I = 0x1

.field private static final KEY_PREVIOUS:I = 0x0

.field private static final KEY_SAVE:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field private birthdayView:Lcom/boohee/user/view/UserBirthdayView;

.field private count:I

.field private currentIndex:I

.field private genderView:Lcom/boohee/user/view/UserGenderView;

.field private heightView:Lcom/boohee/user/view/UserHeightView;

.field private isSendRequest:Z

.field private keepWeight:Ljava/lang/Boolean;

.field public mHandler:Landroid/os/Handler;

.field private mUser:Lcom/boohee/model/User;

.field private menu:Landroid/view/Menu;

.field private targetDateView:Lcom/boohee/user/view/UserTargetDateView;

.field private targetView:Lcom/boohee/user/view/UserTargetView;

.field private targetWeightView:Lcom/boohee/user/view/UserTargetWeightView;

.field private viewFlipper:Landroid/widget/ViewFlipper;

.field private weightView:Lcom/boohee/user/view/UserWeightView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/boohee/account/UserInitActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/account/UserInitActivity;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/boohee/account/UserInitActivity;->ACTION_SAVE:I

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/boohee/account/UserInitActivity;->ACTION_NEXT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 41
    iput v1, p0, Lcom/boohee/account/UserInitActivity;->currentIndex:I

    .line 53
    new-instance v0, Lcom/boohee/model/User;

    invoke-direct {v0}, Lcom/boohee/model/User;-><init>()V

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->keepWeight:Ljava/lang/Boolean;

    .line 56
    iput-boolean v1, p0, Lcom/boohee/account/UserInitActivity;->isSendRequest:Z

    .line 207
    new-instance v0, Lcom/boohee/account/UserInitActivity$2;

    invoke-direct {v0, p0}, Lcom/boohee/account/UserInitActivity$2;-><init>(Lcom/boohee/account/UserInitActivity;)V

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/UserInitActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/account/UserInitActivity;)Lcom/boohee/model/User;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/account/UserInitActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;
    .param p1, "x1"    # Lcom/boohee/model/User;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/account/UserInitActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/account/UserInitActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/account/UserInitActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/boohee/account/UserInitActivity;->isSendRequest:Z

    return p1
.end method

.method static synthetic access$502(Lcom/boohee/account/UserInitActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/account/UserInitActivity;->keepWeight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/UserInitActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method private changeProfileRequest()V
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 167
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "passport_token"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "sex_type"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v2, v2, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "birthday"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v2, v2, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "height"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget v2, v2, Lcom/boohee/model/User;->height:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "begin_weight"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget v2, v2, Lcom/boohee/model/User;->begin_weight:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->keepWeight:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "target_weight"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/boohee/account/UserInitActivity;->showLoading()V

    .line 180
    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/account/UserInitActivity$1;

    iget-object v3, p0, Lcom/boohee/account/UserInitActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/account/UserInitActivity$1;-><init>(Lcom/boohee/account/UserInitActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/boohee/api/OneApi;->createUsersChangeProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    .line 205
    return-void

    .line 175
    :cond_0
    const-string v1, "target_weight"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget v2, v2, Lcom/boohee/model/User;->target_weight:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "target_date"

    iget-object v2, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v2, v2, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f0e049a

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 69
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/boohee/account/UserInitActivity;->count:I

    .line 71
    const v0, 0x7f0e065c

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserGenderView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->genderView:Lcom/boohee/user/view/UserGenderView;

    .line 72
    const v0, 0x7f0e065d

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserBirthdayView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->birthdayView:Lcom/boohee/user/view/UserBirthdayView;

    .line 73
    const v0, 0x7f0e065e

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserHeightView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->heightView:Lcom/boohee/user/view/UserHeightView;

    .line 74
    const v0, 0x7f0e065f

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserWeightView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->weightView:Lcom/boohee/user/view/UserWeightView;

    .line 75
    const v0, 0x7f0e0660

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserTargetView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->targetView:Lcom/boohee/user/view/UserTargetView;

    .line 76
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->targetView:Lcom/boohee/user/view/UserTargetView;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/boohee/user/view/UserTargetView;->setHandler(Landroid/os/Handler;)V

    .line 77
    const v0, 0x7f0e0661

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserTargetWeightView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->targetWeightView:Lcom/boohee/user/view/UserTargetWeightView;

    .line 78
    const v0, 0x7f0e0662

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserTargetDateView;

    iput-object v0, p0, Lcom/boohee/account/UserInitActivity;->targetDateView:Lcom/boohee/user/view/UserTargetDateView;

    .line 79
    return-void
.end method

.method private nextClick()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040021

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 150
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040022

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 151
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 152
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iput v0, p0, Lcom/boohee/account/UserInitActivity;->currentIndex:I

    .line 153
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->refreshMenuItem()V

    .line 154
    return-void
.end method

.method private previousClick()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040017

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 159
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040018

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 161
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iput v0, p0, Lcom/boohee/account/UserInitActivity;->currentIndex:I

    .line 162
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->refreshMenuItem()V

    .line 163
    return-void
.end method

.method private refreshMenuItem()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    iget v0, p0, Lcom/boohee/account/UserInitActivity;->currentIndex:I

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 85
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    iget v0, p0, Lcom/boohee/account/UserInitActivity;->currentIndex:I

    iget v1, p0, Lcom/boohee/account/UserInitActivity;->count:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->keepWeight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/boohee/account/UserInitActivity;->currentIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 91
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 96
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private saveClick()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/boohee/account/UserInitActivity;->isSendRequest:Z

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/account/UserInitActivity;->isSendRequest:Z

    .line 138
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->genderView:Lcom/boohee/user/view/UserGenderView;

    invoke-virtual {v1}, Lcom/boohee/user/view/UserGenderView;->getSexType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->birthdayView:Lcom/boohee/user/view/UserBirthdayView;

    invoke-virtual {v1}, Lcom/boohee/user/view/UserBirthdayView;->getBirthday()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->heightView:Lcom/boohee/user/view/UserHeightView;

    invoke-virtual {v1}, Lcom/boohee/user/view/UserHeightView;->getUserHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/boohee/model/User;->height:F

    .line 141
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->weightView:Lcom/boohee/user/view/UserWeightView;

    invoke-virtual {v1}, Lcom/boohee/user/view/UserWeightView;->getUserWeight()F

    move-result v1

    iput v1, v0, Lcom/boohee/model/User;->begin_weight:F

    .line 142
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->targetWeightView:Lcom/boohee/user/view/UserTargetWeightView;

    invoke-virtual {v1}, Lcom/boohee/user/view/UserTargetWeightView;->getUserTargetWeight()F

    move-result v1

    iput v1, v0, Lcom/boohee/model/User;->target_weight:F

    .line 143
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;

    iget-object v1, p0, Lcom/boohee/account/UserInitActivity;->targetDateView:Lcom/boohee/user/view/UserTargetDateView;

    invoke-virtual {v1}, Lcom/boohee/user/view/UserTargetDateView;->getTargetDate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->changeProfileRequest()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/boohee/account/UserInitActivity;->finish()V

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030212

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Lcom/boohee/account/UserInitActivity;->setTitle(I)V

    .line 63
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->findView()V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 102
    iput-object p1, p0, Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;

    .line 103
    const v0, 0x7f07042d

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 105
    const v0, 0x7f0703b7

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 107
    const v0, 0x7f07017d

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->refreshMenuItem()V

    .line 110
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 231
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/UserIntEvent;)V
    .locals 0
    .param p1, "userIntEvent"    # Lcom/boohee/one/event/UserIntEvent;

    .prologue
    .line 241
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 117
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/account/UserInitActivity;->finish()V

    goto :goto_0

    .line 120
    :sswitch_1
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->previousClick()V

    goto :goto_0

    .line 123
    :sswitch_2
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->nextClick()V

    goto :goto_0

    .line 126
    :sswitch_3
    invoke-direct {p0}, Lcom/boohee/account/UserInitActivity;->saveClick()V

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
