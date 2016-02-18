.class public abstract Lcom/boohee/one/ui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected activity:Lcom/boohee/one/ui/BaseActivity;

.field protected ctx:Landroid/content/Context;

.field protected finder:Lcom/boohee/utils/ViewFinder;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

.field private rootLayout:Landroid/widget/LinearLayout;

.field protected toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 32
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method private initToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    const v0, 0x7f0e059a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 62
    iget-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 64
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p0}, Lcom/boohee/utils/BlackTech;->enableApiSwitch(Landroid/support/v7/widget/Toolbar;Landroid/app/Activity;)V

    .line 69
    return-void
.end method


# virtual methods
.method public comeOnBaby(Ljava/lang/Class;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method public dismissLoading()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/LoadingFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/LoadingFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected getIntExtra(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/MyApplication;

    invoke-virtual {v1}, Lcom/boohee/one/MyApplication;->getIsMainOpened()Z

    move-result v0

    .line 96
    .local v0, "isOpen":Z
    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->isReleaseUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/boohee/one/ui/MainActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->finish()V

    .line 106
    :goto_1
    return-void

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v1, "AA21b3625afd8e8cde121e42be488854115a574474"

    invoke-static {v1}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v1

    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 42
    const v1, 0x7f030027

    invoke-super {p0, v1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 43
    iput-object p0, p0, Lcom/boohee/one/ui/BaseActivity;->ctx:Landroid/content/Context;

    .line 44
    iput-object p0, p0, Lcom/boohee/one/ui/BaseActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    .line 45
    new-instance v1, Lcom/boohee/utils/ViewFinder;

    invoke-direct {v1, p0}, Lcom/boohee/utils/ViewFinder;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->finder:Lcom/boohee/utils/ViewFinder;

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x4000000

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 50
    .end local v0    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 152
    invoke-static {p0}, Lcom/boohee/one/http/RequestManager;->cancelAll(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->onBackPressed()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 122
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 110
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutId"    # I

    .prologue
    const/4 v3, -0x1

    .line 54
    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;->initToolbar()V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 4

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    if-nez v1, :cond_0

    .line 128
    invoke-static {}, Lcom/boohee/one/ui/fragment/LoadingFragment;->newInstance()Lcom/boohee/one/ui/fragment/LoadingFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/LoadingFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 132
    iget-object v1, p0, Lcom/boohee/one/ui/BaseActivity;->mLoading:Lcom/boohee/one/ui/fragment/LoadingFragment;

    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "loading"

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/ui/fragment/LoadingFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
