.class Lcom/boohee/one/ui/PeriodActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "PeriodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/PeriodActivity;->getMcStatus(Ljava/lang/String;)V
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
    .line 144
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 148
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/PeriodActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$400(Lcom/boohee/one/ui/PeriodActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    const-string v1, "month_mc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/MonthMc;->parse(Ljava/lang/String;)Lcom/boohee/model/MonthMc;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$502(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/model/MonthMc;)Lcom/boohee/model/MonthMc;

    .line 150
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$500(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/model/MonthMc;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$500(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/model/MonthMc;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$400(Lcom/boohee/one/ui/PeriodActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;
    invoke-static {v2}, Lcom/boohee/one/ui/PeriodActivity;->access$500(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/model/MonthMc;

    move-result-object v2

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->getBooheeCalendarDay(Lcom/boohee/model/MonthMc;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/PeriodActivity;->access$600(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/model/MonthMc;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setBooheeCalendarDay(Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;)V

    .line 152
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$400(Lcom/boohee/one/ui/PeriodActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDays()V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/PeriodActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/one/mine/McInitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 161
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$1;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/PeriodActivity;->dismissLoading()V

    .line 162
    return-void
.end method
