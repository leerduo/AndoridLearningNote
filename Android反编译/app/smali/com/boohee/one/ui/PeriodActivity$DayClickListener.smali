.class Lcom/boohee/one/ui/PeriodActivity$DayClickListener;
.super Ljava/lang/Object;
.source "PeriodActivity.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/PeriodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/PeriodActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/PeriodActivity$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/prolificinteractive/materialcalendarview/BooheeDayView;)V
    .locals 5
    .param p1, "booheeDayView"    # Lcom/prolificinteractive/materialcalendarview/BooheeDayView;

    .prologue
    const/4 v4, 0x0

    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodActivity;->access$1100(Lcom/boohee/one/ui/PeriodActivity;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    new-instance v1, Lcom/boohee/myview/BooheePeroidDialog;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/BooheePeroidDialog;-><init>(Landroid/content/Context;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    # setter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$202(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/myview/BooheePeroidDialog;)Lcom/boohee/myview/BooheePeroidDialog;

    .line 228
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/PeriodActivity$MCComingListener;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {v1, v2, v4}, Lcom/boohee/one/ui/PeriodActivity$MCComingListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BooheePeroidDialog;->setMcComingListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/PeriodActivity$MCLeaveListener;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {v1, v2, v4}, Lcom/boohee/one/ui/PeriodActivity$MCLeaveListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BooheePeroidDialog;->setMcLeaveListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/BooheeDayView;->getDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->couldDelete(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$1400(Lcom/boohee/one/ui/PeriodActivity;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {v1, v2, v4}, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BooheePeroidDialog;->setMcDeleteListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/BooheePeroidDialog;->show()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/boohee/myview/BooheePeroidDialog;->setMcDeleteListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
