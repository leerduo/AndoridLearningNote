.class public Lcom/boohee/one/ui/WagerChallengeActivity;
.super Lcom/boohee/one/ui/BaseChallengeActivity;
.source "WagerChallengeActivity.java"


# instance fields
.field private challengeBrowserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

.field private challengeDiscussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

.field private challengerFragment:Lcom/boohee/one/ui/fragment/ChallengerFragment;

.field private isFirstLoad:Z

.field private isJoined:Z

.field private progressChallengeFragment:Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->isJoined:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/WagerChallengeActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WagerChallengeActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WagerChallengeActivity;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method private handleChallenge(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 71
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v1, "joined"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->isJoined:Z

    .line 75
    const-string v1, "challenge"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 76
    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->isJoined:Z

    iput-boolean v2, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    .line 79
    iget-boolean v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->isFirstLoad:Z

    if-eqz v1, :cond_2

    .line 80
    iput-boolean v3, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->isFirstLoad:Z

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    .line 88
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;
    iget-boolean v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->isJoined:Z

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->setIsJoined(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerChallengeActivity;->initHeaderView()V

    .line 92
    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->tabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0
.end method


# virtual methods
.method protected getFragments()Ljava/util/List;
    .locals 5
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
    .line 98
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v2, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/ui/fragment/BaseChallegeFragment;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/boohee/one/http/client/StatusClient;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/v1/wagers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v3, v3, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/UrlUtils;->handleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengeBrowserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    if-nez v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->newInstance(Ljava/lang/String;Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengeBrowserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengeBrowserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengeDiscussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->newInstance(I)Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengeDiscussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengerFragment:Lcom/boohee/one/ui/fragment/ChallengerFragment;

    if-nez v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/ChallengerFragment;->newInstance(I)Lcom/boohee/one/ui/fragment/ChallengerFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengerFragment:Lcom/boohee/one/ui/fragment/ChallengerFragment;

    .line 116
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengeDiscussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challengerFragment:Lcom/boohee/one/ui/fragment/ChallengerFragment;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseChallengeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->progressChallengeFragment:Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->progressChallengeFragment:Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerChallengeActivity;->showLoading()V

    .line 55
    iget-object v0, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget-object v1, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/WagerChallengeActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/WagerChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/WagerChallengeActivity$1;-><init>(Lcom/boohee/one/ui/WagerChallengeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ChallengeApi;->getChallengeHome(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 68
    return-void
.end method
