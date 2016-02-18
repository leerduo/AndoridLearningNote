.class public Lcom/boohee/one/event/PhotoDietEvent;
.super Ljava/lang/Object;
.source "PhotoDietEvent.java"


# static fields
.field public static final TYPE_ADD:I = 0x1

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_EDIT:I = 0x2


# instance fields
.field private editType:I

.field private index:I

.field private recordPhoto:Lcom/boohee/model/RecordPhoto;

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
    iget v0, p0, Lcom/boohee/one/event/PhotoDietEvent;->editType:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/boohee/one/event/PhotoDietEvent;->index:I

    return v0
.end method

.method public getRecordPhoto()Lcom/boohee/model/RecordPhoto;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/event/PhotoDietEvent;->recordPhoto:Lcom/boohee/model/RecordPhoto;

    return-object v0
.end method

.method public getTimeType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/boohee/one/event/PhotoDietEvent;->timeType:I

    return v0
.end method

.method public setEditType(I)Lcom/boohee/one/event/PhotoDietEvent;
    .locals 0
    .param p1, "editType"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/boohee/one/event/PhotoDietEvent;->editType:I

    .line 56
    return-object p0
.end method

.method public setIndex(I)Lcom/boohee/one/event/PhotoDietEvent;
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/boohee/one/event/PhotoDietEvent;->index:I

    .line 38
    return-object p0
.end method

.method public setRecordPhoto(Lcom/boohee/model/RecordPhoto;)Lcom/boohee/one/event/PhotoDietEvent;
    .locals 0
    .param p1, "recordPhoto"    # Lcom/boohee/model/RecordPhoto;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/one/event/PhotoDietEvent;->recordPhoto:Lcom/boohee/model/RecordPhoto;

    .line 47
    return-object p0
.end method

.method public setTimeType(I)Lcom/boohee/one/event/PhotoDietEvent;
    .locals 0
    .param p1, "timeType"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/boohee/one/event/PhotoDietEvent;->timeType:I

    .line 29
    return-object p0
.end method
