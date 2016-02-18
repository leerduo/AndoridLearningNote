.class Lcom/boohee/one/video/ui/VideoPlayActivity$8;
.super Lcom/boohee/one/http/JsonCallback;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoPlayActivity;->postProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/VideoPlayActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # ++operator for: Lcom/boohee/one/video/ui/VideoPlayActivity;->retry:I
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1604(Lcom/boohee/one/video/ui/VideoPlayActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoPlayActivity;->postProgress()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1300(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    .line 556
    :cond_0
    return-void
.end method

.method public ok(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "REFRESH"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 541
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "special_train_refresh"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 542
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "REFRESH_SPORT_PLAN_FRAGMENT"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 544
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "refresh_one_key_status"

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;
    invoke-static {v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->access$1500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Lesson;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/ui/LessonFinishActivity;->comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;Z)V

    .line 547
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->finish()V

    .line 548
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 561
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity$8;->this$0:Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->dismissLoading()V

    .line 562
    return-void
.end method
