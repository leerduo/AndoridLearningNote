.class public Lcom/boohee/one/event/MyFoodEvent;
.super Ljava/lang/Object;
.source "MyFoodEvent.java"


# static fields
.field public static final CUSTOM_FOOD_EVENT:I = 0x1

.field public static final FOOD_FAVORITE_EVENT:I = 0x0

.field public static final UPLOAD_FOOD_EVENT:I = 0x2


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/boohee/one/event/MyFoodEvent;->flag:I

    return v0
.end method

.method public setFlag(I)Lcom/boohee/one/event/MyFoodEvent;
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/boohee/one/event/MyFoodEvent;->flag:I

    .line 25
    return-object p0
.end method
