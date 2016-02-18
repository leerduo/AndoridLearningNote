.class public Lcom/boohee/one/ui/CouponActivity;
.super Lcom/boohee/myview/swipeback/SwipeBackActivity;
.source "CouponActivity.java"


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/adapter/CouponListAdapter;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private tvNoCoupon:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/myview/swipeback/SwipeBackActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/CouponActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CouponActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/CouponActivity;)Lcom/boohee/one/ui/adapter/CouponListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/CouponActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mAdapter:Lcom/boohee/one/ui/adapter/CouponListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/CouponActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CouponActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/CouponActivity;->showContent(Z)V

    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f0e010c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->tvNoCoupon:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0e010d

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CouponActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mListView:Landroid/widget/ListView;

    .line 71
    new-instance v0, Lcom/boohee/one/ui/adapter/CouponListAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/CouponActivity;->mDatas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/adapter/CouponListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mAdapter:Lcom/boohee/one/ui/adapter/CouponListAdapter;

    .line 72
    iget-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/CouponActivity;->mAdapter:Lcom/boohee/one/ui/adapter/CouponListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/CouponActivity;->showContent(Z)V

    .line 75
    return-void
.end method

.method private loadData()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/boohee/one/ui/CouponActivity;->showLoading()V

    .line 79
    new-instance v0, Lcom/boohee/one/ui/CouponActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/ui/CouponActivity$1;-><init>(Lcom/boohee/one/ui/CouponActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getCoupons(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 98
    return-void
.end method

.method private showContent(Z)V
    .locals 4
    .param p1, "showContent"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 101
    iget-object v3, p0, Lcom/boohee/one/ui/CouponActivity;->tvNoCoupon:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/CouponActivity;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 103
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v2, v1

    .line 102
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/boohee/myview/swipeback/SwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/CouponActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/boohee/one/ui/CouponActivity;->findView()V

    .line 43
    invoke-direct {p0}, Lcom/boohee/one/ui/CouponActivity;->loadData()V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/boohee/one/ui/CouponActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :goto_0
    return v1

    .line 57
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Lcom/boohee/myview/swipeback/SwipeBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 59
    :pswitch_0
    const-string v2, "/api/v1/coupon_code_redeems/new"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/one/ui/CouponActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v5}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/one/http/client/StatusClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/CouponActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const v3, 0x7f07054e

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0e07cb
        :pswitch_0
    .end packed-switch
.end method
