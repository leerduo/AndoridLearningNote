.class Lcom/boohee/one/ui/PeriodCalendarActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "PeriodCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/PeriodCalendarActivity;->recordMc(Ljava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$4;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 242
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$4;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$4;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # invokes: Lcom/boohee/one/ui/PeriodCalendarActivity;->requestRecords()V
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$600(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    .line 244
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$4;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->setResult(I)V

    .line 246
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/PeriodEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/PeriodEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
