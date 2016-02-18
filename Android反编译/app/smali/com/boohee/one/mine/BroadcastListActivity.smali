.class public Lcom/boohee/one/mine/BroadcastListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "BroadcastListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Broadcast;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/boohee/one/mine/BroadcastListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/mine/BroadcastListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/mine/BroadcastListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/BroadcastListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/mine/BroadcastListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/BroadcastListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/mine/BroadcastListActivity;)Lcom/boohee/one/ui/adapter/BroadcastAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/BroadcastListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/mine/BroadcastListActivity;Lcom/boohee/one/ui/adapter/BroadcastAdapter;)Lcom/boohee/one/ui/adapter/BroadcastAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/BroadcastListActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/mine/BroadcastListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/BroadcastListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/mine/BroadcastListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/BroadcastListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private allReaded()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/mine/BroadcastListActivity$2;

    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/mine/BroadcastListActivity$2;-><init>(Lcom/boohee/one/mine/BroadcastListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->clearBroadcasts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 101
    return-void
.end method

.method private getBroadcasts()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/mine/BroadcastListActivity$1;

    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/mine/BroadcastListActivity$1;-><init>(Lcom/boohee/one/mine/BroadcastListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getBroadcasts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/BroadcastListActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f070120

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/BroadcastListActivity;->setTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->finder:Lcom/boohee/utils/ViewFinder;

    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Lcom/boohee/utils/ViewFinder;->find(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mListView:Landroid/widget/ListView;

    .line 50
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/boohee/one/mine/BroadcastListActivity;->getBroadcasts()V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 74
    const/4 v0, 0x0

    const v1, 0x7f0700d7

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    return v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 105
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->ctx:Landroid/content/Context;

    const-string v1, "other_viewBroadcastsContent"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Broadcast;

    iput-boolean v6, v0, Lcom/boohee/model/status/Broadcast;->read:Z

    .line 107
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v1, v0, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    const-string v0, "/api/v1/broadcasts/%1$d?token=%2$s"

    invoke-static {v0}, Lcom/boohee/one/http/client/OneClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Broadcast;

    iget v0, v0, Lcom/boohee/model/status/Broadcast;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "\u5e7f\u64ad\u8be6\u7ec6"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/boohee/one/mine/BroadcastListActivity;->allReaded()V

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/BroadcastAdapter;->notifyDataSetChanged()V

    .line 58
    :cond_0
    return-void
.end method
