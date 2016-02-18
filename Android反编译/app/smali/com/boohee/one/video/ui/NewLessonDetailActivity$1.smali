.class Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "NewLessonDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/NewLessonDetailActivity;->getLessonData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v1}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$100(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    const-string v2, "sport_lesson_detail"

    invoke-virtual {v1, v2}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    # invokes: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$000(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Lorg/json/JSONObject;)V

    .line 164
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 155
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$000(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Lorg/json/JSONObject;)V

    .line 157
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/NewLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->access$100(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    const-string v1, "sport_lesson_detail"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 158
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 169
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->dismissLoading()V

    .line 171
    return-void
.end method
