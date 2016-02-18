.class public Lcom/boohee/one/ui/IntroductionActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "IntroductionActivity.java"


# static fields
.field private static final mData:[I


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/adapter/IntroductionAdapter;

.field mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0174
    .end annotation
.end field

.field mPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0173
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/IntroductionActivity;->mData:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02038c
        0x7f02038c
        0x7f02038c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/IntroductionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/IntroductionActivity;->setContentView(I)V

    .line 41
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 43
    new-instance v0, Lcom/boohee/one/ui/adapter/IntroductionAdapter;

    sget-object v1, Lcom/boohee/one/ui/IntroductionActivity;->mData:[I

    invoke-virtual {p0}, Lcom/boohee/one/ui/IntroductionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/IntroductionAdapter;-><init>([ILandroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/boohee/one/ui/IntroductionActivity;->mAdapter:Lcom/boohee/one/ui/adapter/IntroductionAdapter;

    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/IntroductionActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/IntroductionActivity;->mAdapter:Lcom/boohee/one/ui/adapter/IntroductionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/IntroductionActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/boohee/one/ui/IntroductionActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 46
    return-void
.end method
