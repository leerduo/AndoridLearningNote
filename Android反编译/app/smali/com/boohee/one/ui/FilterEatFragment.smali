.class public Lcom/boohee/one/ui/FilterEatFragment;
.super Landroid/support/v4/app/Fragment;
.source "FilterEatFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/FilterEatFragment$1;,
        Lcom/boohee/one/ui/FilterEatFragment$ItemClickListener;
    }
.end annotation


# static fields
.field private static final EAT_BLACK_RES_IDS:[I

.field private static final EAT_DATAS:[F

.field private static final EAT_RES_IDS:[I

.field private static final EAT_RES_TEXTS:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

.field private caloryText:Landroid/widget/TextView;

.field private dragViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/myview/DragScaleImageView;",
            ">;"
        }
    .end annotation
.end field

.field private iconListView:Lcom/boohee/widgets/HorizontalListView;

.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private markView:Landroid/view/View;

.field private parentLayout:Landroid/widget/FrameLayout;

.field private preImage:Landroid/widget/ImageView;

.field private preference:Lcom/boohee/database/UserPreference;

.field private syncBean:Lcom/boohee/model/FilterSyncFoodBean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/FilterEatFragment;->EAT_RES_IDS:[I

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boohee/one/ui/FilterEatFragment;->EAT_BLACK_RES_IDS:[I

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8c37\u85af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8364\u83dc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7d20\u83dc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8364\u7d20\u642d\u914d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6c34\u679c"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5976\u5236\u54c1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u751c\u70b9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u996e\u6599"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/ui/FilterEatFragment;->EAT_RES_TEXTS:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/boohee/one/ui/FilterEatFragment;->EAT_DATAS:[F

    return-void

    .line 43
    :array_0
    .array-data 4
        0x7f020490
        0x7f020416
        0x7f020611
        0x7f020421
        0x7f0201b4
        0x7f02041d
        0x7f020129
        0x7f020135
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x7f020491
        0x7f020417
        0x7f020612
        0x7f020422
        0x7f0201b5
        0x7f02041e
        0x7f02012a
        0x7f020137
    .end array-data

    .line 52
    :array_2
    .array-data 4
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x42f00000    # 120.0f
        0x43520000    # 210.0f
        0x42dc0000    # 110.0f
        0x42f00000    # 120.0f
        0x43700000    # 240.0f
        0x43020000    # 130.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->dragViewList:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/FilterEatFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/boohee/one/ui/FilterEatFragment;->EAT_BLACK_RES_IDS:[I

    return-object v0
.end method

.method static synthetic access$300()[F
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/boohee/one/ui/FilterEatFragment;->EAT_DATAS:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/FilterEatFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->caloryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/FilterEatFragment;)Lcom/boohee/model/FilterSyncFoodBean;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->syncBean:Lcom/boohee/model/FilterSyncFoodBean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/FilterEatFragment;Lcom/boohee/model/FilterSyncFoodBean;)Lcom/boohee/model/FilterSyncFoodBean;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;
    .param p1, "x1"    # Lcom/boohee/model/FilterSyncFoodBean;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/boohee/one/ui/FilterEatFragment;->syncBean:Lcom/boohee/model/FilterSyncFoodBean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/FilterEatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->dragViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/FilterEatFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->parentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/FilterEatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterEatFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterEatFragment;->saveTagName()V

    return-void
.end method

.method private findView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    const v0, 0x7f0e0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->parentLayout:Landroid/widget/FrameLayout;

    .line 107
    const v0, 0x7f0e0339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->preImage:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0e033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/HorizontalListView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    .line 109
    const v0, 0x7f0e033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->markView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->markView:Landroid/view/View;

    const v1, 0x7f0e06dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->caloryText:Landroid/widget/TextView;

    .line 111
    return-void
.end method

.method private initListView()V
    .locals 5

    .prologue
    .line 114
    new-instance v0, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterEatFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;

    sget-object v3, Lcom/boohee/one/ui/FilterEatFragment;->EAT_RES_IDS:[I

    sget-object v4, Lcom/boohee/one/ui/FilterEatFragment;->EAT_RES_TEXTS:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;-><init>([I[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;)V

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterEatFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    new-instance v1, Lcom/boohee/one/ui/FilterEatFragment$ItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/FilterEatFragment$ItemClickListener;-><init>(Lcom/boohee/one/ui/FilterEatFragment;Lcom/boohee/one/ui/FilterEatFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    return-void
.end method

.method private saveTagName()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->preference:Lcom/boohee/database/UserPreference;

    const-string v1, "KEY_POST_TAG"

    invoke-static {}, Lcom/boohee/utils/DateHelper;->getTimeFiled()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 90
    iget-object v2, p0, Lcom/boohee/one/ui/FilterEatFragment;->dragViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/DragScaleImageView;

    .line 91
    .local v0, "dragView":Lcom/boohee/myview/DragScaleImageView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/boohee/myview/DragScaleImageView;->setVisibility(I)V

    goto :goto_0

    .line 93
    .end local v0    # "dragView":Lcom/boohee/myview/DragScaleImageView;
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/FilterEatFragment;->dragViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v2, p0, Lcom/boohee/one/ui/FilterEatFragment;->parentLayout:Landroid/widget/FrameLayout;

    return-object v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterEatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterEatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->mUri:Landroid/net/Uri;

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->preference:Lcom/boohee/database/UserPreference;

    .line 83
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterEatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/FilterEatFragment;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/boohee/one/ui/FilterEatFragment;->preImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 84
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterEatFragment;->initListView()V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterEatFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const v0, 0x7f0300d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterEatFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 101
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->parentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->dragViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterEatFragment;->findView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public saveSyncData(Lcom/boohee/model/FilterSyncBean;)V
    .locals 2
    .param p1, "syncData"    # Lcom/boohee/model/FilterSyncBean;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->syncBean:Lcom/boohee/model/FilterSyncFoodBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->syncBean:Lcom/boohee/model/FilterSyncFoodBean;

    invoke-virtual {v0}, Lcom/boohee/model/FilterSyncFoodBean;->getCalory()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/boohee/one/ui/FilterEatFragment;->syncBean:Lcom/boohee/model/FilterSyncFoodBean;

    invoke-virtual {p1, v0}, Lcom/boohee/model/FilterSyncBean;->setFood(Lcom/boohee/model/FilterSyncFoodBean;)V

    .line 192
    :cond_0
    return-void
.end method
