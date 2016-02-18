.class public Lcom/boohee/api/RecordApi;
.super Ljava/lang/Object;
.source "RecordApi.java"


# static fields
.field public static final ACTIVITIES_BATCH:Ljava/lang/String; = "/api/v2/activities/batch"

.field public static final ADD_WEIGHT:Ljava/lang/String; = "/api/v2/weights"

.field public static final BATCH_CREATE_ACTIVITIES:Ljava/lang/String; = "/api/v2/activities/batch"

.field public static final BATCH_CREATE_EATINGS:Ljava/lang/String; = "/api/v2/eatings/batch"

.field public static final CREATE_ACTIVITY:Ljava/lang/String; = "/api/v2/activities"

.field public static final CREATE_EATING:Ljava/lang/String; = "/api/v2/eatings"

.field public static final DELETE_ACTIVITY:Ljava/lang/String; = "/api/v2/activities/%1$d?token=%2$s"

.field public static final DELETE_DIET_PHOTOS:Ljava/lang/String; = "/api/v2/diet_photos/%d"

.field public static final DELETE_EATING:Ljava/lang/String; = "/api/v2/eatings/%1$d?token=%2$s"

.field public static final DELETE_VIDEO_SPORT_RECORD:Ljava/lang/String; = "/api/v2/boohee_sport_items/%1$d?token=%2$s"

.field public static final DIET_PHOTOS:Ljava/lang/String; = "/api/v2/diet_photos"

.field public static final EATINGS_BATCH:Ljava/lang/String; = "/api/v2/eatings/batch"

.field public static final GET_ACTIVITIES:Ljava/lang/String; = "/api/v2/activities?token=%1$s&record_on=%2$s&boohee_sport_item=1"

.field public static final GET_ACTIVITIES_HOT:Ljava/lang/String; = "/api/v2/activities/hot?page=%1$d"

.field public static final GET_CAN_RECORDS_DATES:Ljava/lang/String; = "/api/v2/can_records/dates"

.field public static final GET_CAN_RECORDS_HISTORY:Ljava/lang/String; = "/api/v2/can_records"

.field public static final GET_DAILY_ANALYSIS:Ljava/lang/String; = "/api/v2/users/daily_analysis"

.field public static final GET_EATINGS:Ljava/lang/String; = "/api/v2/eatings?token=%1$s&record_on=%2$s"

.field public static final GET_EATINGS_HOT:Ljava/lang/String; = "/api/v2/eatings/hot?page=%1$d"

.field public static final GET_MC_PERIOD_LATEST:Ljava/lang/String; = "/mc/api/v1/mc_periods/latest"

.field public static final GET_RECORD_HOME:Ljava/lang/String; = "/api/v2/home?token=%1$s"

.field public static final GET_USERS_PROFILE:Ljava/lang/String; = "/api/v2/users/profile.json"

.field public static final MEASURE_MONTH_LIST:Ljava/lang/String; = "/api/v1/measures/%1$s.json"

.field public static final POST_MEASURE:Ljava/lang/String; = "/api/v2/measures.json"

.field public static final UPDATE_ACTIVITY:Ljava/lang/String; = "/api/v2/activities/%1$d"

.field public static final UPDATE_EATING:Ljava/lang/String; = "/api/v2/eatings/%1$d"

.field public static final URL_MC_RECORDS:Ljava/lang/String; = "/mc/api/v1/records"

.field public static final URL_MC_RECORDS_DELETE:Ljava/lang/String; = "/mc/api/v1/records/delete"

.field public static final WEIGHTS_LATEST:Ljava/lang/String; = "/api/v2/weights/latest"

.field public static final WEIGHT_MONTH_LIST:Ljava/lang/String; = "/api/v2/weights/month"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batchCopyActivity(Ljava/util/ArrayList;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CopySport;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "sportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/CopySport;>;"
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 241
    .local v2, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v3, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    :goto_0
    if-eqz v1, :cond_0

    .line 249
    const-string v3, "activities"

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 251
    :cond_0
    const-string v3, "/api/v2/activities/batch"

    invoke-static {v3, v2, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 252
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static batchCopyEating(Ljava/util/ArrayList;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CopyFood;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "copyFoods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/CopyFood;>;"
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 121
    .local v2, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v3, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :goto_0
    if-eqz v1, :cond_0

    .line 129
    const-string v3, "eatings"

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 131
    :cond_0
    const-string v3, "/api/v2/eatings/batch"

    invoke-static {v3, v2, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 132
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static batchCreateEatings(Ljava/util/List;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "foodRecords":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 100
    .local v2, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const/4 v1, 0x0

    .line 102
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    if-eqz v1, :cond_0

    .line 107
    const-string v3, "eatings"

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 109
    :cond_0
    const-string v3, "/api/v2/eatings/batch"

    invoke-static {v3, v2, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 110
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static batchcreateActivities(Ljava/util/List;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "sportRecords":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 201
    .local v2, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const/4 v1, 0x0

    .line 203
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    :goto_0
    if-eqz v1, :cond_0

    .line 208
    const-string v3, "activities"

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 210
    :cond_0
    const-string v3, "/api/v2/activities/batch"

    invoke-static {v3, v2, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 211
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createActivity(Lcom/boohee/model/RecordSport;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "record"    # Lcom/boohee/model/RecordSport;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 191
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 192
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "duration"

    iget v2, p0, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 194
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "activity_id"

    iget v2, p0, Lcom/boohee/model/RecordSport;->activity_id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 196
    const-string v1, "/api/v2/activities"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method public static createCustomActivity(Lcom/boohee/model/RecordSport;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "record"    # Lcom/boohee/model/RecordSport;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 221
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 222
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "duration"

    iget v2, p0, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 225
    const-string v1, "activity_name"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "unit_name"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "calory"

    iget v2, p0, Lcom/boohee/model/RecordSport;->calory:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 228
    const-string v1, "/api/v2/activities"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method public static createEating(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 95
    const-string v0, "/api/v2/eatings"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public static deleteActivity(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 299
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 300
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "/api/v2/activities/%1$d?token=%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 302
    return-void
.end method

.method public static deleteDietPhotos(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 477
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 478
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "/api/v2/diet_photos/%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 480
    return-void
.end method

.method public static deleteEating(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 155
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 156
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "/api/v2/eatings/%1$d?token=%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public static deleteMcRecords(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 344
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 345
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "/mc/api/v1/records/delete"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 347
    return-void
.end method

.method public static deleteVideoSportRecord(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 509
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 510
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v1, "/api/v2/boohee_sport_items/%1$d?token=%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 512
    return-void
.end method

.method public static getActivities(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "record_on"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 169
    const-string v0, "/api/v2/activities?token=%1$s&record_on=%2$s&boohee_sport_item=1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public static getActivitiesHot(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 179
    const-string v0, "/api/v2/activities/hot?page=%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method public static getCanRecordsDates(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 404
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 405
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "/api/v2/can_records/dates"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 407
    return-void
.end method

.method public static getDailyAnalysis(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 430
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 431
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "record_date"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "/api/v2/users/daily_analysis"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 434
    return-void
.end method

.method public static getEatings(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "record_on"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 74
    const-string v0, "/api/v2/eatings?token=%1$s&record_on=%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public static getEatingsHot(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 84
    const-string v0, "/api/v2/eatings/hot?page=%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public static getGetCanRecordsHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "per_page"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 417
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 418
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v1, "per_page"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "/api/v2/can_records"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 421
    return-void
.end method

.method public static getMcPeriodLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 356
    const-string v0, "/mc/api/v1/mc_periods/latest"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method public static getMeasureMonthList(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "year_month"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 368
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 369
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "year_month"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "/api/v1/measures/%1$s.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p3, p2}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method public static getRecordHome(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 311
    const-string v0, "/api/v2/home?token=%1$s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 312
    return-void
.end method

.method public static getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 321
    const-string v0, "/api/v2/users/profile.json"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method public static getWeightsLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 443
    const-string v0, "/api/v2/weights/latest"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 444
    return-void
.end method

.method public static getWeightsList(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "year_month"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 381
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 382
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "year_month"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v1, "/api/v2/weights/month"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 384
    return-void
.end method

.method public static postDietPhotos(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeType"    # I
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "qiniu_key"    # Ljava/lang/String;
    .param p4, "isAnalysis"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "calory"    # I
    .param p7, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 458
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 459
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "time_type"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 462
    const-string v1, "qiniu_key"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "analysis"

    invoke-virtual {v0, v1, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Z)V

    .line 464
    const-string v1, "calory"

    invoke-virtual {v0, v1, p6}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 465
    const-string v1, "name"

    invoke-virtual {v0, v1, p5}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "/api/v2/diet_photos"

    invoke-static {v1, v0, p7, p0}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 467
    return-void
.end method

.method public static postMcRecords(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 333
    const-string v0, "/mc/api/v1/records"

    invoke-static {v0, p1, p2, p0}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 334
    return-void
.end method

.method public static postWeight(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "weight"    # Ljava/lang/String;
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "photos"    # Lorg/json/JSONArray;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 493
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 494
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "weight"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    if-eqz p2, :cond_0

    .line 497
    const-string v1, "photos"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 499
    :cond_0
    const-string v1, "/api/v2/weights"

    invoke-static {v1, v0, p4, p3}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 500
    return-void
.end method

.method public static sendMeasure(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "params"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 394
    const-string v0, "/api/v2/measures.json"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 395
    return-void
.end method

.method public static updateActivity(Lcom/boohee/model/RecordSport;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "record"    # Lcom/boohee/model/RecordSport;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 282
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 283
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "duration"

    iget v2, p0, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 285
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "activity_id"

    iget v2, p0, Lcom/boohee/model/RecordSport;->activity_id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 287
    const-string v1, "/api/v2/activities/%1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/model/RecordSport;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method public static updateCustomActivity(Lcom/boohee/model/RecordSport;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "record"    # Lcom/boohee/model/RecordSport;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 263
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 264
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "duration"

    iget v2, p0, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 267
    const-string v1, "activity_name"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "calory"

    iget v2, p0, Lcom/boohee/model/RecordSport;->calory:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 269
    const-string v1, "unit_name"

    iget-object v2, p0, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "/api/v2/activities/%1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/model/RecordSport;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/RecordClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public static updateEating(ILcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 144
    const-string v0, "/api/v2/eatings/%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lcom/boohee/one/http/client/RecordClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 145
    return-void
.end method
