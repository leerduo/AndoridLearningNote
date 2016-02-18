.class public Lcom/boohee/one/ui/TimeLineFragment;
.super Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;
.source "TimeLineFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;,
        Lcom/boohee/one/ui/TimeLineFragment$OnScrollListener;,
        Lcom/boohee/one/ui/TimeLineFragment$Type;
    }
.end annotation


# static fields
.field private static final KEY_CLUB_ID:Ljava/lang/String; = "KEY_CLUB_ID"

.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"


# instance fields
.field private mAbsListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

.field private mAdapter:Lcom/boohee/one/ui/adapter/TimeLineAdapter;

.field private mClubId:I

.field private mIsLoadingData:Z

.field private mListView:Landroid/widget/ListView;

.field private mNomPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private mPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousId:I

.field mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mTopPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private onScrollUpListener:Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    .line 61
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mAbsListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 373
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/TimeLineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/one/ui/TimeLineFragment;->initLoadData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/TimeLineFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/TimeLineFragment;)Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->onScrollUpListener:Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/TimeLineFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/one/ui/TimeLineFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/TimeLineFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/TimeLineFragment;ZLorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/TimeLineFragment;->handlePosts(ZLorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/TimeLineFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/TimeLineFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/TimeLineFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    return v0
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/TimeLineFragment;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method private handleNomPosts(ZLcom/boohee/model/ClubPost;)V
    .locals 3
    .param p1, "isRefresh"    # Z
    .param p2, "clubPost"    # Lcom/boohee/model/ClubPost;

    .prologue
    .line 281
    iget-object v1, p2, Lcom/boohee/model/ClubPost;->posts:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/boohee/model/ClubPost;->posts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p2, Lcom/boohee/model/ClubPost;->posts:Ljava/util/List;

    iget-object v2, p2, Lcom/boohee/model/ClubPost;->posts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    iget v1, v1, Lcom/boohee/model/status/Post;->id:I

    iput v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPreviousId:I

    .line 285
    iget-object v1, p2, Lcom/boohee/model/ClubPost;->posts:Ljava/util/List;

    invoke-static {v1}, Lcom/boohee/model/status/Post;->removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 286
    .local v0, "usablePosts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    if-eqz p1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 288
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private handlePosts(ZLorg/json/JSONObject;)V
    .locals 3
    .param p1, "isRefresh"    # Z
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    .line 302
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-static {p2}, Lcom/boohee/model/ClubPost;->parse(Lorg/json/JSONObject;)Lcom/boohee/model/ClubPost;

    move-result-object v0

    .line 304
    .local v0, "clubPost":Lcom/boohee/model/ClubPost;
    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/boohee/one/ui/TimeLineFragment;->handleTopPosts(ZLcom/boohee/model/ClubPost;)V

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/boohee/one/ui/TimeLineFragment;->handleNomPosts(ZLcom/boohee/model/ClubPost;)V

    .line 310
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 311
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/TimeLineAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private handleTopPosts(ZLcom/boohee/model/ClubPost;)V
    .locals 4
    .param p1, "isRefresh"    # Z
    .param p2, "clubPost"    # Lcom/boohee/model/ClubPost;

    .prologue
    .line 255
    iget-object v1, p2, Lcom/boohee/model/ClubPost;->top_posts:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/boohee/model/ClubPost;->top_posts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 256
    :cond_0
    if-eqz p1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p2, Lcom/boohee/model/ClubPost;->top_posts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 264
    iget-object v1, p2, Lcom/boohee/model/ClubPost;->top_posts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/boohee/model/status/Post;->isTop:Z

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_3
    if-eqz p1, :cond_4

    .line 267
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 268
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/boohee/model/ClubPost;->top_posts:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    iget-object v2, p2, Lcom/boohee/model/ClubPost;->top_posts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private initLoadData()V
    .locals 5

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    sget-object v1, Lcom/boohee/one/ui/TimeLineFragment$Type;->RECENT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    invoke-virtual {v1}, Lcom/boohee/one/ui/TimeLineFragment$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "club_viewStatus"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    .line 211
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    new-instance v3, Lcom/boohee/one/ui/TimeLineFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/TimeLineFragment$5;-><init>(Lcom/boohee/one/ui/TimeLineFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/StatusApi;->getClubPosts(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "club_viewHotStatus"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initRefreshLayout()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mListView:Landroid/widget/ListView;

    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/TimeLineFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/TimeLineFragment$1;-><init>(Lcom/boohee/one/ui/TimeLineFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/TimeLineFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/TimeLineFragment$2;-><init>(Lcom/boohee/one/ui/TimeLineFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 168
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/TimeLineFragment$OnScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/TimeLineFragment$OnScrollListener;-><init>(Lcom/boohee/one/ui/TimeLineFragment;Lcom/boohee/one/ui/TimeLineFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/ui/TimeLineFragment$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/TimeLineFragment$3;-><init>(Lcom/boohee/one/ui/TimeLineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    return-void
.end method

.method private loadMoreData()V
    .locals 6

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPreviousId:I

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mIsLoadingData:Z

    .line 185
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    iget v3, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPreviousId:I

    new-instance v4, Lcom/boohee/one/ui/TimeLineFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/TimeLineFragment$4;-><init>(Lcom/boohee/one/ui/TimeLineFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/StatusApi;->getClubPostsPrevious(Landroid/content/Context;ILjava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/boohee/one/ui/TimeLineFragment$Type;I)Lcom/boohee/one/ui/TimeLineFragment;
    .locals 4
    .param p0, "type"    # Lcom/boohee/one/ui/TimeLineFragment$Type;
    .param p1, "clubId"    # I

    .prologue
    .line 81
    new-instance v1, Lcom/boohee/one/ui/TimeLineFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/TimeLineFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/boohee/one/ui/TimeLineFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "KEY_TYPE"

    # getter for: Lcom/boohee/one/ui/TimeLineFragment$Type;->type:Ljava/lang/String;
    invoke-static {p0}, Lcom/boohee/one/ui/TimeLineFragment$Type;->access$000(Lcom/boohee/one/ui/TimeLineFragment$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "KEY_CLUB_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/TimeLineFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/boohee/one/ui/TimeLineFragment;->initRefreshLayout()V

    .line 144
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "circle_timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/cache/FileCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    .local v0, "cachePosts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    iget v1, v1, Lcom/boohee/model/status/Post;->id:I

    iput v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPreviousId:I

    .line 149
    :cond_0
    new-instance v1, Lcom/boohee/one/ui/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    iget-object v4, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/one/ui/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/TimeLineAdapter;

    .line 150
    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/boohee/one/ui/TimeLineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/TimeLineAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    return-void
.end method

.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mAbsListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    sget-object v1, Lcom/boohee/one/ui/TimeLineFragment$Type;->RECENT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    # getter for: Lcom/boohee/one/ui/TimeLineFragment$Type;->type:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/TimeLineFragment$Type;->access$000(Lcom/boohee/one/ui/TimeLineFragment$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->pullToRefresh()V

    .line 129
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    const-string v1, "KEY_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    .line 95
    const-string v1, "KEY_CLUB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    .line 97
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string v0, "KEY_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    .line 104
    const-string v0, "KEY_CLUB_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    .line 106
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    const v1, 0x7f0300f8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 114
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-super {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onDetach()V

    .line 358
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mTopPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mNomPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mPosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iput-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mListView:Landroid/widget/ListView;

    .line 362
    iput-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mAdapter:Lcom/boohee/one/ui/adapter/TimeLineAdapter;

    .line 363
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "outState":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .restart local p1    # "outState":Landroid/os/Bundle;
    :cond_0
    const-string v0, "KEY_TYPE"

    iget-object v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "KEY_CLUB_ID"

    iget v1, p0, Lcom/boohee/one/ui/TimeLineFragment;->mClubId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/boohee/one/ui/TimeLineFragment;->init()V

    .line 121
    return-void
.end method

.method public pullToRefresh()V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment;->mRefreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/TimeLineFragment$6;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/TimeLineFragment$6;-><init>(Lcom/boohee/one/ui/TimeLineFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setOnScrollUpListener(Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;)V
    .locals 0
    .param p1, "onScrollUpListener"    # Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/boohee/one/ui/TimeLineFragment;->onScrollUpListener:Lcom/boohee/one/ui/TimeLineFragment$OnScrollUpListener;

    .line 379
    return-void
.end method
