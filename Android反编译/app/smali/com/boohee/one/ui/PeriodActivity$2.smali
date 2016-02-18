.class Lcom/boohee/one/ui/PeriodActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "PeriodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/PeriodActivity;->recordMc(Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/PeriodActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity$2;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$2;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/PeriodActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$2;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$2;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->getCurrentYearMonth()Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodActivity;->access$700(Lcom/boohee/one/ui/PeriodActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->getMcStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$800(Lcom/boohee/one/ui/PeriodActivity;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$2;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->setResult(I)V

    .line 185
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/PeriodEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/PeriodEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
