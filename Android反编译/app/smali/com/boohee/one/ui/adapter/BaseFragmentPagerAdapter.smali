.class public Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "BaseFragmentPagerAdapter.java"


# instance fields
.field private final mFragmentTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragmentTitles:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/boohee/one/ui/fragment/BaseFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Lcom/boohee/one/ui/fragment/BaseFragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragmentTitles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->getItem(I)Lcom/boohee/one/ui/fragment/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/boohee/one/ui/fragment/BaseFragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->mFragmentTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
