.class Lcom/boohee/food/AddFoodListActivity$3;
.super Ljava/lang/Object;
.source "AddFoodListActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnPosCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddFoodListActivity;->showHighLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddFoodListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddFoodListActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$3;->this$0:Lcom/boohee/food/AddFoodListActivity;

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
    .line 173
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->rightMargin:F

    .line 174
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$3;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # getter for: Lcom/boohee/food/AddFoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$300(Lcom/boohee/food/AddFoodListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput v0, p4, Lcom/boohee/myview/highlight/HighLight$MarginInfo;->bottomMargin:F

    .line 175
    return-void
.end method
