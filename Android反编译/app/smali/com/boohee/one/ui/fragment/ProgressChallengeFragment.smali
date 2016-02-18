.class public Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;
.super Lcom/boohee/one/ui/fragment/BaseChallegeFragment;
.source "ProgressChallengeFragment.java"


# instance fields
.field private addGambligWeightFragment:Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;

.field refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e035b
    .end annotation
.end field

.field private scrollView:Landroid/widget/ScrollView;

.field private scrollViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->scrollViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->loadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;)Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->addGambligWeightFragment:Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;)Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;
    .param p1, "x1"    # Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->addGambligWeightFragment:Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;

    return-object p1
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    new-instance v1, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment$1;-><init>(Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 70
    return-void
.end method

.method private loadData()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public static newInstance(I)Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;
    .locals 3
    .param p0, "challengeId"    # I

    .prologue
    .line 41
    new-instance v1, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;-><init>()V

    .line 42
    .local v1, "fragment":Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "challenge_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment$3;-><init>(Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 101
    const-string v0, "\u8fdb\u5c55"

    return-object v0
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->scrollViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/ScrollViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/ScrollView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->scrollView:Landroid/widget/ScrollView;

    .line 60
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->initView()V

    .line 61
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->addGambligWeightFragment:Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->addGambligWeightFragment:Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/AddGambligWeightFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->onDestroyView()V

    .line 132
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public refreshBaseView()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseChallegeFragment;->refreshBaseView()V

    .line 79
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseChallengeActivity;

    .line 83
    .local v0, "activity":Lcom/boohee/one/ui/BaseChallengeActivity;
    const-string v1, "\u6211\u8981\u62a5\u4f53\u91cd"

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextView(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v1, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/ProgressChallengeFragment$2;-><init>(Lcom/boohee/one/ui/fragment/ProgressChallengeFragment;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseChallengeActivity;->setBottomTextClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
