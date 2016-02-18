.class public Lcom/boohee/food/SearchFoodActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SearchFoodActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/food/SearchFoodActivity$HotListAdapter;,
        Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;,
        Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;
    }
.end annotation


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"

.field private static final KEY_IS_ADD_DIET:Ljava/lang/String; = "isAddDiet"

.field private static final KEY_TIME_TYPE:Ljava/lang/String; = "key_time_type"

.field private static final SEPARATOR:Ljava/lang/String; = "##"


# instance fields
.field et_search:Landroid/widget/EditText;

.field gvHot:Lcom/boohee/one/onekey/widget/ExpandGridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0202
    .end annotation
.end field

.field private hotSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAddDiet:Z

.field iv_clear:Landroid/widget/ImageView;

.field iv_search:Landroid/widget/ImageView;

.field ll_history:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ff
    .end annotation
.end field

.field ll_history_content:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0200
    .end annotation
.end field

.field ll_result:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0203
    .end annotation
.end field

.field lv_result:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0204
    .end annotation
.end field

.field private mCurrentPage:I

.field private mCustomView:Landroid/view/View;

.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastindex:I

.field private mPage:I

.field private mQueryString:Ljava/lang/String;

.field private mResultAdapter:Lcom/boohee/food/SearchViewAdapter;

.field private mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FoodWithUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeType:I

.field private mTotalcount:I

.field private record_on:Ljava/lang/String;

.field sv_search:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01fe
    .end annotation
.end field

.field tv_null:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0206
    .end annotation
.end field

.field tv_search_tip:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0207
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 122
    iput v1, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    .line 123
    iput v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCurrentPage:I

    .line 124
    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mLastindex:I

    .line 125
    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mTotalcount:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->hotSearchList:Ljava/util/List;

    .line 136
    iput-boolean v1, p0, Lcom/boohee/food/SearchFoodActivity;->isAddDiet:Z

    .line 573
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/SearchFoodActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->hotSearchList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/food/SearchFoodActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/food/SearchFoodActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/food/SearchFoodActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity;->doFastSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->doSearch()V

    return-void
.end method

.method static synthetic access$1400(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity;->showUploadDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity;->loadFoodWithCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/boohee/food/SearchFoodActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/food/SearchFoodActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->doScan()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->loadHistoryData()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->showHighLight()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/food/SearchFoodActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/food/SearchFoodActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/food/SearchFoodActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method private addListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->lv_result:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->lv_result:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 215
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->gvHot:Lcom/boohee/one/onekey/widget/ExpandGridView;

    invoke-virtual {v0, p0}, Lcom/boohee/one/onekey/widget/ExpandGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;

    invoke-direct {v1, p0, v2}, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;-><init>(Lcom/boohee/food/SearchFoodActivity;Lcom/boohee/food/SearchFoodActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;-><init>(Lcom/boohee/food/SearchFoodActivity;Lcom/boohee/food/SearchFoodActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 218
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->iv_search:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/SearchFoodActivity$2;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->iv_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/food/SearchFoodActivity$3;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method private arrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 457
    :cond_0
    return-object v1

    .line 454
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 455
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkGuide()V
    .locals 4

    .prologue
    .line 236
    invoke-static {}, Lcom/boohee/database/OnePreference;->isSearchFoodGuide()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/food/SearchFoodActivity;->isAddDiet:Z

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/food/SearchFoodActivity$4;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_0
    return-void
.end method

.method public static comeWithoutAddDiet(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isAddDiet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method private doFastSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    iput v1, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    .line 272
    iput v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCurrentPage:I

    .line 273
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 275
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity;->loadData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doScan()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/boohee/one/ui/ScannerActivity;->startScannerForResult(Landroid/content/Context;I)V

    .line 283
    return-void
.end method

.method private doSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iput v1, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    .line 292
    iput v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCurrentPage:I

    .line 293
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/food/SearchFoodActivity;->loadData(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_time_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mTimeType:I

    .line 154
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->record_on:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isAddDiet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/food/SearchFoodActivity;->isAddDiet:Z

    .line 156
    return-void
.end method

.method private initHistory()V
    .locals 7

    .prologue
    .line 384
    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 403
    :cond_0
    return-void

    .line 387
    :cond_1
    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->ll_history_content:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 389
    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .local v1, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03014c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 391
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0266

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 392
    .local v2, "txt_home_lv_item_title":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    new-instance v4, Lcom/boohee/food/SearchFoodActivity$8;

    invoke-direct {v4, p0, v1}, Lcom/boohee/food/SearchFoodActivity$8;-><init>(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->ll_history_content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initToolsBar()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 201
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030279

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCustomView:Landroid/view/View;

    .line 202
    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e077e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    .line 203
    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e077f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->iv_clear:Landroid/widget/ImageView;

    .line 204
    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e037a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->iv_search:Landroid/widget/ImageView;

    .line 205
    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    const v2, 0x7f07049b

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 206
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 207
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 208
    .local v0, "layoutParams":Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 209
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 438
    .local v0, "historyString":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    .line 442
    :goto_0
    return-object v2

    .line 439
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    :cond_2
    const/4 v2, 0x0

    const-string v3, "##"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private loadData(Ljava/lang/String;)V
    .locals 4
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 305
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 310
    .local v1, "encodeString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    .end local v1    # "encodeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "encodeString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->showLoading()V

    .line 312
    iget v2, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    new-instance v3, Lcom/boohee/food/SearchFoodActivity$7;

    invoke-direct {v3, p0, p0}, Lcom/boohee/food/SearchFoodActivity$7;-><init>(Lcom/boohee/food/SearchFoodActivity;Landroid/content/Context;)V

    invoke-static {p0, v1, v2, v3}, Lcom/boohee/api/FoodApi;->getFoodsSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private loadFoodWithCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-boolean v2, p0, Lcom/boohee/food/SearchFoodActivity;->isAddDiet:Z

    if-eqz v2, :cond_0

    .line 633
    iget v2, p0, Lcom/boohee/food/SearchFoodActivity;->mTimeType:I

    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->record_on:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/boohee/one/ui/fragment/AddDietFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddDietFragment;

    move-result-object v0

    .line 635
    .local v0, "addDietFragment":Lcom/boohee/one/ui/fragment/AddDietFragment;
    new-instance v2, Lcom/boohee/food/SearchFoodActivity$11;

    invoke-direct {v2, p0}, Lcom/boohee/food/SearchFoodActivity$11;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/fragment/AddDietFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    .line 641
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 642
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "addDietFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 643
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 647
    .end local v0    # "addDietFragment":Lcom/boohee/one/ui/fragment/AddDietFragment;
    .end local v1    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/boohee/food/FoodDetailActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private loadHistoryData()V
    .locals 5

    .prologue
    .line 364
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/database/OnePreference;->getSearchHistory()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "historyString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ll_history:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ll_history:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    const-string v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 373
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->initHistory()V

    goto :goto_0
.end method

.method private loadHotData()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->showLoading()V

    .line 177
    const-string v0, "/v2/ifoods/keywords"

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/food/SearchFoodActivity$1;-><init>(Lcom/boohee/food/SearchFoodActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FoodWithUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "foodList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/FoodWithUnit;>;"
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 334
    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 335
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/food/SearchFoodActivity;->saveSearchHistory(Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/boohee/food/SearchViewAdapter;

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/food/SearchViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultAdapter:Lcom/boohee/food/SearchViewAdapter;

    .line 340
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->lv_result:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->mResultAdapter:Lcom/boohee/food/SearchViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ll_result:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->tv_null:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->sv_search:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultAdapter:Lcom/boohee/food/SearchViewAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/SearchViewAdapter;->notifyDataSetChanged()V

    .line 345
    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ll_result:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->sv_search:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->tv_null:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 352
    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultAdapter:Lcom/boohee/food/SearchViewAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/SearchViewAdapter;->notifyDataSetChanged()V

    .line 355
    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    goto :goto_0
.end method

.method private saveSearchHistory(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyString"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/database/OnePreference;->getSearchHistory()Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "historyString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "##"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/boohee/database/OnePreference;->setSearchHistory(Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    const-string v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "strings":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/boohee/food/SearchFoodActivity;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 417
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 420
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0, v0}, Lcom/boohee/food/SearchFoodActivity;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 426
    :goto_1
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/boohee/database/OnePreference;->setSearchHistory(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private searchFoodWithCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/SearchFoodActivity$10;

    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/food/SearchFoodActivity$10;-><init>(Lcom/boohee/food/SearchFoodActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->getFoodWithBarcode(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private showHighLight()V
    .locals 5

    .prologue
    .line 247
    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->iv_search:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v1, Lcom/boohee/myview/highlight/HighLight;

    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/myview/highlight/HighLight;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e037a

    const v3, 0x7f030268

    new-instance v4, Lcom/boohee/food/SearchFoodActivity$5;

    invoke-direct {v4, p0}, Lcom/boohee/food/SearchFoodActivity$5;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/boohee/myview/highlight/HighLight;->addHighLight(IILcom/boohee/myview/highlight/HighLight$OnPosCallback;)Lcom/boohee/myview/highlight/HighLight;

    move-result-object v0

    .line 257
    .local v0, "highLight":Lcom/boohee/myview/highlight/HighLight;
    invoke-virtual {v0}, Lcom/boohee/myview/highlight/HighLight;->show()V

    .line 258
    new-instance v1, Lcom/boohee/food/SearchFoodActivity$6;

    invoke-direct {v1, p0}, Lcom/boohee/food/SearchFoodActivity$6;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/highlight/HighLight;->setOnHighLightClickListener(Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;)V

    goto :goto_0
.end method

.method private showUploadDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0705f5

    invoke-static {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0705f6

    new-instance v2, Lcom/boohee/food/SearchFoodActivity$13;

    invoke-direct {v2, p0}, Lcom/boohee/food/SearchFoodActivity$13;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0705f7

    new-instance v2, Lcom/boohee/food/SearchFoodActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/boohee/food/SearchFoodActivity$12;-><init>(Lcom/boohee/food/SearchFoodActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 667
    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time_type"    # I
    .param p2, "record_on"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const v1, 0x7f04000e

    const v2, 0x7f04000b

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 150
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 596
    if-nez p3, :cond_0

    .line 606
    :goto_0
    return-void

    .line 597
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 605
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 599
    :pswitch_0
    const-string v1, "CODE_DATA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 601
    invoke-direct {p0, v0}, Lcom/boohee/food/SearchFoodActivity;->searchFoodWithCode(Ljava/lang/String;)V

    goto :goto_1

    .line 597
    :pswitch_data_0
    .packed-switch 0xaf
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->finish()V

    .line 559
    const/4 v0, 0x0

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/boohee/food/SearchFoodActivity;->overridePendingTransition(II)V

    .line 560
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0201,
            0x7f0e0205,
            0x7f0e0207
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 102
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ll_history:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/database/OnePreference;->clearSearchHistory()V

    goto :goto_0

    .line 106
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_searchfood_customfood"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/boohee/food/SearchFoodActivity;->isAddDiet:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/food/SearchFoodActivity;->mTimeType:I

    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/boohee/food/AddCustomFoodActivity;->start(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/food/AddCustomFoodActivity;->comeWithoutAddDiet(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->tv_search_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->doSearch()V

    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0201 -> :sswitch_0
        0x7f0e0205 -> :sswitch_1
        0x7f0e0207 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/boohee/food/SearchFoodActivity;->setContentView(I)V

    .line 163
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 164
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->initToolsBar()V

    .line 165
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->handleIntent()V

    .line 166
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->addListener()V

    .line 167
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->loadHistoryData()V

    .line 168
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->loadHotData()V

    .line 169
    invoke-direct {p0}, Lcom/boohee/food/SearchFoodActivity;->checkGuide()V

    .line 170
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 565
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 571
    :cond_1
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
    .line 462
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/boohee/utils/ViewUtils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-nez v3, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->hotSearchList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    .line 485
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/boohee/food/SearchFoodActivity;->doFastSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :pswitch_2
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->mResultAdapter:Lcom/boohee/food/SearchViewAdapter;

    invoke-virtual {v3, p3}, Lcom/boohee/food/SearchViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/FoodWithUnit;

    .line 467
    .local v1, "food":Lcom/boohee/model/FoodWithUnit;
    iget-boolean v3, p0, Lcom/boohee/food/SearchFoodActivity;->isAddDiet:Z

    if-eqz v3, :cond_2

    .line 468
    iget v3, p0, Lcom/boohee/food/SearchFoodActivity;->mTimeType:I

    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity;->record_on:Ljava/lang/String;

    iget-object v5, v1, Lcom/boohee/model/FoodWithUnit;->code:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/boohee/one/ui/fragment/AddDietFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddDietFragment;

    move-result-object v0

    .line 469
    .local v0, "addDietFragment":Lcom/boohee/one/ui/fragment/AddDietFragment;
    new-instance v3, Lcom/boohee/food/SearchFoodActivity$9;

    invoke-direct {v3, p0}, Lcom/boohee/food/SearchFoodActivity$9;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    invoke-virtual {v0, v3}, Lcom/boohee/one/ui/fragment/AddDietFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    .line 475
    invoke-virtual {p0}, Lcom/boohee/food/SearchFoodActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 476
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const-string v3, "addDietFragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 477
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 480
    .end local v0    # "addDietFragment":Lcom/boohee/one/ui/fragment/AddDietFragment;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    iget-object v3, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    iget-object v4, v1, Lcom/boohee/model/FoodWithUnit;->code:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/boohee/food/FoodDetailActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0202
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 553
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 554
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 504
    add-int v0, p2, p3

    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mLastindex:I

    .line 505
    iput p4, p0, Lcom/boohee/food/SearchFoodActivity;->mTotalcount:I

    .line 506
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 493
    if-nez p2, :cond_0

    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mTotalcount:I

    iget v1, p0, Lcom/boohee/food/SearchFoodActivity;->mLastindex:I

    if-ne v0, v1, :cond_0

    .line 494
    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    iget v1, p0, Lcom/boohee/food/SearchFoodActivity;->mCurrentPage:I

    if-le v0, v1, :cond_0

    .line 495
    iget v0, p0, Lcom/boohee/food/SearchFoodActivity;->mPage:I

    iput v0, p0, Lcom/boohee/food/SearchFoodActivity;->mCurrentPage:I

    .line 496
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/food/SearchFoodActivity;->loadData(Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method
