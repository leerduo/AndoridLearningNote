.class public Lcom/boohee/model/TodayMicroNutrients;
.super Ljava/lang/Object;
.source "TodayMicroNutrients.java"


# instance fields
.field public good_count:I

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MicroNutrientsItem;",
            ">;"
        }
    .end annotation
.end field

.field public ungood_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
