.class public Lcom/boohee/one/mine/McListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "McListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/mine/McListActivity$McListAdaper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private edit:Z

.field private isChecked:Z

.field private listView:Landroid/widget/ListView;

.field private mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;

.field private mcPeriodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/mine/McPeriod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/boohee/one/mine/McListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/mine/McListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/boohee/one/mine/McListActivity;->edit:Z

    .line 32
    iput-boolean v0, p0, Lcom/boohee/one/mine/McListActivity;->isChecked:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/mine/McListActivity;->mcPeriodList:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/mine/McListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->mcPeriodList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/mine/McListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/boohee/one/mine/McListActivity;->mcPeriodList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/mine/McListActivity;)Lcom/boohee/one/mine/McListActivity$McListAdaper;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/mine/McListActivity;Lcom/boohee/one/mine/McListActivity$McListAdaper;)Lcom/boohee/one/mine/McListActivity$McListAdaper;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;
    .param p1, "x1"    # Lcom/boohee/one/mine/McListActivity$McListAdaper;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/mine/McListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/one/mine/McListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/mine/McListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/boohee/one/mine/McListActivity;->edit:Z

    return v0
.end method

.method static synthetic access$300(Lcom/boohee/one/mine/McListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0e04e7

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/mine/McListActivity;->listView:Landroid/widget/ListView;

    .line 45
    return-void
.end method

.method private getList()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/mine/McListActivity$1;

    iget-object v2, p0, Lcom/boohee/one/mine/McListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/mine/McListActivity$1;-><init>(Lcom/boohee/one/mine/McListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getMcPeriods(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030191

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McListActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0701d1

    invoke-virtual {p0, v0}, Lcom/boohee/one/mine/McListActivity;->setTitle(I)V

    .line 39
    invoke-direct {p0}, Lcom/boohee/one/mine/McListActivity;->findView()V

    .line 40
    invoke-direct {p0}, Lcom/boohee/one/mine/McListActivity;->getList()V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 49
    const/4 v0, 0x0

    const-string v1, "\u7f16\u8f91"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 50
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 56
    iget-boolean v1, p0, Lcom/boohee/one/mine/McListActivity;->isChecked:Z

    if-nez v1, :cond_1

    .line 57
    const-string v1, "\u53d6\u6d88"

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 58
    iput-boolean v0, p0, Lcom/boohee/one/mine/McListActivity;->isChecked:Z

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;

    iget-boolean v2, p0, Lcom/boohee/one/mine/McListActivity;->isChecked:Z

    invoke-virtual {v1, v2}, Lcom/boohee/one/mine/McListActivity$McListAdaper;->setEdit(Z)V

    .line 66
    iget-object v1, p0, Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;

    invoke-virtual {v1}, Lcom/boohee/one/mine/McListActivity$McListAdaper;->notifyDataSetChanged()V

    .line 70
    :cond_0
    :goto_1
    return v0

    .line 60
    :cond_1
    const-string v1, "\u7f16\u8f91"

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/one/mine/McListActivity;->isChecked:Z

    goto :goto_0

    .line 70
    :cond_2
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method
