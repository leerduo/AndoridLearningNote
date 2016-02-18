.class public Lcom/boohee/one/onekey/CityListActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "CityListActivity.java"

# interfaces
.implements Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;


# instance fields
.field private gv_hot:Lcom/boohee/one/onekey/widget/ExpandGridView;

.field lv_city:Landroid/widget/ListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c7
    .end annotation
.end field

.field private mCityId:I

.field private mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private mCityName:Ljava/lang/String;

.field private mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;

.field private mHotList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private mLetterCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/LetterCity;",
            ">;"
        }
    .end annotation
.end field

.field private mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

.field private pinyinComparator:Lcom/boohee/one/onekey/widget/sortlistview/PinyinComparator;

.field sidebar:Lcom/boohee/one/onekey/widget/sortlistview/SideBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c9
    .end annotation
.end field

.field private tv_gps:Landroid/widget/TextView;

.field tv_letter_dialog:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01c8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mLetterCities:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/onekey/CityListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/onekey/CityListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/onekey/CityListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/onekey/CityListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/onekey/CityListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->tv_gps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/adapter/HotCityAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mLetterCities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/onekey/CityListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/CityListActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityList:Ljava/util/List;

    return-object v0
.end method

.method private filledData(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "cities":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "cityList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 190
    new-instance v0, Lcom/boohee/one/onekey/model/City;

    invoke-direct {v0}, Lcom/boohee/one/onekey/model/City;-><init>()V

    .line 191
    .local v0, "city":Lcom/boohee/one/onekey/model/City;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/onekey/model/City;

    iget v3, v3, Lcom/boohee/one/onekey/model/City;->city_id:I

    iput v3, v0, Lcom/boohee/one/onekey/model/City;->city_id:I

    .line 192
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/onekey/model/City;

    iget-object v3, v3, Lcom/boohee/one/onekey/model/City;->city_name:Ljava/lang/String;

    iput-object v3, v0, Lcom/boohee/one/onekey/model/City;->city_name:Ljava/lang/String;

    .line 193
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "city":Lcom/boohee/one/onekey/model/City;
    :cond_0
    return-object v1
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "convertView":Landroid/view/View;
    const v1, 0x7f0e01ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->tv_gps:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0e0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/onekey/widget/ExpandGridView;

    iput-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->gv_hot:Lcom/boohee/one/onekey/widget/ExpandGridView;

    .line 95
    return-object v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lcom/boohee/one/onekey/widget/sortlistview/PinyinComparator;

    invoke-direct {v0}, Lcom/boohee/one/onekey/widget/sortlistview/PinyinComparator;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->pinyinComparator:Lcom/boohee/one/onekey/widget/sortlistview/PinyinComparator;

    .line 100
    new-instance v0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v2, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    iget-object v3, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    .line 101
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->lv_city:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/one/onekey/CityListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->lv_city:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    invoke-virtual {v0, p0}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->setOnCitySelectedListener(Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;)V

    .line 105
    new-instance v0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v2, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    iget-object v3, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/boohee/one/onekey/adapter/HotCityAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    .line 106
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->gv_hot:Lcom/boohee/one/onekey/widget/ExpandGridView;

    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    invoke-virtual {v0, v1}, Lcom/boohee/one/onekey/widget/ExpandGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    invoke-virtual {v0, p0}, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->setOnCitySelectedListener(Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;)V

    .line 108
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->sidebar:Lcom/boohee/one/onekey/widget/sortlistview/SideBar;

    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity;->tv_letter_dialog:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 111
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->sidebar:Lcom/boohee/one/onekey/widget/sortlistview/SideBar;

    new-instance v1, Lcom/boohee/one/onekey/CityListActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/CityListActivity$1;-><init>(Lcom/boohee/one/onekey/CityListActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/onekey/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 123
    return-void
.end method

.method private requestCityList()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/boohee/one/onekey/CityListActivity;->showLoading()V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/onekey/CityListActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/onekey/CityListActivity$2;-><init>(Lcom/boohee/one/onekey/CityListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OnekeyApi;->getCityList(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 179
    return-void
.end method

.method private sendLocationToServer()V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/boohee/one/onekey/CityListActivity;->showLoading()V

    .line 226
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 227
    .local v1, "user":Lcom/boohee/one/http/JsonParams;
    const-string v2, "city_id"

    iget v3, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 228
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 229
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 230
    const-string v2, "/api/v1/user"

    new-instance v3, Lcom/boohee/one/onekey/CityListActivity$3;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/onekey/CityListActivity$3;-><init>(Lcom/boohee/one/onekey/CityListActivity;Landroid/content/Context;)V

    invoke-static {v2, v0, v3, p0}, Lcom/boohee/one/http/client/BingoClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/onekey/CityListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "starter":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onCitySelected(ILjava/lang/String;)V
    .locals 1
    .param p1, "city_id"    # I
    .param p2, "city_name"    # Ljava/lang/String;

    .prologue
    .line 201
    iput p1, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    .line 202
    iput-object p2, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityName:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    invoke-virtual {v0, p1}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->updateListView(I)V

    .line 204
    iget-object v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mHotCityAdapter:Lcom/boohee/one/onekey/adapter/HotCityAdapter;

    invoke-virtual {v0, p1}, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->updateListView(I)V

    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01cb
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget v0, p0, Lcom/boohee/one/onekey/CityListActivity;->mCityId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    const-string v0, "\u8bf7\u9009\u62e9\u57ce\u5e02"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/onekey/CityListActivity;->sendLocationToServer()V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01cb
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030061

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/CityListActivity;->setContentView(I)V

    .line 86
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 87
    invoke-direct {p0}, Lcom/boohee/one/onekey/CityListActivity;->initViews()V

    .line 88
    invoke-direct {p0}, Lcom/boohee/one/onekey/CityListActivity;->requestCityList()V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 255
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 256
    return-void
.end method
