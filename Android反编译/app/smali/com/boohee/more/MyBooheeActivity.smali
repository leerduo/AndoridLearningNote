.class public Lcom/boohee/more/MyBooheeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "MyBooheeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final ICON_IDS:[I

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/MsgCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/boohee/more/MyBooheeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/MyBooheeActivity;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/more/MyBooheeActivity;->ICON_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0201e3
        0x7f0201ac
        0x7f020287
        0x7f020286
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/boohee/more/MyBooheeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/more/MyBooheeActivity;->mListView:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/boohee/more/MyBooheeActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method

.method private initData()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/boohee/more/MyBooheeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "mTitles":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mCategories:Ljava/util/ArrayList;

    .line 62
    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/more/MyBooheeActivity;->ICON_IDS:[I

    aget v3, v3, v4

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/more/MyBooheeActivity;->ICON_IDS:[I

    aget v3, v3, v5

    aget-object v4, v0, v5

    invoke-direct {v2, v3, v4}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/more/MyBooheeActivity;->ICON_IDS:[I

    aget v3, v3, v6

    aget-object v4, v0, v6

    invoke-direct {v2, v3, v4}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mCategories:Ljava/util/ArrayList;

    new-instance v2, Lcom/boohee/model/MsgCategory;

    sget-object v3, Lcom/boohee/more/MyBooheeActivity;->ICON_IDS:[I

    aget v3, v3, v7

    aget-object v4, v0, v7

    invoke-direct {v2, v3, v4}, Lcom/boohee/model/MsgCategory;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    iget-object v2, p0, Lcom/boohee/more/MyBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/more/MyBooheeActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    .line 67
    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/more/MyBooheeActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/boohee/more/MyBooheeActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f0703a5

    invoke-virtual {p0, v0}, Lcom/boohee/more/MyBooheeActivity;->setTitle(I)V

    .line 50
    invoke-direct {p0}, Lcom/boohee/more/MyBooheeActivity;->findViews()V

    .line 51
    invoke-direct {p0}, Lcom/boohee/more/MyBooheeActivity;->initData()V

    .line 52
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x0

    .line 72
    packed-switch p3, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 74
    :pswitch_0
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/account/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v0, "mine_clickThinPlan"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/boohee/utils/AccountUtils;->isVisitorAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0}, Lcom/boohee/widgets/CheckAccountPopwindow;->showVisitorPopWindow(Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    const-string v2, "/api/v1/milestones/free_gate?token=%1$s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/one/http/client/StatusClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    const-string v1, "title"

    const v2, 0x7f070248

    invoke-virtual {p0, v2}, Lcom/boohee/more/MyBooheeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "mine_clickMyTimeline"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/status/MyTimelineActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 93
    :pswitch_3
    const-string v0, "mine_clickFriendPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/status/FriendShipActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, v5}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;I)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "mine_clickOrderPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/more/MyBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto/16 :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
