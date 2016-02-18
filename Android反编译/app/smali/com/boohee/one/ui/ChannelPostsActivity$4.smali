.class Lcom/boohee/one/ui/ChannelPostsActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChannelPostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChannelPostsActivity;->getNextTopic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChannelPostsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChannelPostsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity$4;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 154
    :try_start_0
    const-string v3, "posts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 155
    .local v2, "postsArray":Lorg/json/JSONArray;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "postsArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v3}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    .local v1, "morePosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    if-eqz v1, :cond_0

    .line 157
    iget-object v3, p0, Lcom/boohee/one/ui/ChannelPostsActivity$4;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$400(Lcom/boohee/one/ui/ChannelPostsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, p0, Lcom/boohee/one/ui/ChannelPostsActivity$4;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
    invoke-static {v3}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$700(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object v3, p0, Lcom/boohee/one/ui/ChannelPostsActivity$4;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    const/4 v4, 0x0

    # setter for: Lcom/boohee/one/ui/ChannelPostsActivity;->isLastVisible:Z
    invoke-static {v3, v4}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$102(Lcom/boohee/one/ui/ChannelPostsActivity;Z)Z

    .line 164
    .end local v1    # "morePosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    :cond_0
    :goto_1
    return-void

    .line 155
    .restart local v2    # "postsArray":Lorg/json/JSONArray;
    :cond_1
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "postsArray":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$4;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$600(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 170
    return-void
.end method
