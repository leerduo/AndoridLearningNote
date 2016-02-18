.class public Lcom/boohee/one/ui/SelectStatusActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SelectStatusActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;,
        Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;
    }
.end annotation


# static fields
.field public static final KEY_MEAL_TYPE:Ljava/lang/String; = "meal_type"

.field public static final VAL_BREAKFAST:Ljava/lang/String; = "breakfast"

.field public static final VAL_LUNCH:Ljava/lang/String; = "lunch"

.field public static final VAL_SUPPER:Ljava/lang/String; = "supper"


# instance fields
.field private isFromHead:Z

.field private loadingFooter:Lcom/boohee/widgets/TurboLoadingFooter;

.field private mAdapter:Lcom/boohee/one/ui/adapter/SelectStatusAdapter;

.field private mBean:Lcom/boohee/model/FoodMealDetailBean;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MealBean;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mMealType:Ljava/lang/String;

.field private mPage:I

.field private mStatusCache:Lcom/boohee/one/cache/FileCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->loadingFooter:Lcom/boohee/widgets/TurboLoadingFooter;

    .line 54
    iput v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mPage:I

    .line 55
    iput-boolean v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z

    .line 161
    return-void
.end method

.method static synthetic access$1002(Lcom/boohee/one/ui/SelectStatusActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mPage:I

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/SelectStatusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->loadData()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/model/FoodMealDetailBean;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/SelectStatusActivity;Lcom/boohee/model/FoodMealDetailBean;)Lcom/boohee/model/FoodMealDetailBean;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;
    .param p1, "x1"    # Lcom/boohee/model/FoodMealDetailBean;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/SelectStatusActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z

    return v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/SelectStatusActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mStatusCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/SelectStatusActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/one/ui/adapter/SelectStatusAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectStatusAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/widgets/TurboLoadingFooter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->loadingFooter:Lcom/boohee/widgets/TurboLoadingFooter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/SelectStatusActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->completeRefresh()V

    return-void
.end method

.method private completeRefresh()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 178
    :cond_0
    return-void
.end method

.method private getCacheData()Lcom/boohee/model/FoodMealDetailBean;
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mStatusCache:Lcom/boohee/one/cache/FileCache;

    const-string v2, "key_select_status"

    invoke-virtual {v1, v2}, Lcom/boohee/one/cache/FileCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "responseData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/boohee/model/FoodMealDetailBean;->parse(Ljava/lang/String;)Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mStatusCache:Lcom/boohee/one/cache/FileCache;

    .line 68
    invoke-virtual {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "meal_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->setActionBarTitle()V

    .line 72
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->getCacheData()Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;

    .line 73
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;

    invoke-virtual {v0}, Lcom/boohee/model/FoodMealDetailBean;->getMeals()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/boohee/widgets/TurboLoadingFooter;

    invoke-direct {v0, p0}, Lcom/boohee/widgets/TurboLoadingFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->loadingFooter:Lcom/boohee/widgets/TurboLoadingFooter;

    .line 77
    new-instance v0, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectStatusAdapter;

    .line 78
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 79
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->loadingFooter:Lcom/boohee/widgets/TurboLoadingFooter;

    invoke-virtual {v1}, Lcom/boohee/widgets/TurboLoadingFooter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;

    iget-object v2, p0, Lcom/boohee/one/ui/SelectStatusActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1, v2, v3, v3}, Lcom/nostra13/universalimageloader/core/listener/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;

    invoke-direct {v1, p0, v4}, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;-><init>(Lcom/boohee/one/ui/SelectStatusActivity;Lcom/boohee/one/ui/SelectStatusActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;

    invoke-direct {v1, p0, v4}, Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;-><init>(Lcom/boohee/one/ui/SelectStatusActivity;Lcom/boohee/one/ui/SelectStatusActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectStatusAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private loadData()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "breakfast"

    :goto_0
    iput-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    iget v2, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mPage:I

    new-instance v3, Lcom/boohee/one/ui/SelectStatusActivity$1;

    iget-object v4, p0, Lcom/boohee/one/ui/SelectStatusActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/SelectStatusActivity$1;-><init>(Lcom/boohee/one/ui/SelectStatusActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/StatusApi;->getRecommendedMeals(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    .line 148
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    goto :goto_0
.end method

.method private setActionBarTitle()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "breakfast"

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "\u65e9\u9910\u7cbe\u9009"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectStatusActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "lunch"

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "\u5348\u9910\u7cbe\u9009"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectStatusActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "supper"

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mMealType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "\u665a\u9910\u7cbe\u9009"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectStatusActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectStatusActivity;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->init()V

    .line 63
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectStatusActivity;->loadData()V

    .line 64
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 101
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p0}, Lcom/boohee/utils/AccountUtils;->isVisitorAccount(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-static {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->showVisitorPopWindow(Landroid/content/Context;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p3, v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/MealBean;

    .line 109
    .local v0, "bean":Lcom/boohee/model/MealBean;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/status/CommentListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/boohee/model/MealBean;->getUser_id()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v2, "post_id"

    invoke-virtual {v0}, Lcom/boohee/model/MealBean;->getPost_id()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/SelectStatusActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
