.class public Lcom/boohee/model/mine/BaseRecord;
.super Ljava/lang/Object;
.source "BaseRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2f97adf0c8e64dfdL


# instance fields
.field public id:I

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
    .line 27
    iget-object v0, p0, Lcom/boohee/model/mine/BaseRecord;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getDay(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/boohee/model/mine/BaseRecord;->record_on:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/boohee/model/mine/BaseRecord;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getYear(Ljava/util/Date;)I

    move-result v0

    return v0
.end method
