.class public Lcom/boohee/one/ui/FlexChallengeActivity;
.super Lcom/boohee/one/ui/BaseChallengeActivity;
.source "FlexChallengeActivity.java"


# instance fields
.field private browserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

.field private discussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

.field private isFirstLoad:Z

.field private isJoined:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->isFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/FlexChallengeActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FlexChallengeActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FlexChallengeActivity;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method private handleChallenge(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v1, "joined"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->isJoined:Z

    .line 56
    const-string v1, "challenge"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/BaseChallenge;

    iput-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 57
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v2, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->isJoined:Z

    iput-boolean v2, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    .line 60
    iget-boolean v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->isFirstLoad:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    if-nez v1, :cond_3

    .line 61
    :cond_2
    iput-boolean v3, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->isFirstLoad:Z

    goto :goto_0

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    .line 66
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;
    iget-boolean v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->isJoined:Z

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->setIsJoined(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/boohee/one/ui/FlexChallengeActivity;->initHeaderView()V

    .line 70
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->tabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0
.end method


# virtual methods
.method protected getFragments()Ljava/util/List;
    .locals 3
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
    .line 76
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v1, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/ui/fragment/BaseChallegeFragment;>;"
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->browserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->page_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;->newInstance(Ljava/lang/String;Lcom/boohee/model/chanllenge/BaseChallenge;)Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->browserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->browserFragment:Lcom/boohee/one/ui/fragment/ChallengeBrowserFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_discuss:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->discussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->newInstance(I)Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->discussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->discussFragment:Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 34
    invoke-super {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->onResume()V

    .line 35
    invoke-virtual {p0}, Lcom/boohee/one/ui/FlexChallengeActivity;->showLoading()V

    .line 36
    iget-object v0, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget-object v1, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/FlexChallengeActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/FlexChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/FlexChallengeActivity$1;-><init>(Lcom/boohee/one/ui/FlexChallengeActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ChallengeApi;->getChallengeHome(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 49
    return-void
.end method
