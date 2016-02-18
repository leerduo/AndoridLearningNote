.class public Lcom/boohee/one/event/SportEvent;
.super Ljava/lang/Object;
.source "SportEvent.java"


# static fields
.field public static final TYPE_ADD:I = 0x1

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_EDIT:I = 0x2


# instance fields
.field private editType:I

.field private index:I

.field private recordSport:Lcom/boohee/model/RecordSport;


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
    .line 41
    iget v0, p0, Lcom/boohee/one/event/SportEvent;->editType:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/boohee/one/event/SportEvent;->index:I

    return v0
.end method

.method public getRecordSport()Lcom/boohee/model/RecordSport;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/one/event/SportEvent;->recordSport:Lcom/boohee/model/RecordSport;

    return-object v0
.end method

.method public setEditType(I)Lcom/boohee/one/event/SportEvent;
    .locals 0
    .param p1, "editType"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/boohee/one/event/SportEvent;->editType:I

    .line 46
    return-object p0
.end method

.method public setIndex(I)Lcom/boohee/one/event/SportEvent;
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/boohee/one/event/SportEvent;->index:I

    .line 28
    return-object p0
.end method

.method public setRecordSport(Lcom/boohee/model/RecordSport;)Lcom/boohee/one/event/SportEvent;
    .locals 0
    .param p1, "recordSport"    # Lcom/boohee/model/RecordSport;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/one/event/SportEvent;->recordSport:Lcom/boohee/model/RecordSport;

    .line 37
    return-object p0
.end method
