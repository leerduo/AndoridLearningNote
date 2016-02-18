.class Lcom/boohee/one/ui/BaseChallengeActivity$4;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "BaseChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BaseChallengeActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/BaseChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/BaseChallengeActivity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    # setter for: Lcom/boohee/one/ui/BaseChallengeActivity;->mPosition:I
    invoke-static {v1, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->access$302(Lcom/boohee/one/ui/BaseChallengeActivity;I)I

    .line 232
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    .line 233
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    # setter for: Lcom/boohee/one/ui/BaseChallengeActivity;->currentFragment:Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->access$102(Lcom/boohee/one/ui/BaseChallengeActivity;Lcom/boohee/one/ui/fragment/BaseChallegeFragment;)Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    .line 234
    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 238
    iget-boolean v1, v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->isFirstLoad:Z

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/BaseChallengeActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->firstLoad()V

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->isFirstLoad:Z

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$4;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    # invokes: Lcom/boohee/one/ui/BaseChallengeActivity;->refreshPagerBottomMargin()V
    invoke-static {v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->access$200(Lcom/boohee/one/ui/BaseChallengeActivity;)V

    goto :goto_0
.end method
