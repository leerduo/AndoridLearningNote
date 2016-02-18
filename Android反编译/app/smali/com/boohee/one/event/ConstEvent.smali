.class public Lcom/boohee/one/event/ConstEvent;
.super Ljava/lang/Object;
.source "ConstEvent.java"


# static fields
.field public static final FLAG_COPY_DIET_SPORT_SUCCESS:I = 0x1

.field public static final FLAG_SWITCH_TAB_SHOP:I = 0x2


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/boohee/one/event/ConstEvent;->flag:I

    return v0
.end method

.method public setFlag(I)Lcom/boohee/one/event/ConstEvent;
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/boohee/one/event/ConstEvent;->flag:I

    .line 23
    return-object p0
.end method
