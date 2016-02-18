.class public Lcom/boohee/one/ui/MilestoneActivity;
.super Lcom/boohee/main/GestureActivity;
.source "MilestoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;,
        Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

.field private mListView:Landroid/widget/ListView;

.field private stones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Milestone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/boohee/one/ui/MilestoneActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/MilestoneActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MilestoneActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/MilestoneActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MilestoneActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/MilestoneActivity;)Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MilestoneActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->mAdapter:Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/MilestoneActivity;Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;)Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/MilestoneActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/boohee/one/ui/MilestoneActivity;->mAdapter:Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/MilestoneActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/MilestoneActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private requestData()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/MilestoneActivity$3;

    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/MilestoneActivity$3;-><init>(Lcom/boohee/one/ui/MilestoneActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->getMileStonesFullMenu(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 124
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/boohee/one/ui/MilestoneActivity;->showLoading()V

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/MilestoneActivity$2;

    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/MilestoneActivity$2;-><init>(Lcom/boohee/one/ui/MilestoneActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->deleteMileStonesReset(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MilestoneActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0701e5

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MilestoneActivity;->setTitle(I)V

    .line 55
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/MilestoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->mListView:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0e01b2

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/MilestoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/MilestoneActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/MilestoneActivity$1;-><init>(Lcom/boohee/one/ui/MilestoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/boohee/one/ui/MilestoneActivity;->requestData()V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 75
    const/4 v0, 0x0

    const-string v1, "\u5168\u90e8\u91cd\u7f6e"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 76
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/boohee/one/ui/MilestoneActivity;->reset()V

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
