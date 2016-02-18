.class public Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "SpecialTrainPlanFragment.java"


# static fields
.field public static final REFRESH_SPECIAL_TRAIN:Ljava/lang/String; = "special_train_refresh"


# instance fields
.field private adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

.field addLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0305
    .end annotation
.end field

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
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->specialTrains:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->loadData()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->specialTrains:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 117
    :try_start_0
    iget-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->specialTrains:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 118
    const-string v5, "trainings"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/boohee/one/video/entity/SpecialTrain;

    invoke-static {v5, v6}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "allTrains":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/SpecialTrain;>;"
    const-string v5, "joined_ids"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->joinedIds:Lorg/json/JSONArray;

    .line 120
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->joinedIds:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 122
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/SpecialTrain;

    .line 123
    .local v4, "specialTrain":Lcom/boohee/one/video/entity/SpecialTrain;
    iget v6, v4, Lcom/boohee/one/video/entity/SpecialTrain;->id:I

    iget-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->joinedIds:Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_0

    .line 124
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/boohee/one/video/entity/SpecialTrain;->isJioned:Z

    .line 125
    iget-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->specialTrains:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->specialTrains:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    .end local v4    # "specialTrain":Lcom/boohee/one/video/entity/SpecialTrain;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "allTrains":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/SpecialTrain;>;"
    .end local v3    # "j":I
    :goto_2
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 72
    iget-object v3, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v4, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment$1;

    invoke-direct {v4, p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment$1;-><init>(Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;)V

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300ca

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "footerView":Landroid/view/View;
    const v3, 0x7f0e01f9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "tvTips":Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    const v3, 0x7f0e0306

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, "tvBottom":Landroid/widget/TextView;
    new-instance v3, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment$2;

    invoke-direct {v3, p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment$2;-><init>(Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v3, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 93
    iget-object v3, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v4, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 97
    const-string v0, "/api/v1/trainings"

    new-instance v1, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment$3;-><init>(Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0306
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->comeOn(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x7f0e0306
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 58
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 163
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "special_train_refresh"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->loadData()V

    .line 158
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->specialTrains:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->adapter:Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    .line 66
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->initView()V

    .line 67
    invoke-direct {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->loadData()V

    .line 68
    invoke-virtual {p0}, Lcom/boohee/one/video/fragment/SpecialTrainPlanFragment;->showLoading()V

    .line 69
    return-void
.end method
