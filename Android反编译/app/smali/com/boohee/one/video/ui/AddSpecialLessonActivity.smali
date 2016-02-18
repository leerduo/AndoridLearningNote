.class public Lcom/boohee/one/video/ui/AddSpecialLessonActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddSpecialLessonActivity.java"


# static fields
.field public static final REFRESH_ADD_SPECIAL:Ljava/lang/String; = "refresh_add_special"


# instance fields
.field private adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

.field private joinedIds:Lorg/json/JSONArray;

.field pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cf
    .end annotation
.end field

.field private specialTrains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/SpecialTrain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->specialTrains:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->loadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/AddSpecialLessonActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    :try_start_0
    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->specialTrains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 88
    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->specialTrains:Ljava/util/List;

    const-string v5, "trainings"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/boohee/one/video/entity/SpecialTrain;

    invoke-static {v5, v6}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    const-string v4, "joined_ids"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->joinedIds:Lorg/json/JSONArray;

    .line 90
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->joinedIds:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->specialTrains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->specialTrains:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/video/entity/SpecialTrain;

    .line 93
    .local v3, "specialTrain":Lcom/boohee/one/video/entity/SpecialTrain;
    iget v5, v3, Lcom/boohee/one/video/entity/SpecialTrain;->id:I

    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->joinedIds:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 94
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/boohee/one/video/entity/SpecialTrain;->isJioned:Z

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    .end local v3    # "specialTrain":Lcom/boohee/one/video/entity/SpecialTrain;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    invoke-virtual {v4}, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2    # "j":I
    :goto_2
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$1;-><init>(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 65
    iget-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "/api/v1/trainings"

    new-instance v1, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;

    iget-object v2, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;-><init>(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 51
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 52
    new-instance v0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->specialTrains:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    .line 53
    invoke-direct {p0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->loadData()V

    .line 55
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->showLoading()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 118
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "refresh_add_special"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->loadData()V

    .line 113
    :cond_0
    return-void
.end method
