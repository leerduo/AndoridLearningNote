.class Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MoreChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/MoreChallengeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MoreChallengeActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/MoreChallengeActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    .line 84
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MoreChallengeActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity$PagerAdapter;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MoreChallengeActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    # getter for: Lcom/boohee/one/ui/MoreChallengeActivity;->TITLES:[Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/ui/MoreChallengeActivity;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
