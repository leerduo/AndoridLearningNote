.class public Lcom/boohee/one/ui/MyFavoriteActivity;
.super Lcom/boohee/main/GestureActivity;
.source "MyFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/MyFavoriteActivity$CollectionPagerAdapter;,
        Lcom/boohee/one/ui/MyFavoriteActivity$SaveImageTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private fragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;

.field slidingTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ca
    .end annotation
.end field

.field statusFavoriteFragment:Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;

.field viewpager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field

.field webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/boohee/one/ui/MyFavoriteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/MyFavoriteActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->fragmentList:Ljava/util/List;

    .line 149
    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/MyFavoriteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    .line 144
    new-instance v0, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->statusFavoriteFragment:Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;

    .line 145
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->fragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->statusFavoriteFragment:Lcom/boohee/one/ui/fragment/StatusFavoriteFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->fragmentList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/boohee/one/ui/MyFavoriteActivity;->initFragments()V

    .line 124
    new-instance v0, Lcom/boohee/one/ui/MyFavoriteActivity$CollectionPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/MyFavoriteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->fragmentList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/ui/MyFavoriteActivity$CollectionPagerAdapter;-><init>(Lcom/boohee/one/ui/MyFavoriteActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->slidingTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity;->slidingTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    new-instance v1, Lcom/boohee/one/ui/MyFavoriteActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MyFavoriteActivity$2;-><init>(Lcom/boohee/one/ui/MyFavoriteActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 140
    return-void
.end method

.method private loadBooheePic()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/boohee/one/ui/MyFavoriteActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MyFavoriteActivity$1;-><init>(Lcom/boohee/one/ui/MyFavoriteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MyFavoriteActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 66
    const-string v0, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MyFavoriteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0}, Lcom/boohee/one/ui/MyFavoriteActivity;->initView()V

    .line 70
    return-void
.end method
