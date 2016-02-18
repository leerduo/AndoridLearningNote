.class Lcom/boohee/food/CollectionActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "CollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/CollectionActivity;->sendRequestCollection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/CollectionActivity;

.field final synthetic val$showLoading:Z


# direct methods
.method constructor <init>(Lcom/boohee/food/CollectionActivity;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    iput-boolean p3, p0, Lcom/boohee/food/CollectionActivity$3;->val$showLoading:Z

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 159
    :try_start_0
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    const-string v5, "page"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/boohee/food/CollectionActivity;->mPage:I
    invoke-static {v4, v5}, Lcom/boohee/food/CollectionActivity;->access$202(Lcom/boohee/food/CollectionActivity;I)I

    .line 160
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    const-string v5, "total_pages"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/boohee/food/CollectionActivity;->mTotalPages:I
    invoke-static {v4, v5}, Lcom/boohee/food/CollectionActivity;->access$302(Lcom/boohee/food/CollectionActivity;I)I

    .line 161
    const-string v4, "foods"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "dataStr":Ljava/lang/String;
    const-class v4, Lcom/boohee/model/CollectionFood;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CollectionFood;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 164
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    # getter for: Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/boohee/food/CollectionActivity;->access$100(Lcom/boohee/food/CollectionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    # getter for: Lcom/boohee/food/CollectionActivity;->mDataSelect:Ljava/util/List;
    invoke-static {v4}, Lcom/boohee/food/CollectionActivity;->access$400(Lcom/boohee/food/CollectionActivity;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    # getter for: Lcom/boohee/food/CollectionActivity;->mAdapter:Lcom/boohee/food/adapter/CollectionAdapter;
    invoke-static {v4}, Lcom/boohee/food/CollectionActivity;->access$500(Lcom/boohee/food/CollectionActivity;)Lcom/boohee/food/adapter/CollectionAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/food/adapter/CollectionAdapter;->notifyDataSetChanged()V

    .line 182
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v2    # "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CollectionFood;>;"
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 171
    .restart local v0    # "dataStr":Ljava/lang/String;
    .restart local v2    # "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CollectionFood;>;"
    :cond_1
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    const v5, 0x7f070175

    invoke-virtual {v4, v5}, Lcom/boohee/food/CollectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v4, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    iget-object v4, v4, Lcom/boohee/food/CollectionActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    new-instance v5, Lcom/boohee/food/CollectionActivity$3$1;

    invoke-direct {v5, p0}, Lcom/boohee/food/CollectionActivity$3$1;-><init>(Lcom/boohee/food/CollectionActivity$3;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/boohee/widgets/BooheeListView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v2    # "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CollectionFood;>;"
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/boohee/food/CollectionActivity$3;->val$showLoading:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity$3;->this$0:Lcom/boohee/food/CollectionActivity;

    invoke-virtual {v0}, Lcom/boohee/food/CollectionActivity;->dismissLoading()V

    .line 195
    :cond_0
    return-void
.end method
