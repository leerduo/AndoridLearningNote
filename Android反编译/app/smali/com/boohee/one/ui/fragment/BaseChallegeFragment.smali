.class public abstract Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "BaseChallegeFragment.java"

# interfaces
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ScrollableListener;


# static fields
.field public static final CHALLENGE_ID:Ljava/lang/String; = "challenge_id"

.field public static final CHALLENGE_NAME:Ljava/lang/String; = "challenge_name"


# instance fields
.field public isFirstLoad:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->isFirstLoad:Z

    return-void
.end method


# virtual methods
.method public abstract firstLoad()V
.end method

.method public abstract getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
.end method

.method public refreshBaseView()V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 35
    .local v0, "activity":Lcom/boohee/one/ui/BaseChallengeActivity;
    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextGone()V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setHeaderInfoVisible(I)V

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
