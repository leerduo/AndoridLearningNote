.class public Lcom/boohee/model/PeriodRecord;
.super Ljava/lang/Object;
.source "PeriodRecord.java"

# interfaces
.implements Lcom/boohee/calendar/CountDate;


# static fields
.field public static final MC:Ljava/lang/String; = "mc"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final OVIPOSIT:Ljava/lang/String; = "oviposit_day"

.field public static final PREDICTION:Ljava/lang/String; = "prediction"

.field public static final PREGNACY:Ljava/lang/String; = "pregnancy"

.field public static final YYYYMMDD:Ljava/lang/String; = "yyyyMMdd"


# instance fields
.field public the_date:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/boohee/model/PeriodRecord;->the_date:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/boohee/model/PeriodRecord;->type:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/model/PeriodRecord;->the_date:Ljava/lang/String;

    const-string v1, "yyyyMMdd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/model/PeriodRecord;->the_date:Ljava/lang/String;

    const-string v1, "yyyyMMdd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/model/PeriodRecord;->the_date:Ljava/lang/String;

    const-string v1, "yyyyMMdd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v0

    return v0
.end method
