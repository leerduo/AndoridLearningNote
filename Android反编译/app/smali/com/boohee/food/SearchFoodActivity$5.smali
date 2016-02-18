.class Lcom/boohee/food/SearchFoodActivity$5;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnPosCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->showHighLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$5;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPos(FFLandroid/graphics/RectF;Lcom/boohee/myview/highlight/HighLight$MarginInfo;)V
    .locals 3
    .param p1, "rightMargin"    # F
    .param p2, "bottomMargin"    # F
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "marginInfo"    # Lcom/boohee/myview/highlight/HighLight$MarginInfo;

    .prologue
    .line 253
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity$5;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/food/SearchFoodActivity;->access$700(Lcom/boohee/food/SearchFoodActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->rightMargin:F

    .line 254
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$5;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$800(Lcom/boohee/food/SearchFoodActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->bottomMargin:F

    .line 255
    return-void
.end method
