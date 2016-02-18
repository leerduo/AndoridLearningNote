.class Lcom/boohee/one/video/ui/VideoHistoryActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "VideoHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoHistoryActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 84
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoHistoryActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->access$200(Lcom/boohee/one/video/ui/VideoHistoryActivity;Lorg/json/JSONObject;)V

    .line 85
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 90
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->dismissLoading()V

    .line 91
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$3;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 92
    return-void
.end method
