.class public abstract Lcom/boohee/calendar/BaseCalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/calendar/BaseCalendarAdapter$onCalendarItemSelectedListener;
    }
.end annotation


# instance fields
.field private chooseDate:Ljava/util/Date;

.field protected ctx:Landroid/content/Context;

.field protected currentDayPosition:I

.field protected currentFlag:I

.field protected currentMonth:I

.field protected currentSelected:I

.field protected currentYear:I

.field protected date:Ljava/util/Date;

.field protected dayNumber:[Ljava/lang/String;

.field protected dayOfWeek:I

.field protected daysOfMonth:I

.field protected isLeapyear:Z

.field protected lastDaysOfMonth:I

.field public onCalendarItemSelectedListener:Lcom/boohee/calendar/BaseCalendarAdapter$onCalendarItemSelectedListener;

.field protected recordTagFlag:[I

.field protected records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/boohee/calendar/CountDate;",
            ">;"
        }
    .end annotation
.end field

.field protected sc:Lcom/boohee/calendar/SpecialCalendar;

.field protected sys_day:I

.field protected sys_month:I

.field protected sys_year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;Ljava/util/Date;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # Ljava/util/Date;
    .param p4, "chooseDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<+",
            "Lcom/boohee/calendar/CountDate;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "records":Ljava/util/List;, "Ljava/util/List<+Lcom/boohee/calendar/CountDate;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->isLeapyear:Z

    .line 23
    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->daysOfMonth:I

    .line 24
    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    .line 25
    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->lastDaysOfMonth:I

    .line 26
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    .line 33
    iput v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentDayPosition:I

    .line 34
    iput v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentSelected:I

    .line 35
    iput v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentFlag:I

    .line 43
    iput-object v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->recordTagFlag:[I

    .line 53
    iput-object p1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->ctx:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/boohee/calendar/SpecialCalendar;

    invoke-direct {v0}, Lcom/boohee/calendar/SpecialCalendar;-><init>()V

    iput-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    .line 55
    iput-object p2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->date:Ljava/util/Date;

    .line 56
    iput-object p4, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->chooseDate:Ljava/util/Date;

    .line 57
    invoke-direct {p0}, Lcom/boohee/calendar/BaseCalendarAdapter;->getSysDate()V

    .line 58
    iput-object p3, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/boohee/calendar/BaseCalendarAdapter;->init()V

    .line 60
    return-void
.end method

.method private getSysDate()V
    .locals 3

    .prologue
    .line 69
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 70
    .local v1, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sys_year:I

    .line 73
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sys_month:I

    .line 74
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sys_day:I

    .line 75
    return-void
.end method

.method private getweek(II)V
    .locals 13
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 117
    const/4 v3, 0x1

    .line 118
    .local v3, "j":I
    const/4 v1, 0x0

    .line 119
    .local v1, "flag":I
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 120
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->recordTagFlag:[I

    .line 122
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_7

    .line 123
    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    if-ge v2, v10, :cond_2

    .line 124
    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->lastDaysOfMonth:I

    iget v11, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    sub-int/2addr v10, v11

    add-int/lit8 v9, v10, 0x1

    .line 125
    .local v9, "temp":I
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 122
    .end local v9    # "temp":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_2
    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->daysOfMonth:I

    iget v11, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    add-int/2addr v10, v11

    if-ge v2, v10, :cond_6

    .line 127
    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    sub-int v10, v2, v10

    add-int/lit8 v0, v10, 0x1

    .line 128
    .local v0, "day":I
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    sub-int v12, v2, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 130
    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sys_year:I

    if-ne v10, p1, :cond_3

    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sys_month:I

    if-ne v10, p2, :cond_3

    iget v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sys_day:I

    if-ne v10, v0, :cond_3

    .line 131
    iput v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentFlag:I

    .line 134
    :cond_3
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->chooseDate:Ljava/util/Date;

    invoke-static {v10}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v10

    if-ne v10, p1, :cond_4

    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->chooseDate:Ljava/util/Date;

    invoke-static {v10}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v10

    if-ne v10, p2, :cond_4

    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->chooseDate:Ljava/util/Date;

    invoke-static {v10}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v10

    if-ne v10, v0, :cond_4

    .line 135
    iput v2, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentDayPosition:I

    .line 138
    :cond_4
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 139
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_2
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 140
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/boohee/calendar/CountDate;

    .line 141
    .local v8, "record":Lcom/boohee/calendar/CountDate;
    invoke-interface {v8}, Lcom/boohee/calendar/CountDate;->getYear()I

    move-result v7

    .line 142
    .local v7, "matchYear":I
    invoke-interface {v8}, Lcom/boohee/calendar/CountDate;->getMonth()I

    move-result v6

    .line 143
    .local v6, "matchMonth":I
    invoke-interface {v8}, Lcom/boohee/calendar/CountDate;->getDay()I

    move-result v5

    .line 144
    .local v5, "matchDay":I
    if-ne v7, p1, :cond_5

    if-ne v6, p2, :cond_5

    if-ne v5, v0, :cond_5

    .line 145
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->recordTagFlag:[I

    aput v2, v10, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 139
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "day":I
    .end local v4    # "m":I
    .end local v5    # "matchDay":I
    .end local v6    # "matchMonth":I
    .end local v7    # "matchYear":I
    .end local v8    # "record":Lcom/boohee/calendar/CountDate;
    :cond_6
    iget-object v10, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 155
    :cond_7
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentYear:I

    .line 64
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentMonth:I

    .line 65
    iget v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentYear:I

    iget v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentMonth:I

    invoke-virtual {p0, v0, v1}, Lcom/boohee/calendar/BaseCalendarAdapter;->getCalendar(II)V

    .line 66
    return-void
.end method


# virtual methods
.method public endPosition()I
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->daysOfMonth:I

    iget v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCalendar(II)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    invoke-virtual {v0, p1}, Lcom/boohee/calendar/SpecialCalendar;->isLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->isLeapyear:Z

    .line 109
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    iget-boolean v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->isLeapyear:Z

    invoke-virtual {v0, v1, p2}, Lcom/boohee/calendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->daysOfMonth:I

    .line 110
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/boohee/calendar/SpecialCalendar;->getWeekdayOfMonth(II)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    .line 111
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    iget-boolean v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->isLeapyear:Z

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/calendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->lastDaysOfMonth:I

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/boohee/calendar/BaseCalendarAdapter;->getweek(II)V

    .line 113
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/16 v0, 0x23

    .line 79
    invoke-virtual {p0}, Lcom/boohee/calendar/BaseCalendarAdapter;->endPosition()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/boohee/calendar/BaseCalendarAdapter;->getDateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateString(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->currentMonth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public setChangeListener(Lcom/boohee/calendar/BaseCalendarAdapter$onCalendarItemSelectedListener;)V
    .locals 0
    .param p1, "onCalendarItemSelectedListener"    # Lcom/boohee/calendar/BaseCalendarAdapter$onCalendarItemSelectedListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->onCalendarItemSelectedListener:Lcom/boohee/calendar/BaseCalendarAdapter$onCalendarItemSelectedListener;

    .line 173
    return-void
.end method

.method public startPosition()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/boohee/calendar/BaseCalendarAdapter;->dayOfWeek:I

    return v0
.end method
