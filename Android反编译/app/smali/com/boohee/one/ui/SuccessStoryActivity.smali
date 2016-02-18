.class public Lcom/boohee/one/ui/SuccessStoryActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SuccessStoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;
    }
.end annotation


# static fields
.field public static final TAGS:Ljava/lang/String; = "tags"


# instance fields
.field private API:Ljava/lang/String;

.field private adapter:Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

.field ivHeader:Landroid/widget/ImageView;

.field private page:I

.field pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private storyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$ItemsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private successStory:Lcom/boohee/model/SuccessStory;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 47
    const-string v0, "/api/v1/stories?page=%d"

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->API:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->storyList:Ljava/util/List;

    .line 232
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/SuccessStoryActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    return p1
.end method

.method static synthetic access$008(Lcom/boohee/one/ui/SuccessStoryActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/SuccessStoryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->requestData()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/SuccessStoryActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/SuccessStoryActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/SuccessStoryActivity;)Lcom/boohee/model/SuccessStory;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/SuccessStoryActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    return-object v0
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public static comeOnWithTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tags"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-class v0, Lcom/boohee/model/SuccessStory;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/SuccessStory;

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    .line 153
    iget v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->refreshHeader()V

    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->adapter:Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->storyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->storyList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v1, v1, Lcom/boohee/model/SuccessStory;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    new-instance v0, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->storyList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;-><init>(Lcom/boohee/one/ui/SuccessStoryActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->adapter:Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

    .line 160
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->adapter:Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :goto_1
    iget v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->adapter:Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v1, v1, Lcom/boohee/model/SuccessStory;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;->replaceAll(Ljava/util/List;)V

    goto :goto_1

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->storyList:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v1, v1, Lcom/boohee/model/SuccessStory;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->adapter:Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/ui/SuccessStoryActivity$SuccessStoryAdapter;->notifyDataSetChanged()V

    .line 169
    iget v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 86
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030110

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e0395

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ivHeader:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ivHeader:Landroid/widget/ImageView;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 89
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/SuccessStoryActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/SuccessStoryActivity$1;-><init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 98
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/SuccessStoryActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/SuccessStoryActivity$2;-><init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 105
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/SuccessStoryActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/SuccessStoryActivity$3;-><init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    return-void
.end method

.method private refreshHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v0, v0, Lcom/boohee/model/SuccessStory;->sliders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v0, v0, Lcom/boohee/model/SuccessStory;->sliders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ivHeader:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v0, v0, Lcom/boohee/model/SuccessStory;->sliders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/SuccessStory$SlidersEntity;

    iget-object v0, v0, Lcom/boohee/model/SuccessStory$SlidersEntity;->pic_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ivHeader:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ivHeader:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/one/ui/SuccessStoryActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/SuccessStoryActivity$5;-><init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ivHeader:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private requestData()V
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->showLoading()V

    .line 126
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->API:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->page:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string v1, "all"

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    new-instance v1, Lcom/boohee/one/ui/SuccessStoryActivity$4;

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/SuccessStoryActivity$4;-><init>(Lcom/boohee/one/ui/SuccessStoryActivity;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e023c
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "/events/new_stories/case"

    invoke-static {v2}, Lcom/boohee/one/http/client/OneClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e023c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030083

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->setContentView(I)V

    .line 63
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "all"

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "\u6210\u529f\u6545\u4e8b"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->requestData()V

    .line 74
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u529f\u6545\u4e8b-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/boohee/one/ui/SuccessStoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v1, v1, Lcom/boohee/model/SuccessStory;->tags:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;

    iget-object v2, v2, Lcom/boohee/model/SuccessStory;->tags:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/boohee/one/ui/SuccessStoryTagActivity;->comeOn(Landroid/content/Context;Ljava/util/List;)V

    .line 214
    const v1, 0x7f04000f

    const v2, 0x7f04000b

    invoke-virtual {p0, v1, v2}, Lcom/boohee/one/ui/SuccessStoryActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07e0
        :pswitch_0
    .end packed-switch
.end method
