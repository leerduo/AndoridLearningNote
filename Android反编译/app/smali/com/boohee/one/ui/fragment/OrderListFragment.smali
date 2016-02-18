.class public Lcom/boohee/one/ui/fragment/OrderListFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "OrderListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/boohee/uchoice/OrderListAdapter$onPayListener;
.implements Lcom/boohee/one/pay/PayService$OnFinishPayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;
    }
.end annotation


# static fields
.field public static KEY_LAST_PAGE:Ljava/lang/String;

.field public static KEY_PAGE:Ljava/lang/String;

.field public static KEY_STATE_TYPE:Ljava/lang/String;

.field public static REQ_DEL:I


# instance fields
.field private mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

.field private mLastPage:I

.field private mListView:Landroid/widget/ListView;

.field private mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Order;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mStateType:Ljava/lang/String;

.field private rl_cart_hint:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "key_state_type"

    sput-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_STATE_TYPE:Ljava/lang/String;

    .line 54
    const-string v0, "key_page"

    sput-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_PAGE:Ljava/lang/String;

    .line 55
    const-string v0, "key_last_page"

    sput-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_LAST_PAGE:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->REQ_DEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    .line 65
    iget v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/OrderListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/OrderListFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->pullLoadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/OrderListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/OrderListFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/OrderListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/OrderListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/OrderListFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/OrderListFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/OrderListFragment;->handleOrders(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/OrderListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/OrderListFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->handleError()V

    return-void
.end method

.method private handleError()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->isLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    .line 308
    :cond_0
    return-void
.end method

.method private handleOrders(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 278
    invoke-static {p1}, Lcom/boohee/model/Order;->parseOrders(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 279
    .local v0, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Order;>;"
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->isLoadMore()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {v1}, Lcom/boohee/uchoice/OrderListAdapter;->notifyDataSetChanged()V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 290
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {v1}, Lcom/boohee/uchoice/OrderListAdapter;->notifyDataSetChanged()V

    .line 291
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->rl_cart_hint:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 295
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {v1}, Lcom/boohee/uchoice/OrderListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    new-instance v1, Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2, v3, v0}, Lcom/boohee/uchoice/OrderListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/boohee/one/ui/BaseActivity;)V

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    .line 187
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {v0, p0}, Lcom/boohee/uchoice/OrderListAdapter;->setOnPayListener(Lcom/boohee/uchoice/OrderListAdapter$onPayListener;)V

    .line 188
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->initRefreshView()V

    .line 190
    return-void
.end method

.method private initRefreshView()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/OrderListFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/OrderListFragment$1;-><init>(Lcom/boohee/one/ui/fragment/OrderListFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 200
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/fragment/OrderListFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/OrderListFragment$2;-><init>(Lcom/boohee/one/ui/fragment/OrderListFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 206
    return-void
.end method

.method private isLoadMore()Z
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    iget v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadData()V
    .locals 5

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mStateType:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/fragment/OrderListFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/fragment/OrderListFragment$4;-><init>(Lcom/boohee/one/ui/fragment/OrderListFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/ShopApi;->getOrders(Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private loadMoreData()V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    .line 236
    iget v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    .line 237
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->loadData()V

    .line 238
    return-void
.end method

.method public static newInstance(Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;)Lcom/boohee/one/ui/fragment/OrderListFragment;
    .locals 4
    .param p0, "stateType"    # Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;

    .prologue
    .line 74
    new-instance v0, Lcom/boohee/one/ui/fragment/OrderListFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/OrderListFragment;-><init>()V

    .line 75
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/OrderListFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v1, "params":Landroid/os/Bundle;
    sget-object v2, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_STATE_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/OrderListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v0
.end method

.method private pullLoadData()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    .line 227
    iget v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    .line 228
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->loadData()V

    .line 229
    return-void
.end method


# virtual methods
.method public initLoadData()V
    .locals 4

    .prologue
    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/fragment/OrderListFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/OrderListFragment$3;-><init>(Lcom/boohee/one/ui/fragment/OrderListFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    sget-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_STATE_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mStateType:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    .line 109
    sget-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_LAST_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->init()V

    .line 112
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    if-ne p2, v2, :cond_0

    sget v1, Lcom/boohee/one/ui/fragment/OrderListFragment;->REQ_DEL:I

    if-ne p1, v1, :cond_0

    .line 155
    const-string v1, "index"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "index":I
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mAdapter:Lcom/boohee/uchoice/OrderListAdapter;

    invoke-virtual {v1}, Lcom/boohee/uchoice/OrderListAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->rl_cart_hint:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->rl_cart_hint:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 165
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_STATE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mStateType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v2, "onnewintent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 148
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    const v0, 0x7f0300eb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v0, p3, -0x1

    .line 128
    .local v0, "index":I
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Order;

    iget-object v2, v2, Lcom/boohee/model/Order;->state:Ljava/lang/String;

    sget-object v3, Lcom/boohee/model/UchoiceOrder;->CANCELED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Order;

    iget-object v2, v2, Lcom/boohee/model/Order;->state:Ljava/lang/String;

    sget-object v3, Lcom/boohee/model/UchoiceOrder;->EXPIRED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Order;

    iget-object v2, v2, Lcom/boohee/model/Order;->type:Ljava/lang/String;

    const-string v3, "GoodsOrder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "order_id"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mOrders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Order;

    iget v2, v2, Lcom/boohee/model/Order;->id:I

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    sget v2, Lcom/boohee/one/ui/fragment/OrderListFragment;->REQ_DEL:I

    invoke-virtual {p0, v1, v2}, Lcom/boohee/one/ui/fragment/OrderListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onPayFinished()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onPaySuccess()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/boohee/uchoice/PaySuccessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "outState":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .restart local p1    # "outState":Landroid/os/Bundle;
    :cond_0
    sget-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_STATE_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mStateType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_PAGE:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/boohee/one/ui/fragment/OrderListFragment;->KEY_LAST_PAGE:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mLastPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f0e0358

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mRefreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mListView:Landroid/widget/ListView;

    .line 98
    const v0, 0x7f0e0355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->rl_cart_hint:Landroid/widget/RelativeLayout;

    .line 99
    const v0, 0x7f0e0357

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/OrderListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    return-void
.end method

.method public payListener(I)V
    .locals 2
    .param p1, "order_id"    # I

    .prologue
    .line 169
    new-instance v0, Lcom/boohee/one/pay/PayService;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/one/pay/PayService;-><init>(Landroid/app/Activity;)V

    .line 170
    .local v0, "service":Lcom/boohee/one/pay/PayService;
    invoke-virtual {v0, p0}, Lcom/boohee/one/pay/PayService;->setOnFinishPayLinstener(Lcom/boohee/one/pay/PayService$OnFinishPayListener;)V

    .line 171
    invoke-virtual {v0, p1}, Lcom/boohee/one/pay/PayService;->startPayWithDialog(I)V

    .line 172
    return-void
.end method
