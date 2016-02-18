.class Lcom/boohee/one/ui/HomeMoreActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "HomeMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/HomeMoreActivity;->getData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/HomeMoreActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/HomeMoreActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONArray;)V

    .line 103
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$100(Lcom/boohee/one/ui/HomeMoreActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    instance-of v1, p1, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p1    # "array":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v1}, Lcom/boohee/model/Event;->parseEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$002(Lcom/boohee/one/ui/HomeMoreActivity;Ljava/util/List;)Ljava/util/List;

    .line 105
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$000(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$000(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    new-instance v2, Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    iget-object v3, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    iget-object v4, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;
    invoke-static {v4}, Lcom/boohee/one/ui/HomeMoreActivity;->access$000(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/boohee/one/ui/HomeMoreActivity;->adapter:Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/HomeMoreActivity;->access$402(Lcom/boohee/one/ui/HomeMoreActivity;Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;)Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    .line 107
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$500(Lcom/boohee/one/ui/HomeMoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->adapter:Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/HomeMoreActivity;->access$400(Lcom/boohee/one/ui/HomeMoreActivity;)Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # operator++ for: Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$108(Lcom/boohee/one/ui/HomeMoreActivity;)I

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 104
    .restart local p1    # "array":Lorg/json/JSONArray;
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "array":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    .restart local p1    # "array":Lorg/json/JSONArray;
    :cond_2
    instance-of v1, p1, Lorg/json/JSONArray;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p1    # "array":Lorg/json/JSONArray;
    :goto_2
    invoke-static {v1}, Lcom/boohee/model/Event;->parseEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Event;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$000(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->adapter:Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$400(Lcom/boohee/one/ui/HomeMoreActivity;)Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/HomeMoreListAdapter;->notifyDataSetChanged()V

    .line 115
    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # operator++ for: Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$108(Lcom/boohee/one/ui/HomeMoreActivity;)I

    goto :goto_1

    .line 111
    .end local v0    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Event;>;"
    .restart local p1    # "array":Lorg/json/JSONArray;
    :cond_3
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "array":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 123
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity$4;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/one/ui/HomeMoreActivity;->access$500(Lcom/boohee/one/ui/HomeMoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 124
    return-void
.end method
