.class public Lcom/boohee/food/CollectionActivity;
.super Lcom/boohee/main/GestureActivity;
.source "CollectionActivity.java"


# instance fields
.field blvContent:Lcom/boohee/widgets/BooheeListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f3
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CollectionFood;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSelect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mTotalPages:I

.field viewOperate:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/food/CollectionActivity;->mPage:I

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/food/CollectionActivity;->mTotalPages:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/CollectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/boohee/food/CollectionActivity;->sendRequestCollection(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/food/CollectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/food/CollectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/boohee/food/CollectionActivity;->mPage:I

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/food/CollectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/boohee/food/CollectionActivity;->mTotalPages:I

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/food/CollectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/food/CollectionActivity;)Lcom/boohee/food/adapter/CollectionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/food/CollectionActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/CollectionActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/boohee/food/CollectionActivity;->initData(Z)V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/CollectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method private initData(Z)V
    .locals 1
    .param p1, "showLoading"    # Z

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/food/CollectionActivity;->mPage:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/food/CollectionActivity;->mTotalPages:I

    .line 99
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    invoke-virtual {v0}, Lcom/boohee/food/adapter/CollectionAdapter;->notifyDataSetChanged()V

    .line 102
    invoke-direct {p0, p1}, Lcom/boohee/food/CollectionActivity;->sendRequestCollection(Z)V

    .line 103
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/boohee/food/adapter/CollectionAdapter;

    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/food/adapter/CollectionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    .line 80
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/BooheeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    new-instance v1, Lcom/boohee/food/CollectionActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/CollectionActivity$1;-><init>(Lcom/boohee/food/CollectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/BooheeListView;->setOnLoadMoreListener(Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;)V

    .line 87
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    new-instance v1, Lcom/boohee/food/CollectionActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/CollectionActivity$2;-><init>(Lcom/boohee/food/CollectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/BooheeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    return-void
.end method

.method private sendDeleteCollection()V
    .locals 5

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/CollectionFood;

    iget v3, v3, Lcom/boohee/model/CollectionFood;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "param":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 209
    const v3, 0x7f070172

    invoke-virtual {p0, v3}, Lcom/boohee/food/CollectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    return-void

    .line 212
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {p0}, Lcom/boohee/food/CollectionActivity;->showLoading()V

    .line 214
    iget-object v3, p0, Lcom/boohee/food/CollectionActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v4, Lcom/boohee/food/CollectionActivity$4;

    invoke-direct {v4, p0, p0}, Lcom/boohee/food/CollectionActivity$4;-><init>(Lcom/boohee/food/CollectionActivity;Landroid/content/Context;)V

    invoke-static {v2, v3, v4}, Lcom/boohee/api/FoodApi;->deleteCollectionFood(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_1
.end method

.method private sendRequestCollection(Z)V
    .locals 3
    .param p1, "showLoading"    # Z

    .prologue
    .line 148
    iget v1, p0, Lcom/boohee/food/CollectionActivity;->mPage:I

    add-int/lit8 v0, v1, 0x1

    .line 149
    .local v0, "currentPage":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/boohee/food/CollectionActivity;->mTotalPages:I

    if-le v0, v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/boohee/food/CollectionActivity;->showLoading()V

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/CollectionActivity$3;

    invoke-direct {v2, p0, p0, p1}, Lcom/boohee/food/CollectionActivity$3;-><init>(Lcom/boohee/food/CollectionActivity;Landroid/content/Context;Z)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->getCollectionFoodList(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00f6,
            0x7f0e00f7
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/food/CollectionActivity;->sendDeleteCollection()V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v2, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 56
    .local v1, "isSelect":Z
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    invoke-virtual {v2}, Lcom/boohee/food/adapter/CollectionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/boohee/food/CollectionActivity;->setContentView(I)V

    .line 72
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 74
    invoke-direct {p0}, Lcom/boohee/food/CollectionActivity;->initView()V

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/boohee/food/CollectionActivity;->initData(Z)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 107
    const/4 v1, 0x0

    const v2, 0x7f070173

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 108
    .local v0, "menuEdit":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f070173

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/boohee/food/CollectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const v1, 0x7f070174

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 118
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    invoke-virtual {v1, v0}, Lcom/boohee/food/adapter/CollectionAdapter;->setEdit(Z)V

    .line 119
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->viewOperate:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->viewOperate:Landroid/view/View;

    const v2, 0x7f04000e

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 123
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;

    invoke-virtual {v1, v3}, Lcom/boohee/food/adapter/CollectionAdapter;->setEdit(Z)V

    .line 124
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->viewOperate:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity;->viewOperate:Landroid/view/View;

    const v2, 0x7f040011

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
