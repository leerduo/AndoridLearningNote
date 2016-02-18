.class public Lcom/boohee/model/mine/DietRecord;
.super Ljava/lang/Object;
.source "DietRecord.java"

# interfaces
.implements Lcom/boohee/calendar/CountDate;


# instance fields
.field public activity_calory:F

.field public eating_calory:F

.field public record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boohee/model/mine/DietRecord;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/model/mine/DietRecord;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getMonth(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/boohee/model/mine/DietRecord;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v0

    return v0
.end method
