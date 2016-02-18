.class public Lcom/boohee/one/ui/PeriodActivity;
.super Lcom/boohee/main/GestureActivity;
.source "PeriodActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/PeriodActivity$DayClickListener;,
        Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;,
        Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;,
        Lcom/boohee/one/ui/PeriodActivity$MCLeaveListener;,
        Lcom/boohee/one/ui/PeriodActivity$MCComingListener;
    }
.end annotation


# instance fields
.field private currentMmc:Lcom/boohee/model/MonthMc;

.field private currentMonth:I

.field private currentYear:I

.field private dialog:Lcom/boohee/myview/BooheePeroidDialog;

.field private today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 49
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/PeriodActivity;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 51
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    .line 52
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->today()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    .line 222
    return-void
.end method

.method static synthetic access$1002(Lcom/boohee/one/ui/PeriodActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/PeriodActivity;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity;->today:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/one/ui/PeriodActivity;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity;->couldDelete(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/myview/BooheePeroidDialog;)Lcom/boohee/myview/BooheePeroidDialog;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # Lcom/boohee/myview/BooheePeroidDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/PeriodActivity;Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/PeriodActivity;->recordMc(Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/PeriodActivity;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/model/MonthMc;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/model/MonthMc;)Lcom/boohee/model/MonthMc;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # Lcom/boohee/model/MonthMc;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/model/MonthMc;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # Lcom/boohee/model/MonthMc;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity;->getBooheeCalendarDay(Lcom/boohee/model/MonthMc;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/PeriodActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodActivity;->getCurrentYearMonth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/PeriodActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity;->getMcStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/boohee/one/ui/PeriodActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    return p1
.end method

.method private couldDelete(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 5
    .param p1, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v3, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v3, v3, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    if-nez v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v2

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v3, v3, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MonthMc$Section;

    .line 242
    .local v1, "section":Lcom/boohee/model/MonthMc$Section;
    const-string v3, "mc"

    iget-object v4, v1, Lcom/boohee/model/MonthMc$Section;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/boohee/model/MonthMc$Section;->start:I

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v4

    if-eq v3, v4, :cond_3

    iget v3, v1, Lcom/boohee/model/MonthMc$Section;->end:I

    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 244
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getBooheeCalendarDay(Lcom/boohee/model/MonthMc;)Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    .locals 9
    .param p1, "mmc"    # Lcom/boohee/model/MonthMc;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 104
    :cond_1
    :goto_0
    return-object v0

    .line 75
    :cond_2
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;-><init>()V

    .line 76
    .local v0, "booheeCalendarDay":Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p1, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 77
    iget-object v5, p1, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/MonthMc$Section;

    .line 78
    .local v4, "section":Lcom/boohee/model/MonthMc$Section;
    const-string v5, "mc"

    iget-object v6, v4, Lcom/boohee/model/MonthMc$Section;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    iget v5, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    iget v6, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v4, Lcom/boohee/model/MonthMc$Section;->start:I

    invoke-static {v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    iget v6, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    iget v7, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    add-int/lit8 v7, v7, -0x1

    iget v8, v4, Lcom/boohee/model/MonthMc$Section;->end:I

    invoke-static {v6, v7, v8}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    const-string v7, "#FE52B7"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->setColorDayRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    .line 76
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_4
    const-string v5, "prediction"

    iget-object v6, v4, Lcom/boohee/model/MonthMc$Section;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 86
    iget v5, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    iget v6, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v4, Lcom/boohee/model/MonthMc$Section;->start:I

    invoke-static {v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    iget v6, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    iget v7, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    add-int/lit8 v7, v7, -0x1

    iget v8, v4, Lcom/boohee/model/MonthMc$Section;->end:I

    invoke-static {v6, v7, v8}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    const-string v7, "#FAB5D4"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->setColorDayRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    goto :goto_2

    .line 90
    :cond_5
    const-string v5, "pregnancy"

    iget-object v6, v4, Lcom/boohee/model/MonthMc$Section;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    iget v5, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    iget v6, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    add-int/lit8 v6, v6, -0x1

    iget v7, v4, Lcom/boohee/model/MonthMc$Section;->start:I

    invoke-static {v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v5

    iget v6, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    iget v7, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    add-int/lit8 v7, v7, -0x1

    iget v8, v4, Lcom/boohee/model/MonthMc$Section;->end:I

    invoke-static {v6, v7, v8}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(III)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v6

    const-string v7, "#5856D6"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->setColorDayRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    goto :goto_2

    .line 99
    .end local v4    # "section":Lcom/boohee/model/MonthMc$Section;
    :cond_6
    iget-object v5, p1, Lcom/boohee/model/MonthMc;->oviposit_day:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    iget-object v5, p1, Lcom/boohee/model/MonthMc;->oviposit_day:Ljava/lang/String;

    invoke-static {v5}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 101
    .local v3, "oviDate":Ljava/util/Date;
    invoke-static {v3}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->from(Ljava/util/Date;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v2

    .line 102
    .local v2, "oviCalendarDay":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    const v5, 0x7f020297

    invoke-virtual {v0, v2, v2, v5}, Lcom/prolificinteractive/materialcalendarview/BooheeCalendarDay;->setDrawableDayRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;I)V

    goto/16 :goto_0
.end method

.method private getCurrentYearMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/boohee/one/ui/PeriodActivity;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/PeriodActivity;->currentMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getMcStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "year_month"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/boohee/one/ui/PeriodActivity;->showLoading()V

    .line 144
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/PeriodActivity$1;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/PeriodActivity$1;-><init>(Lcom/boohee/one/ui/PeriodActivity;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/boohee/api/OneApi;->getMcPeriodsMonth(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 164
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    const v1, 0x7f0e01f5

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/PeriodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    iput-object v1, p0, Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    .line 64
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v2, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/PeriodActivity$DayClickListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnDayClickListener(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$OnDayClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(Z)V

    .line 66
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    new-instance v2, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/PeriodActivity$MonthChangeListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity;->widget:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Ljava/util/Date;)V

    .line 70
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodActivity;->getCurrentYearMonth()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/boohee/one/ui/PeriodActivity;->getMcStatus(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private recordMc(Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "day"    # Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .prologue
    .line 167
    if-nez p2, :cond_0

    .line 188
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 169
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    invoke-virtual {p2}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/boohee/model/mine/McLatest;->ACTION_START:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "mc_status"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/PeriodActivity$2;

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/PeriodActivity$2;-><init>(Lcom/boohee/one/ui/PeriodActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/boohee/api/RecordApi;->postMcRecords(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 173
    :cond_2
    sget-object v1, Lcom/boohee/model/mine/McLatest;->ACTION_END:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "mc_status"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/PeriodActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodActivity;->init()V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 109
    const/4 v0, 0x0

    const v1, 0x7f0704c3

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 110
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 116
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/one/mine/BiologyClockSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/PeriodActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
