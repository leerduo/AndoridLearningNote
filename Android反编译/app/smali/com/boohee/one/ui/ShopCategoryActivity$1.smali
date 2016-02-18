.class Lcom/boohee/one/ui/ShopCategoryActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ShopCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ShopCategoryActivity;->initViewPager(Lcom/boohee/model/ShopList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ShopCategoryActivity;

.field final synthetic val$fragmentAdapter:Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ShopCategoryActivity;Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/boohee/one/ui/ShopCategoryActivity$1;->this$0:Lcom/boohee/one/ui/ShopCategoryActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/ShopCategoryActivity$1;->val$fragmentAdapter:Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/boohee/one/ui/ShopCategoryActivity$1;->val$fragmentAdapter:Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/boohee/one/ui/adapter/BaseFragmentPagerAdapter;->getItem(I)Lcom/boohee/one/ui/fragment/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;

    .line 85
    .local v0, "shopLabelFragment":Lcom/boohee/one/ui/fragment/ShopCategoryFragment;
    if-nez p1, :cond_1

    iget-boolean v1, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->isFirstLoad:Z

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->loadAll()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v1, v0, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->isFirstLoad:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/ShopCategoryFragment;->loadFirst()V

    goto :goto_0
.end method
