.class Lcom/boohee/one/onekey/OneKeyContactActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "OneKeyContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public finishWithMock(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->finishWithMock(Lorg/json/JSONObject;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->ok(Lorg/json/JSONObject;)V

    .line 214
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 188
    const-string v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/one/onekey/model/ContactMessage;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 190
    .local v0, "tmpMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/one/onekey/model/ContactMessage;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 192
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    # setter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->selection:I
    invoke-static {v1, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$202(Lcom/boohee/one/onekey/OneKeyContactActivity;I)I

    .line 193
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->adapter:Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$300(Lcom/boohee/one/onekey/OneKeyContactActivity;)Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->notifyDataSetChanged()V

    .line 194
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v1, v1, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # invokes: Lcom/boohee/one/onekey/OneKeyContactActivity;->showDialog(Lorg/json/JSONObject;)V
    invoke-static {v1, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$500(Lcom/boohee/one/onekey/OneKeyContactActivity;Lorg/json/JSONObject;)V

    .line 208
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 219
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->dismissLoading()V

    .line 220
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 221
    return-void
.end method
