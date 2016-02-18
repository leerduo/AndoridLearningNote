.class Lcom/boohee/food/CustomFoodListActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "CustomFoodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/CustomFoodListActivity;->sendRequestCollection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/CustomFoodListActivity;

.field final synthetic val$showLoading:Z


# direct methods
.method constructor <init>(Lcom/boohee/food/CustomFoodListActivity;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    iput-boolean p3, p0, Lcom/boohee/food/CustomFoodListActivity$2;->val$showLoading:Z

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    # getter for: Lcom/boohee/food/CustomFoodListActivity;->mPage:I
    invoke-static {v2}, Lcom/boohee/food/CustomFoodListActivity;->access$100(Lcom/boohee/food/CustomFoodListActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 151
    iget-object v2, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    # getter for: Lcom/boohee/food/CustomFoodListActivity;->mDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/food/CustomFoodListActivity;->access$200(Lcom/boohee/food/CustomFoodListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 153
    :cond_0
    const-string v2, "custom_foods"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/boohee/model/CustomFood;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "foodList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CustomFood;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    # getter for: Lcom/boohee/food/CustomFoodListActivity;->mDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/food/CustomFoodListActivity;->access$200(Lcom/boohee/food/CustomFoodListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    # getter for: Lcom/boohee/food/CustomFoodListActivity;->mDataSelect:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/food/CustomFoodListActivity;->access$300(Lcom/boohee/food/CustomFoodListActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    # operator++ for: Lcom/boohee/food/CustomFoodListActivity;->mPage:I
    invoke-static {v2}, Lcom/boohee/food/CustomFoodListActivity;->access$108(Lcom/boohee/food/CustomFoodListActivity;)I

    .line 161
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    # getter for: Lcom/boohee/food/CustomFoodListActivity;->mAdapter:Lcom/boohee/food/adapter/CustomFoodAdapter;
    invoke-static {v2}, Lcom/boohee/food/CustomFoodListActivity;->access$400(Lcom/boohee/food/CustomFoodListActivity;)Lcom/boohee/food/adapter/CustomFoodAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/food/adapter/CustomFoodAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/boohee/food/CustomFoodListActivity$2;->val$showLoading:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/boohee/food/CustomFoodListActivity$2;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    invoke-virtual {v0}, Lcom/boohee/food/CustomFoodListActivity;->dismissLoading()V

    .line 169
    :cond_0
    return-void
.end method
