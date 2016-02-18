.class Lcom/boohee/one/video/ui/SportPlanActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "SportPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SportPlanActivity;->getSportPlan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SportPlanActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SportPlanActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget-object v1, v1, Lcom/boohee/one/video/ui/SportPlanActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    const-string v2, "sport_lesson"

    invoke-virtual {v1, v2}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    # invokes: Lcom/boohee/one/video/ui/SportPlanActivity;->handlerData(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/SportPlanActivity;->access$100(Lcom/boohee/one/video/ui/SportPlanActivity;Lorg/json/JSONObject;)V

    .line 166
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 158
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    # invokes: Lcom/boohee/one/video/ui/SportPlanActivity;->handlerData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/SportPlanActivity;->access$100(Lcom/boohee/one/video/ui/SportPlanActivity;Lorg/json/JSONObject;)V

    .line 159
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SportPlanActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    const-string v1, "sport_lesson"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 160
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 171
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/SportPlanActivity;->dismissLoading()V

    .line 172
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportPlanActivity$3;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SportPlanActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 174
    :cond_0
    return-void
.end method
