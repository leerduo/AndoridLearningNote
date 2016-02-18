.class Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "SpecialLessonDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getLessonData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$200(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sport_lesson_detail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lessonId:I
    invoke-static {v3}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$100(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    # invokes: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$000(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Lorg/json/JSONObject;)V

    .line 159
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 151
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # invokes: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$000(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Lorg/json/JSONObject;)V

    .line 152
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$200(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sport_lesson_detail_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    # getter for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lessonId:I
    invoke-static {v2}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$100(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 153
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 164
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->dismissLoading()V

    .line 166
    return-void
.end method
