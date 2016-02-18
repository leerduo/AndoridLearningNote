.class public Lcom/boohee/myview/swipeback/SwipeBackActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "SwipeBackActivity.java"

# interfaces
.implements Lcom/boohee/myview/swipeback/SwipeBackActivityBase;


# instance fields
.field private mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/boohee/myview/swipeback/SwipeBackActivity;->mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/boohee/myview/swipeback/SwipeBackActivity;->mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    invoke-virtual {v1, p1}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public getSwipeBackLayout()Lcom/boohee/myview/swipeback/SwipeBackLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivity;->mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->getSwipeBackLayout()Lcom/boohee/myview/swipeback/SwipeBackLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    invoke-direct {v0, p0}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivity;->mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    .line 16
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivity;->mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->onActivityCreate()V

    .line 17
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 22
    iget-object v0, p0, Lcom/boohee/myview/swipeback/SwipeBackActivity;->mHelper:Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/boohee/myview/swipeback/SwipeBackActivityHelper;->onPostCreate()V

    .line 23
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/boohee/myview/swipeback/SwipeBackActivity;->getSwipeBackLayout()Lcom/boohee/myview/swipeback/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/swipeback/SwipeBackLayout;->scrollToFinishActivity()V

    .line 46
    return-void
.end method

.method public setSwipeBackEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/boohee/myview/swipeback/SwipeBackActivity;->getSwipeBackLayout()Lcom/boohee/myview/swipeback/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/boohee/myview/swipeback/SwipeBackLayout;->setEnableGesture(Z)V

    .line 41
    return-void
.end method
