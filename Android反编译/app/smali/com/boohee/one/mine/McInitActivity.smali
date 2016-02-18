.class public Lcom/boohee/one/mine/McInitActivity;
.super Lcom/boohee/main/GestureActivity;
.source "McInitActivity.java"


# static fields
.field private static final KEY_NEXT:I = 0x1

.field private static final KEY_PREVIOUS:I = 0x0

.field private static final KEY_SAVE:I = 0x2

.field static final TAG:Ljava/lang/String;

.field public static defaultMcCome:I

.field public static defaultMcdays:I


# instance fields
.field private count:I

.field private currentIndex:I

.field private cycle:I

.field private duration:I

.field private mMenu:Landroid/view/Menu;

.field private mcCircleView:Lcom/boohee/user/view/UserMcCircleView;

.field private mcComeView:Lcom/boohee/user/view/UserMcComeView;

.field private mcDaysView:Lcom/boohee/user/view/UserMcDaysView;

.field private mcGoView:Lcom/boohee/user/view/UserMcGoView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/boohee/one/mine/McInitActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/mine/McInitActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/mine/McInitActivity;->currentIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/mine/McInitActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McInitActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private changeMcProfile()V
    .locals 8

    .prologue
    .line 139
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcDaysView:Lcom/boohee/user/view/UserMcDaysView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserMcDaysView;->getMcDays()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/mine/McInitActivity;->duration:I

    .line 140
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcCircleView:Lcom/boohee/user/view/UserMcCircleView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserMcCircleView;->getMcCircle()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/mine/McInitActivity;->cycle:I

    .line 141
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v6

    .line 142
    .local v6, "userPreference":Lcom/boohee/database/UserPreference;
    const-string v0, "duration"

    iget v1, p0, Lcom/boohee/one/mine/McInitActivity;->duration:I

    invoke-virtual {v6, v0, v1}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v0, "cycle"

    iget v1, p0, Lcom/boohee/one/mine/McInitActivity;->cycle:I

    invoke-virtual {v6, v0, v1}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/one/mine/McInitActivity;->duration:I

    iget v2, p0, Lcom/boohee/one/mine/McInitActivity;->cycle:I

    iget-object v3, p0, Lcom/boohee/one/mine/McInitActivity;->mcComeView:Lcom/boohee/user/view/UserMcComeView;

    invoke-virtual {v3}, Lcom/boohee/user/view/UserMcComeView;->getLastCome()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/mine/McInitActivity;->mcGoView:Lcom/boohee/user/view/UserMcGoView;

    invoke-virtual {v4}, Lcom/boohee/user/view/UserMcGoView;->getLastGo()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/boohee/one/mine/McInitActivity$1;

    iget-object v7, p0, Lcom/boohee/one/mine/McInitActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v5, p0, v7}, Lcom/boohee/one/mine/McInitActivity$1;-><init>(Lcom/boohee/one/mine/McInitActivity;Landroid/content/Context;)V

    invoke-static/range {v0 .. v5}, Lcom/boohee/api/OneApi;->updateMcUpdateSummaries(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 156
    return-void
.end method

.method private close()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/boohee/one/mine/McInitActivity;->finish()V

    .line 164
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0e049a

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 53
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/mine/McInitActivity;->count:I

    .line 55
    const v0, 0x7f0e049b

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserMcDaysView;

    iput-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcDaysView:Lcom/boohee/user/view/UserMcDaysView;

    .line 56
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcDaysView:Lcom/boohee/user/view/UserMcDaysView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserMcDaysView;->getMcDays()I

    move-result v0

    sput v0, Lcom/boohee/one/mine/McInitActivity;->defaultMcdays:I

    .line 57
    const v0, 0x7f0e049c

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserMcCircleView;

    iput-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcCircleView:Lcom/boohee/user/view/UserMcCircleView;

    .line 58
    const v0, 0x7f0e049d

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserMcComeView;

    iput-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcComeView:Lcom/boohee/user/view/UserMcComeView;

    .line 59
    const v0, 0x7f0e049e

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/user/view/UserMcGoView;

    iput-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcGoView:Lcom/boohee/user/view/UserMcGoView;

    .line 61
    return-void
.end method

.method private nextClick()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040021

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 107
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040022

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 108
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 109
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/mine/McInitActivity;->currentIndex:I

    .line 110
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->refreshMenuItem()V

    .line 111
    return-void
.end method

.method private previousClick()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040017

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f040018

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 100
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 101
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/mine/McInitActivity;->currentIndex:I

    .line 102
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->refreshMenuItem()V

    .line 103
    return-void
.end method

.method private refreshMenuItem()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    iget v0, p0, Lcom/boohee/one/mine/McInitActivity;->currentIndex:I

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :goto_0
    iget v0, p0, Lcom/boohee/one/mine/McInitActivity;->currentIndex:I

    if-ne v0, v2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mcCircleView:Lcom/boohee/user/view/UserMcCircleView;

    invoke-virtual {v0}, Lcom/boohee/user/view/UserMcCircleView;->setBottomPicker()V

    .line 136
    :cond_0
    return-void

    .line 123
    :cond_1
    iget v0, p0, Lcom/boohee/one/mine/McInitActivity;->currentIndex:I

    iget v1, p0, Lcom/boohee/one/mine/McInitActivity;->count:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 127
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 132
    iget-object v0, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private saveClick()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->changeMcProfile()V

    .line 115
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030179

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f070181

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McInitActivity;->setTitle(I)V

    .line 48
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->findView()V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, Lcom/boohee/one/mine/McInitActivity;->mMenu:Landroid/view/Menu;

    .line 66
    const v0, 0x7f07042d

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 68
    const v0, 0x7f0703b7

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    const v0, 0x7f07017d

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 72
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->refreshMenuItem()V

    .line 73
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 168
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->close()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->close()V

    goto :goto_0

    .line 83
    :sswitch_1
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->previousClick()V

    goto :goto_0

    .line 86
    :sswitch_2
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->nextClick()V

    goto :goto_0

    .line 89
    :sswitch_3
    invoke-direct {p0}, Lcom/boohee/one/mine/McInitActivity;->saveClick()V

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
