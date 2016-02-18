.class public Lcom/boohee/one/ui/UserGuideRecomandActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "UserGuideRecomandActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;,
        Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;

.field private chosenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private li:Landroid/view/LayoutInflater;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mFriendsUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/UserGuideRecomandActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/UserGuideRecomandActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->adapter:Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/UserGuideRecomandActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->li:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0e0265

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;-><init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;-><init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0e0264

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->listView:Landroid/widget/ListView;

    .line 56
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 119
    iput-object p0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->li:Landroid/view/LayoutInflater;

    .line 121
    new-instance v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;-><init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->adapter:Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;

    .line 122
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->adapter:Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->loadMoreData()V

    .line 124
    return-void
.end method

.method private loadMoreData()V
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "json":Ljava/lang/String;
    const/4 v2, 0x0

    .line 130
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mContext:Landroid/content/Context;

    const-string v4, "\u83b7\u53d6\u6570\u636e\u5931\u8d25\u8bf7\u91cd\u8bd5\uff01"

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e1":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    .end local v0    # "e1":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->showLoading()V

    .line 141
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v4, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;

    iget-object v5, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;-><init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/boohee/api/OneApi;->getUserRecommended(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private postAction()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->finish()V

    .line 192
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03008d

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->setContentView(I)V

    .line 48
    const-string v0, "\u4e3a\u4f60\u63a8\u8350"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->findView()V

    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->addListener()V

    .line 51
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->init()V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 170
    const/4 v0, 0x0

    const-string v1, "\u8df3\u8fc7"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->postAction()V

    .line 184
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 180
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->finish()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
