.class public Lcom/boohee/one/mine/BiologyClockSettingActivity;
.super Lcom/boohee/main/GestureActivity;
.source "BiologyClockSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mcCircle:I

.field private mcCircleTxt:Landroid/widget/TextView;

.field private mcDay:I

.field private mcDayTxt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/boohee/one/mine/BiologyClockSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/mine/BiologyClockSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/BiologyClockSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/mine/BiologyClockSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/BiologyClockSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircle:I

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/one/mine/BiologyClockSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/BiologyClockSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/mine/BiologyClockSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/BiologyClockSettingActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->initMc()V

    return-void
.end method

.method private getMcStatus()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;

    iget-object v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity$1;-><init>(Lcom/boohee/one/mine/BiologyClockSettingActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getMcPeriodsLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 72
    return-void
.end method

.method private initMc()V
    .locals 4

    .prologue
    const v3, 0x7f07041f

    .line 75
    const v0, 0x7f0e04e4

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDayTxt:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0e04e6

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircleTxt:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDayTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircleTxt:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDayTxt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_1
    iget v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircle:I

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircleTxt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDayTxt:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcCircleTxt:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 43
    const v2, 0x7f0e04e5

    invoke-virtual {p0, v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 44
    .local v0, "mcCircleClick":Landroid/widget/LinearLayout;
    const v2, 0x7f0e04e3

    invoke-virtual {p0, v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 45
    .local v1, "mcDayClick":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method private startChangeProfileActiivty2(ILjava/lang/String;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "defaultMc"    # I

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/account/ChangeProfileActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "default_mc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f070320

    invoke-virtual {p0, v1}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    const/16 v0, 0xa

    const-string v1, "cycle"

    iget v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->startChangeProfileActiivty2(ILjava/lang/String;I)V

    goto :goto_0

    .line 99
    :pswitch_2
    const/16 v0, 0xb

    const-string v1, "duration"

    iget v2, p0, Lcom/boohee/one/mine/BiologyClockSettingActivity;->mcDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->startChangeProfileActiivty2(ILjava/lang/String;I)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e04e3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03018f

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->setTitle(I)V

    .line 39
    invoke-direct {p0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->initView()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/boohee/one/mine/BiologyClockSettingActivity;->getMcStatus()V

    .line 53
    return-void
.end method
