.class Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "SpecialLessonDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->quitTrain()V
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
    .line 280
    iput-object p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 289
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isJoined:Z
    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->access$302(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Z)Z

    .line 290
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    const-string v0, "\u5df2\u9000\u51fa\u8be5\u8bad\u7ec3~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "special_train_refresh"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 294
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "refresh_add_special"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;->this$0:Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->invalidateOptionsMenu()V

    .line 297
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 284
    return-void
.end method
