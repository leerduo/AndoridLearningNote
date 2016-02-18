.class public Lcom/boohee/model/LocalCaloryRecord;
.super Ljava/lang/Object;
.source "LocalCaloryRecord.java"


# instance fields
.field public record_on:Ljava/lang/String;

.field public totalDietCalory:Ljava/lang/String;

.field public totalSportCalory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "totalDietCalory"    # Ljava/lang/String;
    .param p3, "totalSportCalory"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/boohee/model/LocalCaloryRecord;->record_on:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/boohee/model/LocalCaloryRecord;->totalDietCalory:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/boohee/model/LocalCaloryRecord;->totalSportCalory:Ljava/lang/String;

    .line 21
    return-void
.end method
