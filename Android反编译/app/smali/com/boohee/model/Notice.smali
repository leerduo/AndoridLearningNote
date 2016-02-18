.class public Lcom/boohee/model/Notice;
.super Lcom/boohee/model/ModelBase;
.source "Notice.java"


# instance fields
.field public alarm_tip_id:I

.field public alarm_tip_message:Ljava/lang/String;

.field public is_opened:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "alarm_tip_id"    # I
    .param p3, "alarm_tip_message"    # Ljava/lang/String;
    .param p4, "is_opened"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 9
    iput p1, p0, Lcom/boohee/model/Notice;->id:I

    .line 10
    iput p2, p0, Lcom/boohee/model/Notice;->alarm_tip_id:I

    .line 11
    iput-object p3, p0, Lcom/boohee/model/Notice;->alarm_tip_message:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/boohee/model/Notice;->is_opened:I

    .line 13
    return-void
.end method


# virtual methods
.method public isOpened()Z
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/boohee/model/Notice;->is_opened:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
