.class public Lcom/boohee/model/FoodWithUnit;
.super Ljava/lang/Object;
.source "FoodWithUnit.java"


# instance fields
.field public calory:F

.field public code:Ljava/lang/String;

.field public food_id:I

.field public health_light:I

.field public id:I

.field public large_image_name:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public s_points:Ljava/lang/String;

.field public thumb_image_name:Ljava/lang/String;

.field public units:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/booheee/view/keyboard/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
