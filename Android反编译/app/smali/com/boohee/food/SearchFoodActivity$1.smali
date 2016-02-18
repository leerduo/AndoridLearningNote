.class Lcom/boohee/food/SearchFoodActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "SearchFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->loadHotData()V
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
    .line 177
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 182
    :try_start_0
    const-string v2, "keywords"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "foods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->hotSearchList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/food/SearchFoodActivity;->access$000(Lcom/boohee/food/SearchFoodActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v2, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v2, v2, Lcom/boohee/food/SearchFoodActivity;->gvHot:Lcom/boohee/one/onekey/widget/ExpandGridView;

    new-instance v3, Lcom/boohee/food/SearchFoodActivity$HotListAdapter;

    iget-object v4, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v5, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->ctx:Landroid/content/Context;
    invoke-static {v5}, Lcom/boohee/food/SearchFoodActivity;->access$100(Lcom/boohee/food/SearchFoodActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # getter for: Lcom/boohee/food/SearchFoodActivity;->hotSearchList:Ljava/util/List;
    invoke-static {v6}, Lcom/boohee/food/SearchFoodActivity;->access$000(Lcom/boohee/food/SearchFoodActivity;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/boohee/food/SearchFoodActivity$HotListAdapter;-><init>(Lcom/boohee/food/SearchFoodActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/boohee/one/onekey/widget/ExpandGridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "foods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 195
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$1;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/SearchFoodActivity;->dismissLoading()V

    .line 196
    return-void
.end method
