.class public Lcom/boohee/one/ui/StoryCommentActivity;
.super Lcom/boohee/main/GestureActivity;
.source "StoryCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/StoryCommentActivity$ViewHolder;,
        Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"


# instance fields
.field commentBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00fa
    .end annotation
.end field

.field commentEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f9
    .end annotation
.end field

.field private mAdapter:Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mStoryId:Ljava/lang/String;

.field private page:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->page:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/StoryCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryCommentActivity;->getComments()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/StoryCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryCommentActivity;->getNextComments()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/StoryCommentActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/StoryCommentActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/StoryCommentActivity;)Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mAdapter:Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/StoryCommentActivity;Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;)Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;
    .param p1, "x1"    # Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mAdapter:Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    return-object p1
.end method

.method static synthetic access$508(Lcom/boohee/one/ui/StoryCommentActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->page:I

    return v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/StoryCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StoryCommentActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryCommentActivity;->setSelection()V

    return-void
.end method

.method public static comeOn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 265
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/StoryCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getComments()V
    .locals 4

    .prologue
    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->page:I

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mStoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/StoryCommentActivity$4;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryCommentActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StoryCommentActivity$4;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getStoryComment(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 138
    return-void
.end method

.method private getNextComments()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mStoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/StoryCommentActivity$5;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryCommentActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StoryCommentActivity$5;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getStoryComment(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 153
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/StoryCommentActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/StoryCommentActivity$2;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/ui/StoryCommentActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/StoryCommentActivity$3;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 116
    return-void
.end method

.method private sendComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/boohee/one/ui/StoryCommentActivity;->showLoading()V

    .line 157
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mStoryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/StoryCommentActivity$6;

    iget-object v3, p0, Lcom/boohee/one/ui/StoryCommentActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3, p1}, Lcom/boohee/one/ui/StoryCommentActivity$6;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Lcom/boohee/api/StatusApi;->postStoryComment(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 179
    return-void
.end method

.method private setSelection()V
    .locals 3

    .prologue
    .line 259
    iget-object v2, p0, Lcom/boohee/one/ui/StoryCommentActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 260
    .local v1, "position":I
    iget-object v2, p0, Lcom/boohee/one/ui/StoryCommentActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 261
    .local v0, "etext":Landroid/text/Editable;
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 262
    return-void
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/one/ui/StoryCommentActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/StoryCommentActivity$1;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00fa
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const v1, 0x7f070138

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, v0}, Lcom/boohee/one/ui/StoryCommentActivity;->sendComment(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00fa
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryCommentActivity;->setContentView(I)V

    .line 70
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 71
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StoryCommentActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mStoryId:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity;->mStoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/StoryCommentActivity;->initView()V

    .line 76
    invoke-virtual {p0}, Lcom/boohee/one/ui/StoryCommentActivity;->firstLoad()V

    goto :goto_0
.end method
