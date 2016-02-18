.class Lcom/boohee/one/ui/PeriodCalendarActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "PeriodCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/PeriodCalendarActivity;->requestRecords()V
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
    .line 115
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    const-string v1, "month_mc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/MonthMc;->parse(Ljava/lang/String;)Lcom/boohee/model/MonthMc;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$002(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/model/MonthMc;)Lcom/boohee/model/MonthMc;

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$000(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/model/MonthMc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # invokes: Lcom/boohee/one/ui/PeriodCalendarActivity;->getPeriodRecordData()V
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$100(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    .line 122
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->recordList:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$200(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    new-instance v1, Lcom/boohee/calendar/PeriodCalendarAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/PeriodCalendarActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyyMM"

    invoke-static {v3, v4}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->recordList:Ljava/util/List;
    invoke-static {v4}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$200(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/calendar/PeriodCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;)V

    # setter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$402(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/calendar/PeriodCalendarAdapter;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/PeriodCalendarActivity;->calendarGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 132
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$1;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->dismissLoading()V

    .line 133
    return-void
.end method
