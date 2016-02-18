.class Lcom/boohee/more/EstimateFoodActivity$EstimateFood;
.super Ljava/lang/Object;
.source "EstimateFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/more/EstimateFoodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EstimateFood"
.end annotation


# instance fields
.field imgResource:I

.field strResource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "img"    # I
    .param p2, "str"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;->imgResource:I

    .line 141
    iput p2, p0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;->strResource:I

    .line 142
    return-void
.end method
