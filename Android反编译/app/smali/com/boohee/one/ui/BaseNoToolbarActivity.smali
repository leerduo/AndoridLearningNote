.class public Lcom/boohee/one/ui/BaseNoToolbarActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseNoToolbarActivity.java"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected finder:Lcom/boohee/utils/ViewFinder;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 24
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/BaseNoToolbarActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/boohee/one/MyApplication;

    invoke-virtual {v2}, Lcom/boohee/one/MyApplication;->getIsMainOpened()Z

    move-result v1

    .line 43
    .local v1, "isOpen":Z
    if-nez v1, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/BaseNoToolbarActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->finish()V

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iput-object p0, p0, Lcom/boohee/one/ui/BaseNoToolbarActivity;->ctx:Landroid/content/Context;

    .line 30
    new-instance v1, Lcom/boohee/utils/ViewFinder;

    invoke-direct {v1, p0}, Lcom/boohee/utils/ViewFinder;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/boohee/one/ui/BaseNoToolbarActivity;->finder:Lcom/boohee/utils/ViewFinder;

    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 33
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x4000000

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 35
    .end local v0    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 55
    invoke-static {p0}, Lcom/boohee/one/http/RequestManager;->cancelAll(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
