.class Lcom/boohee/one/video/ui/LessonDetailActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "LessonDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/LessonDetailActivity;->getLessonData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/LessonDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/LessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v1}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$100(Lcom/boohee/one/video/ui/LessonDetailActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    const-string v2, "sport_lesson_detail"

    invoke-virtual {v1, v2}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    # invokes: Lcom/boohee/one/video/ui/LessonDetailActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$000(Lcom/boohee/one/video/ui/LessonDetailActivity;Lorg/json/JSONObject;)V

    .line 149
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 141
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/LessonDetailActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$000(Lcom/boohee/one/video/ui/LessonDetailActivity;Lorg/json/JSONObject;)V

    .line 142
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/LessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->access$100(Lcom/boohee/one/video/ui/LessonDetailActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    const-string v1, "sport_lesson_detail"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 143
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 154
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/LessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/LessonDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->dismissLoading()V

    .line 156
    return-void
.end method
