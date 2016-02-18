.class Lcom/boohee/one/ui/StoryCommentActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryCommentActivity;->getComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryCommentActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryCommentActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    const-string v1, "comments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Comment;->parseComments(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/StoryCommentActivity;->access$202(Lcom/boohee/one/ui/StoryCommentActivity;Ljava/util/List;)Ljava/util/List;

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # getter for: Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/StoryCommentActivity;->access$200(Lcom/boohee/one/ui/StoryCommentActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # getter for: Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/StoryCommentActivity;->access$200(Lcom/boohee/one/ui/StoryCommentActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    new-instance v1, Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;-><init>(Lcom/boohee/one/ui/StoryCommentActivity;Lcom/boohee/one/ui/StoryCommentActivity$1;)V

    # setter for: Lcom/boohee/one/ui/StoryCommentActivity;->mAdapter:Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/StoryCommentActivity;->access$302(Lcom/boohee/one/ui/StoryCommentActivity;Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;)Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryCommentActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # getter for: Lcom/boohee/one/ui/StoryCommentActivity;->mAdapter:Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/StoryCommentActivity;->access$300(Lcom/boohee/one/ui/StoryCommentActivity;)Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # operator++ for: Lcom/boohee/one/ui/StoryCommentActivity;->page:I
    invoke-static {v0}, Lcom/boohee/one/ui/StoryCommentActivity;->access$508(Lcom/boohee/one/ui/StoryCommentActivity;)I

    .line 130
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 135
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$4;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryCommentActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 136
    return-void
.end method
