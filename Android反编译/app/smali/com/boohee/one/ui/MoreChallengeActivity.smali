.class public Lcom/boohee/one/ui/MoreChallengeActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "MoreChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;
    }
.end annotation


# static fields
.field private static final TITLES:[Ljava/lang/String;


# instance fields
.field isHistoryLoad:Z

.field mAdapter:Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;

.field mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/ChallengeListFragment;",
            ">;"
        }
    .end annotation
.end field

.field mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ca
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5168\u90e8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6311\u6218\u53f2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/ui/MoreChallengeActivity;->TITLES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mFragments:Ljava/util/List;

    .line 82
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/boohee/one/ui/MoreChallengeActivity;->TITLES:[Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/boohee/one/ui/MoreChallengeActivity;->initFragments()V

    .line 58
    invoke-direct {p0}, Lcom/boohee/one/ui/MoreChallengeActivity;->initViewPager()V

    .line 59
    return-void
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mFragments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->newInstance(Z)Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mFragments:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->newInstance(Z)Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method private initViewPager()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/MoreChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;-><init>(Lcom/boohee/one/ui/MoreChallengeActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mAdapter:Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;

    .line 68
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mAdapter:Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 70
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    new-instance v1, Lcom/boohee/one/ui/MoreChallengeActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MoreChallengeActivity$1;-><init>(Lcom/boohee/one/ui/MoreChallengeActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    return-void
.end method

.method public static startMe(Landroid/content/Context;)V
    .locals 2
    .param p0, "srcContext"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/MoreChallengeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MoreChallengeActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/MoreChallengeActivity;->init()V

    .line 54
    return-void
.end method
