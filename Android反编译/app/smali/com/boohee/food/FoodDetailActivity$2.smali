.class Lcom/boohee/food/FoodDetailActivity$2;
.super Ljava/lang/Object;
.source "FoodDetailActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->initData()V
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
    .line 202
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x1

    .line 205
    invoke-static {}, Lcom/boohee/utils/FoodUtils;->changeShowUnit()V

    .line 206
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    iget-object v0, v0, Lcom/boohee/food/FoodDetailActivity;->tvCalory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;
    invoke-static {v1}, Lcom/boohee/food/FoodDetailActivity;->access$000(Lcom/boohee/food/FoodDetailActivity;)Lcom/boohee/model/FoodInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->calory:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/boohee/utils/FoodUtils;->showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    iget-object v0, v0, Lcom/boohee/food/FoodDetailActivity;->tvWeight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;
    invoke-static {v1}, Lcom/boohee/food/FoodDetailActivity;->access$000(Lcom/boohee/food/FoodDetailActivity;)Lcom/boohee/model/FoodInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/FoodInfo;->weight:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # getter for: Lcom/boohee/food/FoodDetailActivity;->mFoodInfo:Lcom/boohee/model/FoodInfo;
    invoke-static {v2}, Lcom/boohee/food/FoodDetailActivity;->access$000(Lcom/boohee/food/FoodDetailActivity;)Lcom/boohee/model/FoodInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/boohee/model/FoodInfo;->is_liquid:Z

    invoke-static {v1, v2, v3}, Lcom/boohee/utils/FoodUtils;->changeUnitAndWeight(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$2;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # invokes: Lcom/boohee/food/FoodDetailActivity;->changeUnitInDataList()V
    invoke-static {v0}, Lcom/boohee/food/FoodDetailActivity;->access$100(Lcom/boohee/food/FoodDetailActivity;)V

    .line 209
    return-void
.end method
