.class Lcom/boohee/food/SearchFoodActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "SearchFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchFoodActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$7;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 316
    const-string v1, "foods"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/FoodWithUnit;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/FoodWithUnit;>;"
    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity$7;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # invokes: Lcom/boohee/food/SearchFoodActivity;->refreshData(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/boohee/food/SearchFoodActivity;->access$900(Lcom/boohee/food/SearchFoodActivity;Ljava/util/List;)V

    .line 318
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$7;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/SearchFoodActivity;->dismissLoading()V

    .line 323
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$7;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$1000(Lcom/boohee/food/SearchFoodActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/SearchFoodActivity$7;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v1, v1, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 324
    return-void
.end method
