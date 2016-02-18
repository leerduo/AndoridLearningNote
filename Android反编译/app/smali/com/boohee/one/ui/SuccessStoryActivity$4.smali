.class Lcom/boohee/one/ui/SuccessStoryActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "SuccessStoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryActivity;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$4;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$4;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    # invokes: Lcom/boohee/one/ui/SuccessStoryActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$200(Lcom/boohee/one/ui/SuccessStoryActivity;Lorg/json/JSONObject;)V

    .line 137
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 142
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$4;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/SuccessStoryActivity;->pullToRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 143
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$4;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->dismissLoading()V

    .line 144
    return-void
.end method
