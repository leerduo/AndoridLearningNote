.class public Lcom/boohee/one/ui/ShopCategoryActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "ShopCategoryActivity.java"


# static fields
.field public static final EXTRA_LABEL_id:Ljava/lang/String; = "extra_label_id"


# instance fields
.field private labelId:I

.field mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ca
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ShopCategoryActivity;Lcom/boohee/model/ShopList;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ShopCategoryActivity;
    .param p1, "x1"    # Lcom/boohee/model/ShopList;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ShopCategoryActivity;->initViewPager(Lcom/boohee/model/ShopList;)V

    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/boohee/one/ui/ShopCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_label_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->labelId:I

    .line 116
    return-void
.end method

.method private initViewPager(Lcom/boohee/model/ShopList;)V
    .locals 7
    .param p1, "shopList"    # Lcom/boohee/model/ShopList;

    .prologue
    const/4 v6, 0x1

    .line 58
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v4, p1, Lcom/boohee/model/ShopList;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    iget-object v4, p1, Lcom/boohee/model/ShopList;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/boohee/one/ui/ShopCategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    :cond_2
    iget-object v3, p1, Lcom/boohee/model/ShopList;->sub_labels:Ljava/util/List;

    .line 63
    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Label;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 64
    new-instance v0, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/ShopCategoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 65
    .local v0, "fragmentAdapter":Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Label;

    .line 67
    .local v2, "label":Lcom/boohee/model/Label;
    if-nez v1, :cond_3

    .line 68
    iget v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->labelId:I

    iget v5, v2, Lcom/boohee/model/Label;->id:I

    invoke-static {v4, v5, p1}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->newInstance(IILcom/boohee/model/ShopList;)Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    move-result-object v4

    iget-object v5, v2, Lcom/boohee/model/Label;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;Ljava/lang/String;)V

    .line 65
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_3
    iget v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->labelId:I

    iget v5, v2, Lcom/boohee/model/Label;->id:I

    invoke-static {v4, v5}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->newInstance(II)Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    move-result-object v4

    iget-object v5, v2, Lcom/boohee/model/Label;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->addFragment(Lcom/boohee/one/ui/fragment/BaseFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 73
    .end local v2    # "label":Lcom/boohee/model/Label;
    :cond_4
    iget-object v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    iget-object v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 75
    iget-object v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v5, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 76
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_6

    .line 77
    iget-object v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setVisibility(I)V

    .line 81
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    new-instance v5, Lcom/boohee/one/ui/ShopCategoryActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/boohee/one/ui/ShopCategoryActivity$1;-><init>(Lcom/boohee/one/ui/ShopCategoryActivity;Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;)V

    invoke-virtual {v4, v5}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 78
    :cond_6
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 79
    iget-object v4, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setVisibility(I)V

    goto :goto_3
.end method

.method private requestLabelList()V
    .locals 3

    .prologue
    .line 98
    iget v0, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->labelId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->labelId:I

    iget-object v1, p0, Lcom/boohee/one/ui/ShopCategoryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/ShopCategoryActivity$2;

    invoke-direct {v2, p0, p0}, Lcom/boohee/one/ui/ShopCategoryActivity$2;-><init>(Lcom/boohee/one/ui/ShopCategoryActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ShopApi;->getCatetgories(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label_id"    # I

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ShopCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "extra_label_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030077

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ShopCategoryActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/ShopCategoryActivity;->handleIntent()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/ShopCategoryActivity;->requestLabelList()V

    .line 55
    return-void
.end method
