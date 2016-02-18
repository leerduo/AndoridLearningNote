.class public Lcom/boohee/one/ui/PunchChallengeActivity;
.super Lcom/boohee/one/ui/BaseChallengeActivity;
.source "PunchChallengeActivity.java"


# instance fields
.field private challegeFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseChallegeFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseChallegeFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/PunchTimelineFragment;->newInstance(Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/PunchTimelineFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/PunchRankFragment;->newInstance(Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/PunchRankFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    return-object v0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->isViewBeingDragged(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseChallengeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 40
    iget-object v1, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/boohee/one/ui/PunchChallengeActivity;->challegeFragments:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 42
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    return-void
.end method
