.class Lcom/boohee/one/ui/BaseChallengeActivity$2;
.super Ljava/lang/Object;
.source "BaseChallengeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BaseChallengeActivity;->initView()V
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
    .line 183
    iput-object p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$2;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$2;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$2;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentPagerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$2;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BaseChallengeActivity;->adapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    .line 188
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 189
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$2;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    # setter for: Lcom/boohee/one/ui/BaseChallengeActivity;->currentFragment:Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->access$102(Lcom/boohee/one/ui/BaseChallengeActivity;Lcom/boohee/one/ui/fragment/BaseChallegeFragment;)Lcom/boohee/one/ui/fragment/BaseChallegeFragment;

    .line 190
    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$2;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    # invokes: Lcom/boohee/one/ui/BaseChallengeActivity;->refreshPagerBottomMargin()V
    invoke-static {v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->access$200(Lcom/boohee/one/ui/BaseChallengeActivity;)V

    .line 191
    iput-boolean v2, v0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->isFirstLoad:Z

    .line 193
    .end local v0    # "fragment":Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
    :cond_0
    return-void
.end method
