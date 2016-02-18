.class public Lcom/boohee/account/ChangeProfileActivity2;
.super Lcom/boohee/main/GestureActivity;
.source "ChangeProfileActivity2.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private code:Ljava/lang/String;

.field content:Ljava/lang/String;

.field defaultMc:I

.field private index:I

.field private mcCircle:I

.field private mcDay:I

.field private user:Lcom/boohee/model/User;

.field private userView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/boohee/account/ChangeProfileActivity2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/account/ChangeProfileActivity2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/account/ChangeProfileActivity2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity2;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/account/ChangeProfileActivity2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity2;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/account/ChangeProfileActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity2;

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    return v0
.end method

.method static synthetic access$300(Lcom/boohee/account/ChangeProfileActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity2;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->setTargetWeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/account/ChangeProfileActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity2;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->setTargetDate()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/account/ChangeProfileActivity2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/account/ChangeProfileActivity2;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->code:Ljava/lang/String;

    return-object v0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-virtual {p0}, Lcom/boohee/account/ChangeProfileActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    .line 56
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->code:Ljava/lang/String;

    .line 57
    const-string v1, "default_mc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->defaultMc:I

    .line 58
    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/User;

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    .line 59
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    const v1, 0x7f0e02ac

    invoke-virtual {p0, v1}, Lcom/boohee/account/ChangeProfileActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 63
    .local v0, "contentLayout":Landroid/widget/ViewFlipper;
    iget v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 95
    return-void

    .line 65
    :pswitch_0
    new-instance v1, Lcom/boohee/user/view/UserGenderView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserGenderView;-><init>(Landroid/content/Context;Lcom/boohee/model/User;)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v1, Lcom/boohee/user/view/UserBirthdayView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserBirthdayView;-><init>(Landroid/content/Context;Lcom/boohee/model/User;)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 71
    :pswitch_2
    new-instance v1, Lcom/boohee/user/view/UserHeightView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserHeightView;-><init>(Landroid/content/Context;Lcom/boohee/model/User;)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v1, Lcom/boohee/user/view/UserWeightView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserWeightView;-><init>(Landroid/content/Context;Lcom/boohee/model/User;)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 77
    :pswitch_4
    new-instance v1, Lcom/boohee/user/view/UserTargetWeightView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserTargetWeightView;-><init>(Landroid/content/Context;Lcom/boohee/model/User;)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 80
    :pswitch_5
    new-instance v1, Lcom/boohee/user/view/UserTargetDateView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserTargetDateView;-><init>(Landroid/content/Context;Lcom/boohee/model/User;)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 83
    :pswitch_6
    new-instance v1, Lcom/boohee/user/view/UserTargetView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/boohee/user/view/UserTargetView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 86
    :pswitch_7
    new-instance v1, Lcom/boohee/user/view/UserMcCircleView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->defaultMc:I

    invoke-direct {v1, v2, v4, v3}, Lcom/boohee/user/view/UserMcCircleView;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 89
    :pswitch_8
    iget v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->defaultMc:I

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x5

    iput v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->defaultMc:I

    .line 91
    :cond_0
    new-instance v1, Lcom/boohee/user/view/UserMcDaysView;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    iget v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->defaultMc:I

    invoke-direct {v1, v2, v3}, Lcom/boohee/user/view/UserMcDaysView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onSave()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserMcCircleView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserMcCircleView;->getMcCircle()I

    move-result v0

    iput v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->mcCircle:I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->mcCircle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->updateMc()V

    goto :goto_0

    .line 121
    :cond_1
    iget v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserMcDaysView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserMcDaysView;->getMcDays()I

    move-result v0

    iput v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->mcDay:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->mcDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->updateMc()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->updateUser()V

    goto :goto_0
.end method

.method private setTargetDate()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x7

    iget v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    if-ne v0, v1, :cond_0

    .line 213
    const/16 v0, 0x8

    const-string v1, "target_date"

    invoke-direct {p0, v0, v1}, Lcom/boohee/account/ChangeProfileActivity2;->startChangeProfileActiivty2(ILjava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method private setTargetWeight()V
    .locals 2

    .prologue
    .line 205
    const/16 v0, 0x9

    iget v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    const-string v1, "-1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x7

    const-string v1, "target_weight"

    invoke-direct {p0, v0, v1}, Lcom/boohee/account/ChangeProfileActivity2;->startChangeProfileActiivty2(ILjava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method private startChangeProfileActiivty2(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/account/ChangeProfileActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v1, "user"

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "default_mc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangeProfileActivity2;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method private updateMc()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    .line 190
    .local v0, "userPrefernce":Lcom/boohee/database/UserPreference;
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    new-instance v4, Lcom/boohee/account/ChangeProfileActivity2$2;

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity2;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/boohee/account/ChangeProfileActivity2$2;-><init>(Lcom/boohee/account/ChangeProfileActivity2;Landroid/content/Context;)V

    invoke-static {v1, v2, v3, v4}, Lcom/boohee/api/OneApi;->updateMcUpdateSummaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 201
    return-void
.end method

.method private updateUser()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->index:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->code:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    new-instance v3, Lcom/boohee/account/ChangeProfileActivity2$1;

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity2;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/account/ChangeProfileActivity2$1;-><init>(Lcom/boohee/account/ChangeProfileActivity2;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/OneApi;->updateUsersChangeProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserGenderView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserGenderView;->getSexType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto :goto_1

    .line 140
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserBirthdayView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserBirthdayView;->getBirthday()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto :goto_1

    .line 144
    :pswitch_2
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserHeightView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserHeightView;->getUserHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/boohee/model/User;->height:F

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget v1, v1, Lcom/boohee/model/User;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto :goto_1

    .line 148
    :pswitch_3
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserWeightView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserWeightView;->getUserWeight()F

    move-result v0

    iput v0, v1, Lcom/boohee/model/User;->begin_weight:F

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget v1, v1, Lcom/boohee/model/User;->begin_weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    :pswitch_4
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserTargetWeightView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserTargetWeightView;->getUserTargetWeight()F

    move-result v0

    iput v0, v1, Lcom/boohee/model/User;->target_weight:F

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget v1, v1, Lcom/boohee/model/User;->target_weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto/16 :goto_1

    .line 156
    :pswitch_5
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserTargetDateView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserTargetDateView;->getTargetDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto/16 :goto_1

    .line 160
    :pswitch_6
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->userView:Landroid/widget/FrameLayout;

    check-cast v0, Lcom/boohee/user/view/UserTargetView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserTargetView;->getUserTargetWeight()F

    move-result v0

    iput v0, v1, Lcom/boohee/model/User;->target_weight:F

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2;->user:Lcom/boohee/model/User;

    iget v1, v1, Lcom/boohee/model/User;->target_weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    goto/16 :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f070146

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangeProfileActivity2;->setTitle(I)V

    .line 48
    const v0, 0x7f0300a6

    invoke-virtual {p0, v0}, Lcom/boohee/account/ChangeProfileActivity2;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->handleIntent()V

    .line 50
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->init()V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 99
    const/4 v0, 0x0

    const v1, 0x7f070082

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 101
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/boohee/account/ChangeProfileActivity2;->onSave()V

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
