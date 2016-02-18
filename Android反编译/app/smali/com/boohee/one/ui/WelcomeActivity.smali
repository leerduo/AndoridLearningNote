.class public Lcom/boohee/one/ui/WelcomeActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Story;",
            ">;"
        }
    .end annotation
.end field

.field private mclvStory:Lcom/huewu/pla/lib/MultiColumnListView;

.field private viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mDataList:Ljava/util/List;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/WelcomeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WelcomeActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/WelcomeActivity;)Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WelcomeActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mAdapter:Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/WelcomeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WelcomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WelcomeActivity;->setRefresh(Z)V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    if-eqz p0, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 161
    :cond_0
    return-void
.end method

.method private requestJson()V
    .locals 4

    .prologue
    .line 50
    const-string v1, "http://shop.boohee.com/store/pages/story_json"

    .line 51
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    new-instance v2, Lcom/boohee/one/ui/WelcomeActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/WelcomeActivity$1;-><init>(Lcom/boohee/one/ui/WelcomeActivity;)V

    new-instance v3, Lcom/boohee/one/ui/WelcomeActivity$2;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/WelcomeActivity$2;-><init>(Lcom/boohee/one/ui/WelcomeActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 78
    .local v0, "request":Lcom/android/volley/toolbox/StringRequest;
    invoke-static {v0, p0}, Lcom/boohee/one/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 79
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/boohee/one/ui/WelcomeActivity;->setRefresh(Z)V

    .line 80
    return-void
.end method

.method private setRefresh(Z)V
    .locals 2
    .param p1, "refreshing"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/boohee/one/ui/WelcomeActivity;->finish()V

    .line 166
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 145
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->comeOnBaby(ZLandroid/app/Activity;)V

    goto :goto_0

    .line 149
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->comeOnBaby(ZLandroid/app/Activity;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0e057b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/WelcomeActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->viewSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/boohee/one/ui/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 42
    const v0, 0x7f0e027c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/huewu/pla/lib/MultiColumnListView;

    iput-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mclvStory:Lcom/huewu/pla/lib/MultiColumnListView;

    .line 43
    new-instance v0, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/WelcomeActivity;->mDataList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;-><init>(Lcom/boohee/one/ui/WelcomeActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mAdapter:Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mclvStory:Lcom/huewu/pla/lib/MultiColumnListView;

    iget-object v1, p0, Lcom/boohee/one/ui/WelcomeActivity;->mAdapter:Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/MultiColumnListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/WelcomeActivity;->requestJson()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/boohee/one/ui/WelcomeActivity;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/boohee/one/ui/WelcomeActivity;->requestJson()V

    .line 92
    return-void
.end method
