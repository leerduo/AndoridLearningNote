.class public Lcom/boohee/calendar/WeightCalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeightCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/calendar/WeightCalendarAdapter$onCalendarItemSelectedListener;,
        Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private ctx:Landroid/content/Context;

.field private currentFlag:I

.field private currentMonth:I

.field private currentSelected:I

.field private currentYear:I

.field private date:Ljava/util/Date;

.field private dayNumber:[Ljava/lang/String;

.field private dayOfWeek:I

.field private daysOfMonth:I

.field private isLeapyear:Z

.field private lastDaysOfMonth:I

.field public onCalendarItemSelectedListener:Lcom/boohee/calendar/WeightCalendarAdapter$onCalendarItemSelectedListener;

.field private recordTagFlag:[I

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/BaseRecord;",
            ">;"
        }
    .end annotation
.end field

.field private sc:Lcom/boohee/calendar/SpecialCalendar;

.field private sys_day:I

.field private sys_month:I

.field private sys_year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/calendar/WeightCalendarAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/BaseRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/BaseRecord;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->isLeapyear:Z

    .line 26
    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->daysOfMonth:I

    .line 27
    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    .line 28
    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->lastDaysOfMonth:I

    .line 29
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    .line 36
    iput v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentSelected:I

    .line 37
    iput v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentFlag:I

    .line 44
    iput-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    .line 47
    iput-object p1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/boohee/calendar/SpecialCalendar;

    invoke-direct {v0}, Lcom/boohee/calendar/SpecialCalendar;-><init>()V

    iput-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    .line 49
    iput-object p2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->date:Ljava/util/Date;

    .line 50
    invoke-direct {p0}, Lcom/boohee/calendar/WeightCalendarAdapter;->getSysDate()V

    .line 51
    iput-object p3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lcom/boohee/calendar/WeightCalendarAdapter;->init()V

    .line 53
    return-void
.end method

.method private getSysDate()V
    .locals 3

    .prologue
    .line 67
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 68
    .local v1, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sys_year:I

    .line 71
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sys_month:I

    .line 72
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sys_day:I

    .line 73
    return-void
.end method

.method private getweek(II)V
    .locals 13
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 177
    const/4 v3, 0x1

    .line 178
    .local v3, "j":I
    const/4 v1, 0x0

    .line 179
    .local v1, "flag":I
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 180
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    .line 182
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_6

    .line 183
    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    if-ge v2, v10, :cond_2

    .line 184
    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->lastDaysOfMonth:I

    iget v11, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    sub-int/2addr v10, v11

    add-int/lit8 v9, v10, 0x1

    .line 185
    .local v9, "temp":I
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

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

    .line 182
    .end local v9    # "temp":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_2
    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->daysOfMonth:I

    iget v11, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    add-int/2addr v10, v11

    if-ge v2, v10, :cond_5

    .line 187
    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    sub-int v10, v2, v10

    add-int/lit8 v0, v10, 0x1

    .line 188
    .local v0, "day":I
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

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

    .line 190
    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sys_year:I

    if-ne v10, p1, :cond_3

    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sys_month:I

    if-ne v10, p2, :cond_3

    iget v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sys_day:I

    if-ne v10, v0, :cond_3

    .line 191
    iput v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentFlag:I

    .line 195
    :cond_3
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 196
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_2
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 197
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/boohee/model/mine/BaseRecord;

    .line 198
    .local v8, "record":Lcom/boohee/model/mine/BaseRecord;
    invoke-virtual {v8}, Lcom/boohee/model/mine/BaseRecord;->getYear()I

    move-result v7

    .line 199
    .local v7, "matchYear":I
    invoke-virtual {v8}, Lcom/boohee/model/mine/BaseRecord;->getMonth()I

    move-result v6

    .line 200
    .local v6, "matchMonth":I
    invoke-virtual {v8}, Lcom/boohee/model/mine/BaseRecord;->getDay()I

    move-result v5

    .line 201
    .local v5, "matchDay":I
    if-ne v7, p1, :cond_4

    if-ne v6, p2, :cond_4

    if-ne v5, v0, :cond_4

    .line 202
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    aput v2, v10, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 208
    .end local v0    # "day":I
    .end local v4    # "m":I
    .end local v5    # "matchDay":I
    .end local v6    # "matchMonth":I
    .end local v7    # "matchYear":I
    .end local v8    # "record":Lcom/boohee/model/mine/BaseRecord;
    :cond_5
    iget-object v10, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

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

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 212
    :cond_6
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentYear:I

    .line 57
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentMonth:I

    .line 58
    iget v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentYear:I

    iget v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentMonth:I

    invoke-virtual {p0, v0, v1}, Lcom/boohee/calendar/WeightCalendarAdapter;->getCalendar(II)V

    .line 59
    return-void
.end method


# virtual methods
.method public endPosition()I
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->daysOfMonth:I

    iget v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCalendar(II)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    invoke-virtual {v0, p1}, Lcom/boohee/calendar/SpecialCalendar;->isLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->isLeapyear:Z

    .line 169
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    iget-boolean v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->isLeapyear:Z

    invoke-virtual {v0, v1, p2}, Lcom/boohee/calendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->daysOfMonth:I

    .line 170
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/boohee/calendar/SpecialCalendar;->getWeekdayOfMonth(II)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    .line 171
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->sc:Lcom/boohee/calendar/SpecialCalendar;

    iget-boolean v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->isLeapyear:Z

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/calendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v0

    iput v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->lastDaysOfMonth:I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/boohee/calendar/WeightCalendarAdapter;->getweek(II)V

    .line 173
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/16 v0, 0x23

    .line 77
    invoke-virtual {p0}, Lcom/boohee/calendar/WeightCalendarAdapter;->endPosition()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/boohee/calendar/WeightCalendarAdapter;->getDateString(I)Ljava/lang/String;

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

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentMonth:I

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

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

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
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getValue(I)F
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/boohee/calendar/WeightCalendarAdapter;->getDateString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "record_on":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/BaseRecord;

    .line 97
    .local v1, "record":Lcom/boohee/model/mine/BaseRecord;
    iget-object v3, v1, Lcom/boohee/model/mine/BaseRecord;->record_on:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    instance-of v3, v1, Lcom/boohee/model/mine/WeightRecord;

    if-eqz v3, :cond_1

    .line 99
    check-cast v1, Lcom/boohee/model/mine/WeightRecord;

    .end local v1    # "record":Lcom/boohee/model/mine/BaseRecord;
    iget-object v3, v1, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 104
    :goto_0
    return v3

    .line 100
    .restart local v1    # "record":Lcom/boohee/model/mine/BaseRecord;
    :cond_1
    instance-of v3, v1, Lcom/boohee/model/mine/Measure;

    if-eqz v3, :cond_0

    .line 101
    check-cast v1, Lcom/boohee/model/mine/Measure;

    .end local v1    # "record":Lcom/boohee/model/mine/BaseRecord;
    iget v3, v1, Lcom/boohee/model/mine/Measure;->value:F

    goto :goto_0

    .line 104
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f0d012e

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "holder":Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 120
    new-instance v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;-><init>(Lcom/boohee/calendar/WeightCalendarAdapter;)V

    .line 121
    .restart local v0    # "holder":Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;
    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 122
    const v2, 0x7f0e02a5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->ll_weight_content:Landroid/widget/LinearLayout;

    .line 123
    const v2, 0x7f0e02a2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0e02a3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->weightView:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_0
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->currentFlag:I

    if-ne v2, p1, :cond_2

    .line 132
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->ll_weight_content:Landroid/widget/LinearLayout;

    const v3, 0x7f020325

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 133
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->weightView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    array-length v2, v2

    if-lez v2, :cond_5

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->recordTagFlag:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 145
    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/boohee/model/mine/WeightRecord;

    if-eqz v2, :cond_4

    .line 147
    iget-object v3, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->weightView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/mine/WeightRecord;

    iget-object v2, v2, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;
    goto :goto_0

    .line 135
    :cond_2
    iget v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->daysOfMonth:I

    iget v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    iget v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    if-lt p1, v2, :cond_3

    .line 136
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->weightView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v2, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 148
    .restart local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/boohee/model/mine/Measure;

    if-eqz v2, :cond_0

    .line 150
    iget-object v3, v0, Lcom/boohee/calendar/WeightCalendarAdapter$ViewHolder;->weightView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/mine/Measure;

    iget v2, v2, Lcom/boohee/model/mine/Measure;->value:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 157
    .end local v1    # "i":I
    :cond_5
    return-object p2
.end method

.method public setChangeListener(Lcom/boohee/calendar/WeightCalendarAdapter$onCalendarItemSelectedListener;)V
    .locals 0
    .param p1, "onCalendarItemSelectedListener"    # Lcom/boohee/calendar/WeightCalendarAdapter$onCalendarItemSelectedListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->onCalendarItemSelectedListener:Lcom/boohee/calendar/WeightCalendarAdapter$onCalendarItemSelectedListener;

    .line 230
    return-void
.end method

.method public startPosition()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/boohee/calendar/WeightCalendarAdapter;->dayOfWeek:I

    return v0
.end method
