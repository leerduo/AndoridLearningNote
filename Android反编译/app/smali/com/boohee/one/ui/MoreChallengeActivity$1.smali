.class Lcom/boohee/one/ui/MoreChallengeActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MoreChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MoreChallengeActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MoreChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MoreChallengeActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boohee/one/ui/MoreChallengeActivity$1;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 74
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity$1;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    iget-boolean v0, v0, Lcom/boohee/one/ui/MoreChallengeActivity;->isHistoryLoad:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity$1;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    iput-boolean v1, v0, Lcom/boohee/one/ui/MoreChallengeActivity;->isHistoryLoad:Z

    .line 76
    iget-object v0, p0, Lcom/boohee/one/ui/MoreChallengeActivity$1;->this$0:Lcom/boohee/one/ui/MoreChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MoreChallengeActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/ChallengeListFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/ChallengeListFragment;->pull()V

    .line 78
    :cond_0
    return-void
.end method
