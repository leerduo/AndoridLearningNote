.class public Lcom/boohee/one/event/AddFinishAnimEvent;
.super Ljava/lang/Object;
.source "AddFinishAnimEvent.java"


# instance fields
.field private thumb_image_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumb_image_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/boohee/one/event/AddFinishAnimEvent;->thumb_image_name:Ljava/lang/String;

    return-object v0
.end method

.method public setThumb_image_name(Ljava/lang/String;)Lcom/boohee/one/event/AddFinishAnimEvent;
    .locals 0
    .param p1, "thumb_image_name"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/boohee/one/event/AddFinishAnimEvent;->thumb_image_name:Ljava/lang/String;

    .line 20
    return-object p0
.end method
