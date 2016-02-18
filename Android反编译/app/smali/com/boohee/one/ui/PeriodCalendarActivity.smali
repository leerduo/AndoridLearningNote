.class public Lcom/boohee/one/ui/PeriodCalendarActivity;
.super Lcom/boohee/main/GestureActivity;
.source "PeriodCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;,
        Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;,
        Lcom/boohee/one/ui/PeriodCalendarActivity$MCComingListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;

.field calendarGrid:Landroid/widget/GridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f0
    .end annotation
.end field

.field private currentMmc:Lcom/boohee/model/MonthMc;

.field dateClickListener:Landroid/view/View$OnClickListener;

.field private dialog:Lcom/boohee/myview/NewPeroidDialog;

.field flipper:Landroid/widget/ViewFlipper;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ef
    .end annotation
.end field

.field itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/PeriodRecord;",
            ">;"
        }
    .end annotation
.end field

.field private record_on:Ljava/lang/String;

.field private txt_date:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->recordList:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/boohee/one/ui/PeriodCalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/PeriodCalendarActivity$2;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->dateClickListener:Landroid/view/View$OnClickListener;

    .line 173
    new-instance v0, Lcom/boohee/one/ui/PeriodCalendarActivity$3;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/PeriodCalendarActivity$3;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/model/MonthMc;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/model/MonthMc;)Lcom/boohee/model/MonthMc;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p1, "x1"    # Lcom/boohee/model/MonthMc;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/PeriodCalendarActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->getPeriodRecordData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->couldDelete(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Date;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/PeriodCalendarActivity;->recordMc(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/PeriodCalendarActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/calendar/PeriodCalendarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/calendar/PeriodCalendarAdapter;)Lcom/boohee/calendar/PeriodCalendarAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p1, "x1"    # Lcom/boohee/calendar/PeriodCalendarAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->adapter:Lcom/boohee/calendar/PeriodCalendarAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/PeriodCalendarActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->txt_date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/PeriodCalendarActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->requestRecords()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/myview/NewPeroidDialog;)Lcom/boohee/myview/NewPeroidDialog;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p1, "x1"    # Lcom/boohee/myview/NewPeroidDialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;

    return-object p1
.end method

.method private couldDelete(Ljava/util/Date;)Z
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v4, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v4, v4, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    if-nez v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    invoke-static {p1}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v0

    .line 198
    .local v0, "day":I
    iget-object v4, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v4, v4, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/MonthMc$Section;

    .line 199
    .local v2, "section":Lcom/boohee/model/MonthMc$Section;
    const-string v4, "mc"

    iget-object v5, v2, Lcom/boohee/model/MonthMc$Section;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/boohee/model/MonthMc$Section;->start:I

    if-eq v4, v0, :cond_3

    iget v4, v2, Lcom/boohee/model/MonthMc$Section;->end:I

    if-ne v4, v0, :cond_2

    .line 201
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getPeriodRecordData()V
    .locals 7

    .prologue
    .line 139
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v5, v5, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    if-nez v5, :cond_1

    .line 153
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->recordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v5, v5, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v5, v5, Lcom/boohee/model/MonthMc;->sections:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/MonthMc$Section;

    .line 143
    .local v4, "section":Lcom/boohee/model/MonthMc$Section;
    iget v2, v4, Lcom/boohee/model/MonthMc$Section;->start:I

    .local v2, "j":I
    :goto_1
    iget v5, v4, Lcom/boohee/model/MonthMc$Section;->end:I

    if-gt v2, v5, :cond_3

    .line 144
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "date":Ljava/lang/String;
    new-instance v3, Lcom/boohee/model/PeriodRecord;

    iget-object v5, v4, Lcom/boohee/model/MonthMc$Section;->type:Ljava/lang/String;

    invoke-direct {v3, v0, v5}, Lcom/boohee/model/PeriodRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v3, "record":Lcom/boohee/model/PeriodRecord;
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v5, v5, Lcom/boohee/model/MonthMc;->oviposit_day:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->currentMmc:Lcom/boohee/model/MonthMc;

    iget-object v5, v5, Lcom/boohee/model/MonthMc;->oviposit_day:Ljava/lang/String;

    const-string v6, "yyyyMMdd"

    invoke-static {v5, v6}, Lcom/boohee/utils/DateFormatUtils;->string2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    const-string v5, "oviposit_day"

    iput-object v5, v3, Lcom/boohee/model/PeriodRecord;->type:Ljava/lang/String;

    .line 150
    :cond_2
    iget-object v5, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->recordList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "date":Ljava/lang/String;
    .end local v3    # "record":Lcom/boohee/model/PeriodRecord;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->txt_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->calendarGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    return-void
.end method

.method private initToolsBar()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 79
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03022e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "view_date_top":Landroid/view/View;
    const v2, 0x7f0e031c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->txt_date:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0e06b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->dateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f0e06b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->dateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 84
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 85
    .local v0, "layoutParams":Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 86
    return-void
.end method

.method private recordMc(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "day"    # Ljava/util/Date;

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 229
    :cond_0
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 230
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    invoke-static {p2}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/boohee/model/mine/McLatest;->ACTION_START:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    const-string v1, "mc_status"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/PeriodCalendarActivity$4;

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/PeriodCalendarActivity$4;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/boohee/api/RecordApi;->postMcRecords(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 234
    :cond_2
    sget-object v1, Lcom/boohee/model/mine/McLatest;->ACTION_END:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const-string v1, "mc_status"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private requestRecords()V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->showLoading()V

    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->record_on:Ljava/lang/String;

    new-instance v2, Lcom/boohee/one/ui/PeriodCalendarActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/PeriodCalendarActivity$1;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getMcPeriodsMonth(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 72
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->initToolsBar()V

    .line 73
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->initDate()V

    .line 74
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->initListener()V

    .line 75
    invoke-direct {p0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->requestRecords()V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 99
    const/4 v0, 0x0

    const v1, 0x7f0704c3

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 106
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/PeriodCalendarActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/one/mine/BiologyClockSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
