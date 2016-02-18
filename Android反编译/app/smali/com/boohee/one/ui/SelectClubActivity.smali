.class public Lcom/boohee/one/ui/SelectClubActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "SelectClubActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_CLUBS:Ljava/lang/String; = "key_clubs"

.field public static final KEY_REQUEST_CODE:I = 0x1a2b

.field private static final SPAN_COUNT:I = 0x3

.field private static mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;

.field private mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mSelectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation
.end field

.field private rvContent:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/SelectClubActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectClubActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectClubActivity;->initSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/SelectClubActivity;)Lcom/boohee/one/ui/adapter/SelectClubAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectClubActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/SelectClubActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SelectClubActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    return-object v0
.end method

.method public static comeOnBaby(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/boohee/one/ui/SelectClubActivity;->comeOnBaby(Landroid/app/Activity;Lorg/json/JSONArray;)V

    .line 165
    return-void
.end method

.method public static comeOnBaby(Landroid/app/Activity;Lorg/json/JSONArray;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 168
    if-eqz p0, :cond_1

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/SelectClubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 171
    const-string v2, "key_clubs"

    instance-of v1, p1, Lorg/json/JSONArray;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_0
    const/16 v1, 0x1a2b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    if-nez p1, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move-object v1, p1

    .line 171
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/boohee/one/ui/SelectClubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_clubs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "clubsString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {v0}, Lcom/boohee/model/club/Club;->parseClubs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    .line 62
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectClubActivity;->initSelected()V

    goto :goto_0
.end method

.method private initSelected()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->setSelectData(Ljava/util/List;)V

    .line 97
    :cond_0
    return-void
.end method

.method private requestData()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/boohee/one/ui/SelectClubActivity;->showLoading()V

    .line 67
    const-string v0, "/api/v1/clubs"

    new-instance v1, Lcom/boohee/one/ui/SelectClubActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/SelectClubActivity$1;-><init>(Lcom/boohee/one/ui/SelectClubActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onBackPressed()V

    .line 127
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/boohee/one/ui/SelectClubActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const v3, 0x7f0704a7

    invoke-static {v2, v3}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 115
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const v2, 0x7f0704a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 116
    const v2, 0x7f0704a9

    new-instance v3, Lcom/boohee/one/ui/SelectClubActivity$2;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/SelectClubActivity$2;-><init>(Lcom/boohee/one/ui/SelectClubActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 123
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v0    # "dialog":Lcom/boohee/widgets/LightAlertDialog;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v5, p0, Lcom/boohee/one/ui/SelectClubActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->getSelectData()Ljava/util/Set;

    move-result-object v2

    .line 132
    .local v2, "clubSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/boohee/model/club/Club;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 133
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 134
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/club/Club;

    .line 135
    .local v1, "club":Lcom/boohee/model/club/Club;
    iget v5, v1, Lcom/boohee/model/club/Club;->id:I

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 137
    .end local v1    # "club":Lcom/boohee/model/club/Club;
    :cond_0
    new-instance v4, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v4}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 138
    .local v4, "params":Lcom/boohee/one/http/JsonParams;
    const-string v5, "club_ids"

    invoke-virtual {v4, v5, v0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 139
    const-string v5, "/api/v1/club_members"

    new-instance v6, Lcom/boohee/one/ui/SelectClubActivity$3;

    invoke-direct {v6, p0, p0}, Lcom/boohee/one/ui/SelectClubActivity$3;-><init>(Lcom/boohee/one/ui/SelectClubActivity;Landroid/content/Context;)V

    invoke-static {v5, v4, v6, p0}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 161
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "params":Lcom/boohee/one/http/JsonParams;
    :goto_1
    return-void

    .line 160
    :cond_1
    const v5, 0x7f0704a8

    invoke-static {v5}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030074

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectClubActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectClubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0e0209

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SelectClubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->rvContent:Landroid/support/v7/widget/RecyclerView;

    .line 46
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 47
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubActivity;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance v0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    sget-object v1, Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    .line 49
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 51
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectClubActivity;->handleIntent()V

    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/SelectClubActivity;->requestData()V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 103
    sget-object v0, Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    return-void
.end method
