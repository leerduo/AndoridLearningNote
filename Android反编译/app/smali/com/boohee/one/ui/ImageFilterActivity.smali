.class public Lcom/boohee/one/ui/ImageFilterActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ImageFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_POST_DATA:Ljava/lang/String; = "KEY_POST_DATA"

.field public static final KEY_POST_TAG:Ljava/lang/String; = "KEY_POST_TAG"


# instance fields
.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private currentTab:Landroid/widget/TextView;

.field private eatFragment:Landroid/support/v4/app/Fragment;

.field private eatTab:Landroid/widget/TextView;

.field private figureFragment:Landroid/support/v4/app/Fragment;

.field private figureTab:Landroid/widget/TextView;

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private line:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private sleepFragment:Landroid/support/v4/app/Fragment;

.field private sleepTab:Landroid/widget/TextView;

.field private sportFragment:Landroid/support/v4/app/Fragment;

.field private sportTab:Landroid/widget/TextView;

.field private syncData:Lcom/boohee/model/FilterSyncBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->fm:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ImageFilterActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ImageFilterActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/ImageFilterActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ImageFilterActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/ImageFilterActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ImageFilterActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addListener()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sportTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->figureTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sleepTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private changeFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    if-ne v1, p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 204
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 205
    const v1, 0x7f0e016d

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 206
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 207
    iput-object p1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0e016e

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatTab:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0e016f

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sportTab:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0e0170

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->figureTab:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0e0171

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sleepTab:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0e016c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->line:Landroid/view/View;

    .line 71
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->mUri:Landroid/net/Uri;

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatTab:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentTab:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentTab:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->line:Landroid/view/View;

    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 87
    new-instance v0, Lcom/boohee/model/FilterSyncBean;

    invoke-direct {v0}, Lcom/boohee/model/FilterSyncBean;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->syncData:Lcom/boohee/model/FilterSyncBean;

    .line 88
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->initFragment()V

    .line 89
    return-void
.end method

.method private initFragment()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/boohee/one/ui/FilterEatFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/FilterEatFragment;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatFragment:Landroid/support/v4/app/Fragment;

    .line 93
    new-instance v0, Lcom/boohee/one/ui/FilterSportFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/FilterSportFragment;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sportFragment:Landroid/support/v4/app/Fragment;

    .line 94
    new-instance v0, Lcom/boohee/one/ui/FilterFigureFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/FilterFigureFragment;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->figureFragment:Landroid/support/v4/app/Fragment;

    .line 95
    new-instance v0, Lcom/boohee/one/ui/FilterSleepFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/FilterSleepFragment;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sleepFragment:Landroid/support/v4/app/Fragment;

    .line 96
    return-void
.end method

.method private leftAction()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/FilterDataSyncUtil;->removeFilterData(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->finish()V

    .line 121
    return-void
.end method

.method private saveSyncData(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "currentFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 154
    instance-of v0, p1, Lcom/boohee/one/ui/FilterEatFragment;

    if-eqz v0, :cond_2

    .line 155
    check-cast p1, Lcom/boohee/one/ui/FilterEatFragment;

    .end local p1    # "currentFragment":Landroid/support/v4/app/Fragment;
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->syncData:Lcom/boohee/model/FilterSyncBean;

    invoke-virtual {p1, v0}, Lcom/boohee/one/ui/FilterEatFragment;->saveSyncData(Lcom/boohee/model/FilterSyncBean;)V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->syncData:Lcom/boohee/model/FilterSyncBean;

    invoke-virtual {v0}, Lcom/boohee/model/FilterSyncBean;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_POST_DATA"

    iget-object v2, p0, Lcom/boohee/one/ui/ImageFilterActivity;->syncData:Lcom/boohee/model/FilterSyncBean;

    invoke-virtual {v2}, Lcom/boohee/model/FilterSyncBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void

    .line 156
    .restart local p1    # "currentFragment":Landroid/support/v4/app/Fragment;
    :cond_2
    instance-of v0, p1, Lcom/boohee/one/ui/FilterSportFragment;

    if-eqz v0, :cond_3

    .line 157
    check-cast p1, Lcom/boohee/one/ui/FilterSportFragment;

    .end local p1    # "currentFragment":Landroid/support/v4/app/Fragment;
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->syncData:Lcom/boohee/model/FilterSyncBean;

    invoke-virtual {p1, v0}, Lcom/boohee/one/ui/FilterSportFragment;->saveSyncData(Lcom/boohee/model/FilterSyncBean;)V

    goto :goto_0

    .line 158
    .restart local p1    # "currentFragment":Landroid/support/v4/app/Fragment;
    :cond_3
    instance-of v0, p1, Lcom/boohee/one/ui/FilterFigureFragment;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Lcom/boohee/one/ui/FilterFigureFragment;

    .end local p1    # "currentFragment":Landroid/support/v4/app/Fragment;
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->syncData:Lcom/boohee/model/FilterSyncBean;

    invoke-virtual {p1, v0}, Lcom/boohee/one/ui/FilterFigureFragment;->saveSyncData(Lcom/boohee/model/FilterSyncBean;)V

    goto :goto_0
.end method

.method private setUpFragment()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 60
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcom/boohee/one/ui/FilterEatFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/FilterEatFragment;-><init>()V

    iput-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatFragment:Landroid/support/v4/app/Fragment;

    .line 61
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 62
    const v1, 0x7f0e016d

    iget-object v2, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    return-void
.end method

.method private updateTab(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "selectedTab"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentTab:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 196
    iput-object p1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentTab:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentTab:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 198
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentTab:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 192
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 171
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->updateTab(Landroid/widget/TextView;)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->eatFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 175
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->line:Landroid/view/View;

    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sportFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 179
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->line:Landroid/view/View;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->figureFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->line:Landroid/view/View;

    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->sleepFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 187
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->line:Landroid/view/View;

    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e016e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "\u6ee4\u955c"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->findView()V

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->addListener()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->init()V

    .line 55
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->setUpFragment()V

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 100
    const/4 v0, 0x0

    const v1, 0x7f070486

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 212
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/boohee/one/ui/ImageFilterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_POST_TAG"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/boohee/main/GestureActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->postAction()V

    .line 114
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->leftAction()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public postAction()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/BitmapUtil;->viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/ImageFilterActivity;->showLoading()V

    .line 131
    iget-object v1, p0, Lcom/boohee/one/ui/ImageFilterActivity;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v1}, Lcom/boohee/one/ui/ImageFilterActivity;->saveSyncData(Landroid/support/v4/app/Fragment;)V

    .line 132
    new-instance v1, Lcom/boohee/one/ui/ImageFilterActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/boohee/one/ui/ImageFilterActivity$1;-><init>(Lcom/boohee/one/ui/ImageFilterActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/boohee/one/ui/ImageFilterActivity$1;->start()V

    goto :goto_0
.end method
