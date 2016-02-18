.class public Lcom/boohee/one/ui/FilterSportFragment;
.super Landroid/support/v4/app/Fragment;
.source "FilterSportFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/FilterSportFragment$ItemClickListener;
    }
.end annotation


# static fields
.field private static final SPORT_DATAS:[F

.field private static final SPORT_IDS:[I

.field private static final SPORT_RES_IDS:[I

.field private static final SPORT_RES_TEXTS:[Ljava/lang/String;

.field private static final SPORT_SELECT_RES_IDS:[I


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

.field private bottomText:Landroid/widget/TextView;

.field private currentImage:Landroid/widget/ImageView;

.field private currentPosition:I

.field private editText:Landroid/widget/EditText;

.field private iconListView:Lcom/boohee/widgets/HorizontalListView;

.field private lastPosition:I

.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private markView:Landroid/view/View;

.field private parentLayout:Landroid/widget/FrameLayout;

.field private preImage:Landroid/widget/ImageView;

.field private preference:Lcom/boohee/database/UserPreference;

.field private syncBean:Lcom/boohee/model/FilterSyncSportBean;

.field private upLeftText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 34
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_RES_IDS:[I

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_SELECT_RES_IDS:[I

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u8d70\u8def"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8dd1\u6b65"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6e38\u6cf3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8df3\u64cd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5668\u68b0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u81ea\u884c\u8f66"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7403\u7c7b\u8fd0\u52a8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_RES_TEXTS:[Ljava/lang/String;

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_DATAS:[F

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_IDS:[I

    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x7f02061e
        0x7f020495
        0x7f020564
        0x7f020118
        0x7f02037a
        0x7f020096
        0x7f020061
    .end array-data

    .line 38
    :array_1
    .array-data 4
        0x7f02061f
        0x7f020496
        0x7f020565
        0x7f020119
        0x7f02037b
        0x7f020097
        0x7f020062
    .end array-data

    .line 43
    :array_2
    .array-data 4
        0x40600000    # 3.5f
        0x40e00000    # 7.0f
        0x40f00000    # 7.5f
        0x40e00000    # 7.0f
        0x41080000    # 8.5f
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 44
    :array_3
    .array-data 4
        0x5267
        0x5268
        0x5269
        0x526a
        0x526b
        0x526d
        0x526e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    iput v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->currentPosition:I

    .line 58
    iput v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->lastPosition:I

    .line 60
    new-instance v0, Lcom/boohee/model/FilterSyncSportBean;

    invoke-direct {v0}, Lcom/boohee/model/FilterSyncSportBean;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/FilterSportFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterSportFragment;->calConsumeCalory()V

    return-void
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/FilterSportFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->currentImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/boohee/one/ui/FilterSportFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/boohee/one/ui/FilterSportFragment;->currentImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_RES_IDS:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/FilterSportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->lastPosition:I

    return v0
.end method

.method static synthetic access$1202(Lcom/boohee/one/ui/FilterSportFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/boohee/one/ui/FilterSportFragment;->lastPosition:I

    return p1
.end method

.method static synthetic access$1300()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_SELECT_RES_IDS:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/one/ui/FilterSportFragment;)Lcom/boohee/database/UserPreference;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->preference:Lcom/boohee/database/UserPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/FilterSportFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/boohee/one/ui/FilterSportFragment;->currentPosition:I

    return p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_RES_TEXTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/FilterSportFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->upLeftText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/FilterSportFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/FilterSportFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/FilterSportFragment;)Lcom/boohee/model/FilterSyncSportBean;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_IDS:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/FilterSportFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterSportFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->markView:Landroid/view/View;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/one/ui/FilterSportFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/FilterSportFragment$1;-><init>(Lcom/boohee/one/ui/FilterSportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    return-void
.end method

.method private calConsumeCalory()V
    .locals 8

    .prologue
    .line 133
    iget-object v4, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "timeStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "0"

    .end local v3    # "timeStr":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, "time":I
    new-instance v4, Lcom/boohee/modeldao/WeightRecordDao;

    iget-object v5, p0, Lcom/boohee/one/ui/FilterSportFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v1

    .line 136
    .local v1, "latestWeight":F
    const-wide v4, 0x3ff570a3d70a3d71L    # 1.34

    sget-object v6, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_DATAS:[F

    iget v7, p0, Lcom/boohee/one/ui/FilterSportFragment;->currentPosition:I

    aget v6, v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    int-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 137
    .local v0, "calory":I
    iget-object v4, p0, Lcom/boohee/one/ui/FilterSportFragment;->bottomText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6d88\u8017"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5343\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    invoke-virtual {v4, v0}, Lcom/boohee/model/FilterSyncSportBean;->setCalory(I)V

    .line 139
    iget-object v4, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    invoke-virtual {v4, v2}, Lcom/boohee/model/FilterSyncSportBean;->setDuration(I)V

    .line 140
    iget-object v4, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    .line 141
    return-void
.end method

.method private findView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    const v0, 0x7f0e0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->parentLayout:Landroid/widget/FrameLayout;

    .line 106
    const v0, 0x7f0e0339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->preImage:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0e033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/HorizontalListView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    .line 108
    const v0, 0x7f0e033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->markView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->markView:Landroid/view/View;

    const v1, 0x7f0e06df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->upLeftText:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->markView:Landroid/view/View;

    const v1, 0x7f0e06e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->bottomText:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->markView:Landroid/view/View;

    const v1, 0x7f0e06dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    .line 112
    return-void
.end method

.method private initListView()V
    .locals 5

    .prologue
    .line 144
    new-instance v0, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSportFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;

    sget-object v3, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_RES_IDS:[I

    sget-object v4, Lcom/boohee/one/ui/FilterSportFragment;->SPORT_RES_TEXTS:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;-><init>([I[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;)V

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    .line 146
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSportFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    new-instance v1, Lcom/boohee/one/ui/FilterSportFragment$ItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/FilterSportFragment$ItemClickListener;-><init>(Lcom/boohee/one/ui/FilterSportFragment;Lcom/boohee/one/ui/FilterSportFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSportFragment;->editText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->parentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->mUri:Landroid/net/Uri;

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->preference:Lcom/boohee/database/UserPreference;

    .line 85
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/FilterSportFragment;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/boohee/one/ui/FilterSportFragment;->preImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterSportFragment;->initListView()V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "FilterSportFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterSportFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterSportFragment#onCreate"

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
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterSportFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const v0, 0x7f0300dc

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
    const-string v1, "FilterSportFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 100
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->parentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->currentImage:Landroid/widget/ImageView;

    .line 102
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
    .line 74
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterSportFragment;->findView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterSportFragment;->addListener()V

    .line 77
    return-void
.end method

.method public saveSyncData(Lcom/boohee/model/FilterSyncBean;)V
    .locals 2
    .param p1, "syncData"    # Lcom/boohee/model/FilterSyncBean;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    invoke-virtual {v0}, Lcom/boohee/model/FilterSyncSportBean;->getCalory()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/boohee/one/ui/FilterSportFragment;->syncBean:Lcom/boohee/model/FilterSyncSportBean;

    invoke-virtual {p1, v0}, Lcom/boohee/model/FilterSyncBean;->setSport(Lcom/boohee/model/FilterSyncSportBean;)V

    .line 188
    :cond_0
    return-void
.end method
