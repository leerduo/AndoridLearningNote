.class Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddSpecialLessonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;->this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 80
    iget-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;->this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    # invokes: Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->access$100(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 73
    iget-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;->this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->pullToRefresh:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 74
    iget-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$2;->this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->dismissLoading()V

    .line 75
    return-void
.end method
