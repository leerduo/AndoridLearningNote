.class public Lcom/boohee/one/ui/ChannelPostsActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ChannelPostsActivity.java"


# static fields
.field public static final DEFAULT_HEIGHT:I = 0x140

.field public static final DEFAULT_WIDTH:I = 0x280

.field public static final EXTRA_SLUG:Ljava/lang/String; = "extra_slug"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private fab_button:Landroid/support/design/widget/FloatingActionButton;

.field private isLastVisible:Z

.field private mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

.field private mHeaderView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mSlug:Ljava/lang/String;

.field private mTopic:Lcom/boohee/model/status/Topic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/boohee/one/ui/ChannelPostsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/ChannelPostsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->isLastVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ChannelPostsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/ChannelPostsActivity;->getCurrentTopic()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/ChannelPostsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/ChannelPostsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/ChannelPostsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/ChannelPostsActivity;->getNextTopic()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/boohee/model/status/Topic;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/ChannelPostsActivity;Lcom/boohee/model/status/Topic;)Lcom/boohee/model/status/Topic;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;
    .param p1, "x1"    # Lcom/boohee/model/status/Topic;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/ChannelPostsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/ChannelPostsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/ChannelPostsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/ChannelPostsActivity;->initUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/ChannelPostsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ChannelPostsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/ChannelPostsActivity;->startImageLinkActivity()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slug"    # Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ChannelPostsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_slug"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 90
    const v1, 0x7f0e00e2

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->fab_button:Landroid/support/design/widget/FloatingActionButton;

    .line 91
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->fab_button:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 93
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 96
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 98
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mListView:Landroid/widget/ListView;

    .line 99
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/ChannelPostsActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/ChannelPostsActivity$1;-><init>(Lcom/boohee/one/ui/ChannelPostsActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 107
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/one/ui/ChannelPostsActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/ChannelPostsActivity$2;-><init>(Lcom/boohee/one/ui/ChannelPostsActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 114
    return-void
.end method

.method private getCurrentTopic()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mSlug:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/ChannelPostsActivity$3;

    iget-object v3, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/ChannelPostsActivity$3;-><init>(Lcom/boohee/one/ui/ChannelPostsActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getChannelPosts(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getNextTopic()V
    .locals 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->isLastVisible:Z

    .line 148
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    iget v0, v1, Lcom/boohee/model/status/Post;->id:I

    .line 149
    .local v0, "previous_id":I
    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mSlug:Ljava/lang/String;

    new-instance v3, Lcom/boohee/one/ui/ChannelPostsActivity$4;

    iget-object v4, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/ChannelPostsActivity$4;-><init>(Lcom/boohee/one/ui/ChannelPostsActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/api/StatusApi;->getChannelPostsPrevious(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 175
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v0, v0, Lcom/boohee/model/status/Topic;->head_image_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    const/16 v1, 0x280

    const/16 v2, 0x140

    invoke-static {p0, v0, v1, v2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v1, v1, Lcom/boohee/model/status/Topic;->head_image_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x33aa66cc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 179
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v0, v0, Lcom/boohee/model/status/Topic;->page_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "\u8be6\u60c5"

    invoke-interface {v0, v1, v5, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mHeaderView:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/one/ui/ChannelPostsActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/ChannelPostsActivity$5;-><init>(Lcom/boohee/one/ui/ChannelPostsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_0
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    .line 192
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    return-void
.end method

.method private startImageLinkActivity()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v2, v2, Lcom/boohee/model/status/Topic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "url"

    iget-object v2, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v2, v2, Lcom/boohee/model/status/Topic;->page_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->setContentView(I)V

    .line 67
    const-string v0, "extra_slug"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mSlug:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/boohee/one/ui/ChannelPostsActivity;->findViews()V

    .line 69
    invoke-static {p0}, Lcom/boohee/one/ui/PullToRefreshHelper;->loadFirst(Landroid/app/Activity;)V

    .line 70
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity;->mMenu:Landroid/view/Menu;

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 82
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/one/ui/ChannelPostsActivity;->startImageLinkActivity()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
