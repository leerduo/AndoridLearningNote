.class public Lcom/boohee/one/sync/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static paramsWithFoodRecord(Lcom/boohee/model/RecordFood;)Lcom/boohee/one/http/JsonParams;
    .locals 3
    .param p0, "record"    # Lcom/boohee/model/RecordFood;

    .prologue
    .line 113
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 114
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "unit_name"

    iget-object v2, p0, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "amount"

    iget v2, p0, Lcom/boohee/model/RecordFood;->amount:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 117
    const-string v1, "code"

    iget-object v2, p0, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "food_name"

    iget-object v2, p0, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "food_unit_id"

    iget v2, p0, Lcom/boohee/model/RecordFood;->food_unit_id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 120
    const-string v1, "calory"

    iget v2, p0, Lcom/boohee/model/RecordFood;->calory:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 121
    const-string v1, "time_type"

    iget v2, p0, Lcom/boohee/model/RecordFood;->time_type:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 122
    return-object v0
.end method

.method public static syncAllEatings()V
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    .local v0, "dao":Lcom/boohee/modeldao/FoodRecordDao;
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    :goto_0
    return-void

    .line 69
    .end local v0    # "dao":Lcom/boohee/modeldao/FoodRecordDao;
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    :cond_0
    new-instance v0, Lcom/boohee/modeldao/FoodRecordDao;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/boohee/modeldao/FoodRecordDao;-><init>(Landroid/content/Context;)V

    .line 70
    .restart local v0    # "dao":Lcom/boohee/modeldao/FoodRecordDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/FoodRecordDao;->getList()Ljava/util/List;

    move-result-object v1

    .line 71
    .restart local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/sync/SyncHelper$2;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/boohee/one/sync/SyncHelper$2;-><init>(Landroid/content/Context;Lcom/boohee/modeldao/FoodRecordDao;)V

    invoke-static {v1, v2, v3}, Lcom/boohee/api/RecordApi;->batchCreateEatings(Ljava/util/List;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static syncAllSports()V
    .locals 5

    .prologue
    .line 129
    new-instance v0, Lcom/boohee/modeldao/SportRecordDao;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/boohee/modeldao/SportRecordDao;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "dao":Lcom/boohee/modeldao/SportRecordDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/SportRecordDao;->getList()Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/sync/SyncHelper$4;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/boohee/one/sync/SyncHelper$4;-><init>(Landroid/content/Context;Lcom/boohee/modeldao/SportRecordDao;)V

    invoke-static {v1, v2, v3}, Lcom/boohee/api/RecordApi;->batchcreateActivities(Ljava/util/List;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 143
    return-void
.end method

.method public static syncDailyEating(Ljava/lang/String;)V
    .locals 8
    .param p0, "record_on"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Lcom/boohee/modeldao/FoodRecordDao;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/boohee/modeldao/FoodRecordDao;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "dao":Lcom/boohee/modeldao/FoodRecordDao;
    invoke-virtual {v0, p0}, Lcom/boohee/modeldao/FoodRecordDao;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordFood;

    .line 97
    .local v2, "record":Lcom/boohee/model/RecordFood;
    invoke-static {v2}, Lcom/boohee/one/sync/SyncHelper;->paramsWithFoodRecord(Lcom/boohee/model/RecordFood;)Lcom/boohee/one/http/JsonParams;

    move-result-object v4

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/boohee/one/sync/SyncHelper$3;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v0, v2}, Lcom/boohee/one/sync/SyncHelper$3;-><init>(Landroid/content/Context;Lcom/boohee/modeldao/FoodRecordDao;Lcom/boohee/model/RecordFood;)V

    invoke-static {v4, v5, v6}, Lcom/boohee/api/RecordApi;->createEating(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static syncWeight(Z)V
    .locals 11
    .param p0, "isRefreshWeight"    # Z

    .prologue
    .line 31
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Lcom/boohee/modeldao/WeightRecordDao;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "dao":Lcom/boohee/modeldao/WeightRecordDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/WeightRecordDao;->getList()Ljava/util/List;

    move-result-object v5

    .line 36
    .local v5, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/mine/WeightRecord;

    .line 37
    .local v4, "record":Lcom/boohee/model/mine/WeightRecord;
    const/4 v3, 0x0

    .line 39
    .local v3, "photos":Lorg/json/JSONArray;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    iget-object v6, v4, Lcom/boohee/model/mine/WeightRecord;->cachePhotos:Ljava/lang/String;

    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 43
    :goto_1
    iget-object v6, v4, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    iget-object v7, v4, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/boohee/one/sync/SyncHelper$1;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v0, v4, p0}, Lcom/boohee/one/sync/SyncHelper$1;-><init>(Landroid/content/Context;Lcom/boohee/modeldao/WeightRecordDao;Lcom/boohee/model/mine/WeightRecord;Z)V

    invoke-static {v6, v7, v3, v8, v9}, Lcom/boohee/api/RecordApi;->postWeight(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
