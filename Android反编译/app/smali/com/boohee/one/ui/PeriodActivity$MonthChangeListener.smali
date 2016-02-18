.class Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;
.super Ljava/lang/Object;
.source "PeriodActivity.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/PeriodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/PeriodActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/PeriodActivity$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;)V

    return-void
.end method


# virtual methods
.method public onMonthChanged(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2
    .param p1, "materialCalendarView"    # Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .param p2, "calendarDay"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v1

    # setter for: Lcom/boohee/one/ui/PeriodActivity;->currentYear:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$902(Lcom/boohee/one/ui/PeriodActivity;I)I

    .line 217
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$1002(Lcom/boohee/one/ui/PeriodActivity;I)I

    .line 218
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->getCurrentYearMonth()Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodActivity;->access$700(Lcom/boohee/one/ui/PeriodActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->getMcStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/PeriodActivity;->access$800(Lcom/boohee/one/ui/PeriodActivity;Ljava/lang/String;)V

    .line 219
    return-void
.end method
