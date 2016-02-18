.class public Lcom/boohee/one/event/CanCaloryEvent;
.super Ljava/lang/Object;
.source "CanCaloryEvent.java"


# instance fields
.field private calory:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalory()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/boohee/one/event/CanCaloryEvent;->calory:I

    return v0
.end method

.method public setCalory(I)Lcom/boohee/one/event/CanCaloryEvent;
    .locals 0
    .param p1, "calory"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/boohee/one/event/CanCaloryEvent;->calory:I

    .line 20
    return-object p0
.end method
