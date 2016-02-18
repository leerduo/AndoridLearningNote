.class public Lcom/boohee/one/video/ui/SportPlanActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SportPlanActivity.java"


# static fields
.field public static final REFRESH_SPORT_PLAN:Ljava/lang/String; = "refresh_sport_plan"


# instance fields
.field private adapter:Lcom/boohee/one/video/adapter/SportPlanAdapter;

.field private completedImg:Landroid/widget/ImageView;

.field protected fileCache:Lcom/boohee/one/cache/FileCache;

.field private headerView:Landroid/view/View;

.field private numberLayout:Landroid/widget/LinearLayout;

.field pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private sportPlan:Lcom/boohee/one/video/entity/SportPlan;

.field testBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0212
    .end annotation
.end field

.field private timeLayout:Landroid/widget/LinearLayout;

.field private tvCalory:Landroid/widget/TextView;

.field private tvNumber:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/SportPlanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportPlanActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->getSportPlan()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/SportPlanActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportPlanActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/SportPlanActivity;->handlerData(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/SportPlanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getSportPlan()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->showLoading()V

    .line 154
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/video/ui/SportPlanActivity$3;

    iget-object v2, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/ui/SportPlanActivity$3;-><init>(Lcom/boohee/one/video/ui/SportPlanActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/one/video/api/SportApi;->getTodayLessons(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 176
    return-void
.end method

.method private handlerData(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 179
    const-class v0, Lcom/boohee/one/video/entity/SportPlan;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/SportPlan;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    .line 180
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->refreshView()V

    .line 181
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const v1, 0x7f030274

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0704

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->tvTime:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0700

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->tvNumber:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0702

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->tvCalory:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e06ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->timeLayout:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0703

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->numberLayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0445

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->completedImg:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/video/ui/SportPlanActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/SportPlanActivity$1;-><init>(Lcom/boohee/one/video/ui/SportPlanActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 139
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/video/ui/SportPlanActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/SportPlanActivity$2;-><init>(Lcom/boohee/one/video/ui/SportPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    return-void
.end method

.method private refreshView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    iget-object v0, v0, Lcom/boohee/one/video/entity/SportPlan;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    iget-object v2, v2, Lcom/boohee/one/video/entity/SportPlan;->total_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->tvCalory:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    iget v2, v2, Lcom/boohee/one/video/entity/SportPlan;->calorie_today:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->tvNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    iget-object v2, v2, Lcom/boohee/one/video/entity/SportPlan;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v0, Lcom/boohee/one/video/adapter/SportPlanAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->sportPlan:Lcom/boohee/one/video/entity/SportPlan;

    iget-object v2, v2, Lcom/boohee/one/video/entity/SportPlan;->sections:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/video/adapter/SportPlanAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->adapter:Lcom/boohee/one/video/adapter/SportPlanAdapter;

    .line 190
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->adapter:Lcom/boohee/one/video/adapter/SportPlanAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->testBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->testBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0212
        }
    .end annotation

    .prologue
    .line 119
    const-string v1, "/api/v1/questions/init_v2.html?quiz_type=sport"

    invoke-static {v1}, Lcom/boohee/one/http/client/BingoClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->ctx:Landroid/content/Context;

    const-string v2, "\u8bc4\u6d4b"

    invoke-static {v1, v2, v0}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->finish()V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/SportPlanActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 74
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->getSportPlan()V

    .line 76
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 208
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "refresh_sport_plan"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportPlanActivity;->getSportPlan()V

    .line 94
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportPlanActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/one/video/ui/SportSettingActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0e07de
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 83
    return-void
.end method
