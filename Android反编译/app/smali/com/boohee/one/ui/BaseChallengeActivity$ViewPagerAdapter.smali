.class Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "BaseChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/BaseChallengeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseChallegeFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "r"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseChallegeFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p3, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/ui/fragment/BaseChallegeFragment;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 451
    iput-object p2, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mResources:Landroid/content/res/Resources;

    .line 452
    iput-object p3, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    .line 453
    iput-object p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 454
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 501
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->getItem(I)Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 483
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->getItem(I)Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 494
    .local v0, "charSequence":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 458
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    .line 459
    .local v2, "object":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 461
    instance-of v4, v2, Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 462
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 463
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v0, v4, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 466
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 467
    iget-object v4, p0, Lcom/boohee/one/ui/BaseChallengeActivity$ViewPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 468
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v1, v4, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 469
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 470
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 474
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
