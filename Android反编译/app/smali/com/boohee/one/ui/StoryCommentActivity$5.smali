.class Lcom/boohee/one/ui/StoryCommentActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryCommentActivity;->getNextComments()V
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
    .line 141
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity$5;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 145
    const-string v1, "comments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Comment;->parseComments(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Comment;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity$5;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # getter for: Lcom/boohee/one/ui/StoryCommentActivity;->mComments:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/StoryCommentActivity;->access$200(Lcom/boohee/one/ui/StoryCommentActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity$5;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # getter for: Lcom/boohee/one/ui/StoryCommentActivity;->mAdapter:Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/StoryCommentActivity;->access$300(Lcom/boohee/one/ui/StoryCommentActivity;)Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/StoryCommentActivity$CommentListAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity$5;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # operator++ for: Lcom/boohee/one/ui/StoryCommentActivity;->page:I
    invoke-static {v1}, Lcom/boohee/one/ui/StoryCommentActivity;->access$508(Lcom/boohee/one/ui/StoryCommentActivity;)I

    .line 151
    :cond_0
    return-void
.end method
