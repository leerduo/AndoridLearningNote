.class Lcom/boohee/food/FoodDetailActivity$5;
.super Ljava/lang/Object;
.source "FoodDetailActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnPosCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->showHighLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$5;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V
    .locals 2
    .param p1, "rightMargin"    # F
    .param p2, "bottomMargin"    # F
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "marginInfo"    # Lcom/boohee/myview/highlight/HighLight$MarginInfo;

    .prologue
    .line 368
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->rightMargin:F

    .line 369
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, p2

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->bottomMargin:F

    .line 370
    return-void
.end method
