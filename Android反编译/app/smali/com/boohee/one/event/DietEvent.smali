.class public Lcom/boohee/one/event/DietEvent;
.super Ljava/lang/Object;
.source "DietEvent.java"


# static fields
.field public static final TYPE_ADD:I = 0x1

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_EDIT:I = 0x2


# instance fields
.field private editType:I

.field private index:I

.field private recordFood:Lcom/boohee/model/RecordFood;

.field private timeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/boohee/one/event/DietEvent;->editType:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/boohee/one/event/DietEvent;->index:I

    return v0
.end method

.method public getRecordFood()Lcom/boohee/model/RecordFood;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/event/DietEvent;->recordFood:Lcom/boohee/model/RecordFood;

    return-object v0
.end method

.method public getTimeType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/boohee/one/event/DietEvent;->timeType:I

    return v0
.end method

.method public setEditType(I)Lcom/boohee/one/event/DietEvent;
    .locals 0
    .param p1, "editType"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/boohee/one/event/DietEvent;->editType:I

    .line 56
    return-object p0
.end method

.method public setIndex(I)Lcom/boohee/one/event/DietEvent;
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/boohee/one/event/DietEvent;->index:I

    .line 38
    return-object p0
.end method

.method public setRecordFood(Lcom/boohee/model/RecordFood;)Lcom/boohee/one/event/DietEvent;
    .locals 0
    .param p1, "recordFood"    # Lcom/boohee/model/RecordFood;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/one/event/DietEvent;->recordFood:Lcom/boohee/model/RecordFood;

    .line 47
    return-object p0
.end method

.method public setTimeType(I)Lcom/boohee/one/event/DietEvent;
    .locals 0
    .param p1, "timeType"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/boohee/one/event/DietEvent;->timeType:I

    .line 29
    return-object p0
.end method
