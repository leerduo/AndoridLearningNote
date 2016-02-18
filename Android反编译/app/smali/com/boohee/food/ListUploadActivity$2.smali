.class Lcom/boohee/food/ListUploadActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ListUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/ListUploadActivity;->sendRequestUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/ListUploadActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/ListUploadActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    const-string v4, "page"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    # setter for: Lcom/boohee/food/ListUploadActivity;->mPage:I
    invoke-static {v3, v4}, Lcom/boohee/food/ListUploadActivity;->access$102(Lcom/boohee/food/ListUploadActivity;I)I

    .line 73
    iget-object v3, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    const-string v4, "total_pages"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    # setter for: Lcom/boohee/food/ListUploadActivity;->mTotalPages:I
    invoke-static {v3, v4}, Lcom/boohee/food/ListUploadActivity;->access$202(Lcom/boohee/food/ListUploadActivity;I)I

    .line 74
    const-string v3, "food_drafts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "dataStr":Ljava/lang/String;
    const-class v3, Lcom/boohee/model/UploadFood;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/UploadFood;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    # getter for: Lcom/boohee/food/ListUploadActivity;->mDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/boohee/food/ListUploadActivity;->access$300(Lcom/boohee/food/ListUploadActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v3, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    # getter for: Lcom/boohee/food/ListUploadActivity;->mAdapter:Lcom/boohee/food/adapter/UploadAdapter;
    invoke-static {v3}, Lcom/boohee/food/ListUploadActivity;->access$400(Lcom/boohee/food/ListUploadActivity;)Lcom/boohee/food/adapter/UploadAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/food/adapter/UploadAdapter;->notifyDataSetChanged()V

    .line 92
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v2    # "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/UploadFood;>;"
    :goto_0
    return-void

    .line 81
    .restart local v0    # "dataStr":Ljava/lang/String;
    .restart local v2    # "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/UploadFood;>;"
    :cond_0
    iget-object v3, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    const v4, 0x7f0705fc

    invoke-virtual {v3, v4}, Lcom/boohee/food/ListUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    iget-object v3, v3, Lcom/boohee/food/ListUploadActivity;->blvContent:Lcom/boohee/widgets/BooheeListView;

    new-instance v4, Lcom/boohee/food/ListUploadActivity$2$1;

    invoke-direct {v4, p0}, Lcom/boohee/food/ListUploadActivity$2$1;-><init>(Lcom/boohee/food/ListUploadActivity$2;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lcom/boohee/widgets/BooheeListView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0    # "dataStr":Ljava/lang/String;
    .end local v2    # "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/UploadFood;>;"
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/boohee/food/ListUploadActivity$2;->this$0:Lcom/boohee/food/ListUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/food/ListUploadActivity;->dismissLoading()V

    .line 96
    return-void
.end method
