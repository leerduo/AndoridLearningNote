.class public Lcom/boohee/one/ui/FilterSleepFragment;
.super Landroid/support/v4/app/Fragment;
.source "FilterSleepFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/FilterSleepFragment$ItemClickListener;,
        Lcom/boohee/one/ui/FilterSleepFragment$TimeSetCallback;
    }
.end annotation


# static fields
.field private static final SLEEP_RES_IDS:[I

.field private static final SLEEP_RES_TEXTS:[Ljava/lang/String;

.field private static final SLEEP_SELECT_RES_IDS:[I


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

.field private currentImage:Landroid/widget/ImageView;

.field private iconListView:Lcom/boohee/widgets/HorizontalListView;

.field private lastPosition:I

.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private markView:Landroid/view/View;

.field private parentLayout:Landroid/widget/FrameLayout;

.field private preImage:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;

.field private timeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_RES_IDS:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_SELECT_RES_IDS:[I

    .line 35
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8d77\u5e8a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u7761\u89c9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_RES_TEXTS:[Ljava/lang/String;

    return-void

    .line 31
    :array_0
    .array-data 4
        0x7f02061c
        0x7f020541
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x7f02061d
        0x7f020542
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->lastPosition:I

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/FilterSleepFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_SELECT_RES_IDS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/FilterSleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->timeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_RES_TEXTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/FilterSleepFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/FilterSleepFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->markView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/FilterSleepFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->currentImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/FilterSleepFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->currentImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_RES_IDS:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/FilterSleepFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;

    .prologue
    .line 28
    iget v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->lastPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/FilterSleepFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSleepFragment;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->lastPosition:I

    return p1
.end method

.method private findView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    const v0, 0x7f0e0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->parentLayout:Landroid/widget/FrameLayout;

    .line 89
    const v0, 0x7f0e0339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->preImage:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0e033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/HorizontalListView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    .line 91
    const v0, 0x7f0e033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->markView:Landroid/view/View;

    .line 92
    const v0, 0x7f0e06dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->timeText:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0e06dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->textView:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method private initListView()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;

    sget-object v3, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_RES_IDS:[I

    sget-object v4, Lcom/boohee/one/ui/FilterSleepFragment;->SLEEP_RES_TEXTS:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;-><init>([I[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;)V

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    .line 99
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    new-instance v1, Lcom/boohee/one/ui/FilterSleepFragment$ItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/FilterSleepFragment$ItemClickListener;-><init>(Lcom/boohee/one/ui/FilterSleepFragment;Lcom/boohee/one/ui/FilterSleepFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    return-void
.end method

.method private initTextClock()V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->timeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->timeText:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/one/ui/FilterSleepFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/ui/FilterSleepFragment$1;-><init>(Lcom/boohee/one/ui/FilterSleepFragment;Ljava/util/Calendar;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->parentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterSleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterSleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->mUri:Landroid/net/Uri;

    .line 69
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterSleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSleepFragment;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/boohee/one/ui/FilterSleepFragment;->preImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 70
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterSleepFragment;->initListView()V

    .line 71
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterSleepFragment;->initTextClock()V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "FilterSleepFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterSleepFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterSleepFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterSleepFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    const v0, 0x7f0300db

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
    const-string v1, "FilterSleepFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->parentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSleepFragment;->currentImage:Landroid/widget/ImageView;

    .line 85
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
    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterSleepFragment;->findView(Landroid/view/View;)V

    .line 62
    return-void
.end method
