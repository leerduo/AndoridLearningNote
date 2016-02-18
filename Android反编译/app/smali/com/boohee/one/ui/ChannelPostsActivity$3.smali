.class Lcom/boohee/one/ui/ChannelPostsActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChannelPostsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChannelPostsActivity;->getCurrentTopic()V
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
    .line 121
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    const-string v1, "channel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Topic;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/Topic;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$302(Lcom/boohee/one/ui/ChannelPostsActivity;Lcom/boohee/model/status/Topic;)Lcom/boohee/model/status/Topic;

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$300(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/boohee/model/status/Topic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$300(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/boohee/model/status/Topic;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/status/Topic;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mTopic:Lcom/boohee/model/status/Topic;
    invoke-static {v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$300(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/boohee/model/status/Topic;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/Topic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    const-string v1, "posts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$402(Lcom/boohee/one/ui/ChannelPostsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 130
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # invokes: Lcom/boohee/one/ui/ChannelPostsActivity;->initUI()V
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$500(Lcom/boohee/one/ui/ChannelPostsActivity;)V

    .line 131
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$3;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$600(Lcom/boohee/one/ui/ChannelPostsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 137
    return-void
.end method
