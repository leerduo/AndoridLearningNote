.class public Lcom/boohee/one/ui/FilterFigureFragment;
.super Landroid/support/v4/app/Fragment;
.source "FilterFigureFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/FilterFigureFragment$TouchListener;,
        Lcom/boohee/one/ui/FilterFigureFragment$ItemClickListener;
    }
.end annotation


# static fields
.field private static final FIGURE_DATAS:[I

.field private static final FIGURE_RES_IDS:[I

.field public static final FIGURE_RES_TEXTS:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

.field private currentFigureView:Landroid/view/View;

.field private figureViewArray:[Landroid/view/View;

.field private iconListView:Lcom/boohee/widgets/HorizontalListView;

.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field private parentLayout:Landroid/widget/FrameLayout;

.field private preImage:Landroid/widget/ImageView;

.field private syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_IDS:[I

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4f53\u91cd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8eab\u9ad8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8170\u56f4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u80f8\u56f4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u81c0\u56f4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u624b\u81c2\u56f4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5927\u817f\u56f4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5c0f\u817f\u56f4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_DATAS:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x7f020624
        0x7f0201c8
        0x7f02061b
        0x7f0200ec
        0x7f0201cc
        0x7f02004c
        0x7f02057d
        0x7f0200c0
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x32
        0xa0
        0x32
        0x5a
        0x3c
        0x14
        0x28
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    sget-object v0, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_IDS:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->figureViewArray:[Landroid/view/View;

    .line 54
    sget-object v0, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_IDS:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/boohee/model/FilterSyncFigureBean;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    .line 245
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/FilterFigureFragment;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->figureViewArray:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/FilterFigureFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterFigureFragment;->hideButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterFigureFragment;->showButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/FilterFigureFragment;)[Lcom/boohee/model/FilterSyncFigureBean;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/FilterFigureFragment;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterFigureFragment;->createFigureView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/FilterFigureFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->parentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/FilterFigureFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/FilterFigureFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createFigureView(I)Landroid/view/View;
    .locals 11
    .param p1, "pos"    # I

    .prologue
    const/4 v10, -0x2

    .line 135
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f03023e

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "figureView":Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    const v7, 0x7f0e06df

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v7

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, "leftText":Landroid/widget/TextView;
    const v7, 0x7f0e06dd

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 139
    .local v6, "rightText":Landroid/widget/TextView;
    const v7, 0x7f0e06dc

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 141
    .local v4, "middleEdit":Landroid/widget/EditText;
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_DATAS:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v7, Lcom/boohee/one/ui/FilterFigureFragment$1;

    invoke-direct {v7, p0, p1, v4}, Lcom/boohee/one/ui/FilterFigureFragment$1;-><init>(Lcom/boohee/one/ui/FilterFigureFragment;ILandroid/widget/EditText;)V

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    if-nez p1, :cond_1

    .line 166
    const-string v7, "kg"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    aget-object v7, v7, p1

    const-string v8, "kg"

    invoke-virtual {v7, v8}, Lcom/boohee/model/FilterSyncFigureBean;->setUnit(Ljava/lang/String;)V

    .line 173
    :goto_0
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    aget-object v7, v7, p1

    sget-object v8, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Lcom/boohee/model/FilterSyncFigureBean;->setName(Ljava/lang/String;)V

    .line 174
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    aget-object v7, v7, p1

    sget-object v8, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_DATAS:[I

    aget v8, v8, p1

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/boohee/model/FilterSyncFigureBean;->setValue(F)V

    .line 176
    new-instance v7, Lcom/boohee/one/ui/FilterFigureFragment$TouchListener;

    iget-object v8, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcom/boohee/one/ui/FilterFigureFragment$TouchListener;-><init>(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 178
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 180
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->figureViewArray:[Landroid/view/View;

    aput-object v1, v7, p1

    .line 182
    const v7, 0x7f0e06e1

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 183
    .local v5, "removeBtn":Landroid/widget/Button;
    const v7, 0x7f0e06e0

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 186
    .local v0, "editBtn":Landroid/widget/Button;
    new-instance v7, Lcom/boohee/one/ui/FilterFigureFragment$2;

    invoke-direct {v7, p0, v1}, Lcom/boohee/one/ui/FilterFigureFragment$2;-><init>(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v7, Lcom/boohee/one/ui/FilterFigureFragment$3;

    invoke-direct {v7, p0, v4}, Lcom/boohee/one/ui/FilterFigureFragment$3;-><init>(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v7, Lcom/boohee/one/ui/FilterFigureFragment$4;

    invoke-direct {v7, p0, v1}, Lcom/boohee/one/ui/FilterFigureFragment$4;-><init>(Lcom/boohee/one/ui/FilterFigureFragment;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/boohee/one/ui/FilterFigureFragment;->hideButton(Landroid/view/View;)V

    .line 222
    :cond_0
    iput-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    .line 223
    return-object v1

    .line 169
    .end local v0    # "editBtn":Landroid/widget/Button;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "removeBtn":Landroid/widget/Button;
    :cond_1
    iget-object v7, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    aget-object v7, v7, p1

    const-string v8, "cm"

    invoke-virtual {v7, v8}, Lcom/boohee/model/FilterSyncFigureBean;->setUnit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    const v0, 0x7f0e0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->parentLayout:Landroid/widget/FrameLayout;

    .line 101
    const v0, 0x7f0e0339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->preImage:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0e033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/HorizontalListView;

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    .line 103
    return-void
.end method

.method private hideButton(Landroid/view/View;)V
    .locals 3
    .param p1, "figureView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    .line 227
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    const v1, 0x7f0e06e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const v1, 0x7f0e06e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const v1, 0x7f0e06dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 232
    .local v0, "middleEdit":Landroid/widget/EditText;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0
.end method

.method private initListView()V
    .locals 5

    .prologue
    .line 106
    new-instance v0, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;

    sget-object v3, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_IDS:[I

    sget-object v4, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;-><init>([I[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter$DataSet;)V

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    iget-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->adapter:Lcom/boohee/one/ui/adapter/HorizontalIconListAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->iconListView:Lcom/boohee/widgets/HorizontalListView;

    new-instance v1, Lcom/boohee/one/ui/FilterFigureFragment$ItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/FilterFigureFragment$ItemClickListener;-><init>(Lcom/boohee/one/ui/FilterFigureFragment;Lcom/boohee/one/ui/FilterFigureFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void
.end method

.method private showButton(Landroid/view/View;)V
    .locals 2
    .param p1, "figureView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 236
    const v0, 0x7f0e06e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    const v0, 0x7f0e06e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/FilterFigureFragment;->hideButton(Landroid/view/View;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->parentLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterFigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterFigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mUri:Landroid/net/Uri;

    .line 76
    invoke-virtual {p0}, Lcom/boohee/one/ui/FilterFigureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/boohee/one/ui/FilterFigureFragment;->preImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 77
    invoke-direct {p0}, Lcom/boohee/one/ui/FilterFigureFragment;->initListView()V

    .line 78
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "FilterFigureFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterFigureFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FilterFigureFragment#onCreate"

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
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FilterFigureFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    const v0, 0x7f0300da

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
    const-string v1, "FilterFigureFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 92
    iget-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->parentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->figureViewArray:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/boohee/one/ui/FilterFigureFragment;->figureViewArray:[Landroid/view/View;

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iput-object v2, p0, Lcom/boohee/one/ui/FilterFigureFragment;->currentFigureView:Landroid/view/View;

    .line 97
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
    .line 67
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/FilterFigureFragment;->findView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public saveSyncData(Lcom/boohee/model/FilterSyncBean;)V
    .locals 7
    .param p1, "syncData"    # Lcom/boohee/model/FilterSyncBean;

    .prologue
    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, "isNeedSave":Z
    iget-object v0, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    .local v0, "arr$":[Lcom/boohee/model/FilterSyncFigureBean;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 305
    .local v1, "bean":Lcom/boohee/model/FilterSyncFigureBean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 306
    const/4 v3, 0x1

    .line 311
    .end local v1    # "bean":Lcom/boohee/model/FilterSyncFigureBean;
    :cond_0
    if-eqz v3, :cond_2

    .line 312
    iget-object v5, p0, Lcom/boohee/one/ui/FilterFigureFragment;->syncBeans:[Lcom/boohee/model/FilterSyncFigureBean;

    invoke-virtual {p1, v5}, Lcom/boohee/model/FilterSyncBean;->setFigures([Lcom/boohee/model/FilterSyncFigureBean;)V

    .line 317
    :goto_1
    return-void

    .line 304
    .restart local v1    # "bean":Lcom/boohee/model/FilterSyncFigureBean;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "bean":Lcom/boohee/model/FilterSyncFigureBean;
    :cond_2
    iget-object v5, p0, Lcom/boohee/one/ui/FilterFigureFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v5

    const-string v6, "KEY_POST_TAG"

    invoke-virtual {v5, v6}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 315
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/boohee/model/FilterSyncBean;->setFigures([Lcom/boohee/model/FilterSyncFigureBean;)V

    goto :goto_1
.end method
