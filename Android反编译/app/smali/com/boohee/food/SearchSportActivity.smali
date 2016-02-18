.class public Lcom/boohee/food/SearchSportActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "SearchSportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;,
        Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;
    }
.end annotation


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"

.field private static final SEPARATOR:Ljava/lang/String; = "##"


# instance fields
.field et_search:Landroid/widget/EditText;

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

.field private mResultAdapter:Lcom/boohee/food/SearchSportViewAdapter;

.field private mResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Sport;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 98
    iput v1, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    .line 99
    iput v1, p0, Lcom/boohee/food/SearchSportActivity;->mCurrentPage:I

    .line 100
    iput v0, p0, Lcom/boohee/food/SearchSportActivity;->mLastindex:I

    .line 101
    iput v0, p0, Lcom/boohee/food/SearchSportActivity;->mTotalcount:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    .line 415
    return-void
.end method

.method static synthetic access$200(Lcom/boohee/food/SearchSportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->doSearch()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/food/SearchSportActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->loadHistoryData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/food/SearchSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/food/SearchSportActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchSportActivity;->refreshData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/food/SearchSportActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/food/SearchSportActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/food/SearchSportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/boohee/food/SearchSportActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/SearchSportActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchSportActivity;->doFastSearch(Ljava/lang/String;)V

    return-void
.end method

.method private addListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->lv_result:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->lv_result:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 149
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;

    invoke-direct {v1, p0, v2}, Lcom/boohee/food/SearchSportActivity$SearchTextWatcher;-><init>(Lcom/boohee/food/SearchSportActivity;Lcom/boohee/food/SearchSportActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;-><init>(Lcom/boohee/food/SearchSportActivity;Lcom/boohee/food/SearchSportActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->iv_search:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/food/SearchSportActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/SearchSportActivity$1;-><init>(Lcom/boohee/food/SearchSportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->iv_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/food/SearchSportActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/SearchSportActivity$2;-><init>(Lcom/boohee/food/SearchSportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
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
    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 357
    :cond_0
    return-object v1

    .line 354
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 355
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private doFastSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iput v1, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    .line 174
    iput v1, p0, Lcom/boohee/food/SearchSportActivity;->mCurrentPage:I

    .line 175
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 177
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchSportActivity;->loadData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iput v1, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    .line 188
    iput v1, p0, Lcom/boohee/food/SearchSportActivity;->mCurrentPage:I

    .line 189
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/food/SearchSportActivity;->loadData(Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SearchSportActivity;->record_on:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private initHistory()V
    .locals 7

    .prologue
    .line 283
    iget-object v4, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 302
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/boohee/food/SearchSportActivity;->ll_history_content:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 288
    iget-object v4, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03014c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 290
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0266

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    .local v2, "txt_home_lv_item_title":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v4, Lcom/boohee/food/SearchSportActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/boohee/food/SearchSportActivity$4;-><init>(Lcom/boohee/food/SearchSportActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v4, p0, Lcom/boohee/food/SearchSportActivity;->ll_history_content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initToolsBar()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 134
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030279

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/food/SearchSportActivity;->mCustomView:Landroid/view/View;

    .line 135
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e077e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    .line 136
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e077f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/food/SearchSportActivity;->iv_clear:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e037a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/food/SearchSportActivity;->iv_search:Landroid/widget/ImageView;

    .line 138
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    const v2, 0x7f07049c

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 139
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->iv_search:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 141
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 142
    .local v0, "layoutParams":Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/SearchSportActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 143
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
    .line 337
    .local p1, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 338
    .local v0, "historyString":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    .line 342
    :goto_0
    return-object v2

    .line 339
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 340
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

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
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
    .line 201
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    .local v1, "encodeString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    .end local v1    # "encodeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "encodeString":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->showLoading()V

    .line 208
    iget v2, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    new-instance v3, Lcom/boohee/food/SearchSportActivity$3;

    invoke-direct {v3, p0, p0}, Lcom/boohee/food/SearchSportActivity$3;-><init>(Lcom/boohee/food/SearchSportActivity;Landroid/content/Context;)V

    invoke-static {p0, v1, v2, v3}, Lcom/boohee/api/FoodApi;->getActivitiesSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private loadHistoryData()V
    .locals 5

    .prologue
    .line 262
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/database/OnePreference;->getSportHistory()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "historyString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->ll_history:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->ll_history:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    const-string v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 271
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->initHistory()V

    goto :goto_0
.end method

.method private refreshData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Sport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "foodList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Sport;>;"
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 231
    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 232
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/food/SearchSportActivity;->saveSearchHistory(Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/boohee/food/SearchSportViewAdapter;

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/food/SearchSportViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultAdapter:Lcom/boohee/food/SearchSportViewAdapter;

    .line 237
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->lv_result:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->mResultAdapter:Lcom/boohee/food/SearchSportViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->ll_result:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->tv_null:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->sv_search:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultAdapter:Lcom/boohee/food/SearchSportViewAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/SearchSportViewAdapter;->notifyDataSetChanged()V

    .line 242
    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->ll_result:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->sv_search:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->tv_null:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultAdapter:Lcom/boohee/food/SearchSportViewAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/SearchSportViewAdapter;->notifyDataSetChanged()V

    .line 252
    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    goto :goto_0
.end method

.method private saveSearchHistory(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyString"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/database/OnePreference;->getSportHistory()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "historyString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

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

    invoke-virtual {v3, v4}, Lcom/boohee/database/OnePreference;->setSportHistory(Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "strings":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/boohee/food/SearchSportActivity;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 320
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-direct {p0, v0}, Lcom/boohee/food/SearchSportActivity;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 326
    :goto_1
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/boohee/database/OnePreference;->setSportHistory(Ljava/lang/String;)V

    goto :goto_0

    .line 324
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

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/SearchSportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const v1, 0x7f04000e

    const v2, 0x7f04000b

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 115
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->finish()V

    .line 447
    const/4 v0, 0x0

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Lcom/boohee/food/SearchSportActivity;->overridePendingTransition(II)V

    .line 448
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0201,
            0x7f0e0205
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 86
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->ll_history:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/database/OnePreference;->clearSportHistory()V

    goto :goto_0

    .line 90
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/food/AddCustomSportActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0201 -> :sswitch_0
        0x7f0e0205 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v0, 0x7f03007d

    invoke-virtual {p0, v0}, Lcom/boohee/food/SearchSportActivity;->setContentView(I)V

    .line 126
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 127
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->initToolsBar()V

    .line 128
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->handleIntent()V

    .line 129
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->addListener()V

    .line 130
    invoke-direct {p0}, Lcom/boohee/food/SearchSportActivity;->loadHistoryData()V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 460
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 363
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/boohee/utils/ViewUtils;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->mResultAdapter:Lcom/boohee/food/SearchSportViewAdapter;

    invoke-virtual {v3, p3}, Lcom/boohee/food/SearchSportViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/Sport;

    .line 366
    .local v2, "sport":Lcom/boohee/model/Sport;
    new-instance v1, Lcom/boohee/model/RecordSport;

    invoke-direct {v1}, Lcom/boohee/model/RecordSport;-><init>()V

    .line 367
    .local v1, "recordSport":Lcom/boohee/model/RecordSport;
    iget-object v3, v2, Lcom/boohee/model/Sport;->mets:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v1, Lcom/boohee/model/RecordSport;->mets:F

    .line 368
    iget-object v3, v2, Lcom/boohee/model/Sport;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    .line 369
    iget v3, v2, Lcom/boohee/model/Sport;->id:I

    iput v3, v1, Lcom/boohee/model/RecordSport;->activity_id:I

    .line 370
    iget-object v3, v2, Lcom/boohee/model/Sport;->big_photo_url:Ljava/lang/String;

    iput-object v3, v1, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    .line 371
    iget-object v3, p0, Lcom/boohee/food/SearchSportActivity;->record_on:Ljava/lang/String;

    iput-object v3, v1, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    .line 372
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/boohee/one/ui/fragment/AddSportFragment;->newInstance(ILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddSportFragment;

    move-result-object v0

    .line 373
    .local v0, "addSportFragment":Lcom/boohee/one/ui/fragment/AddSportFragment;
    invoke-virtual {p0}, Lcom/boohee/food/SearchSportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "addSportFragment"

    invoke-virtual {v0, v3, v4}, Lcom/boohee/one/ui/fragment/AddSportFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 374
    new-instance v3, Lcom/boohee/food/SearchSportActivity$5;

    invoke-direct {v3, p0}, Lcom/boohee/food/SearchSportActivity$5;-><init>(Lcom/boohee/food/SearchSportActivity;)V

    invoke-virtual {v0, v3}, Lcom/boohee/one/ui/fragment/AddSportFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onPause()V

    .line 440
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 441
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 396
    add-int v0, p2, p3

    iput v0, p0, Lcom/boohee/food/SearchSportActivity;->mLastindex:I

    .line 397
    iput p4, p0, Lcom/boohee/food/SearchSportActivity;->mTotalcount:I

    .line 398
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 385
    if-nez p2, :cond_0

    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mTotalcount:I

    iget v1, p0, Lcom/boohee/food/SearchSportActivity;->mLastindex:I

    if-ne v0, v1, :cond_0

    .line 386
    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    iget v1, p0, Lcom/boohee/food/SearchSportActivity;->mCurrentPage:I

    if-le v0, v1, :cond_0

    .line 387
    iget v0, p0, Lcom/boohee/food/SearchSportActivity;->mPage:I

    iput v0, p0, Lcom/boohee/food/SearchSportActivity;->mCurrentPage:I

    .line 388
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/food/SearchSportActivity;->loadData(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method
