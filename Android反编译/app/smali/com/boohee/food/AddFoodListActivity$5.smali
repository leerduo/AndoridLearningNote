.class Lcom/boohee/food/AddFoodListActivity$5;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "AddFoodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddFoodListActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddFoodListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddFoodListActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->mFavoriteFragment:Lcom/boohee/food/FavourFoodFragmennt;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$400(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/food/FavourFoodFragmennt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/food/FavourFoodFragmennt;->isFirstLoad:Z

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$500(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_foodandsport_favoritetab"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->mFavoriteFragment:Lcom/boohee/food/FavourFoodFragmennt;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$400(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/food/FavourFoodFragmennt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/food/FavourFoodFragmennt;->firstLoad()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->mCustomFoodFragmennt:Lcom/boohee/food/CustomFoodFragment;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$600(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/food/CustomFoodFragment;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/food/CustomFoodFragment;->isFirstLoad:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$700(Lcom/boohee/food/AddFoodListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_foodandsport_minetab"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$5;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->mCustomFoodFragmennt:Lcom/boohee/food/CustomFoodFragment;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$600(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/food/CustomFoodFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/food/CustomFoodFragment;->firstLoad()V

    goto :goto_0
.end method
