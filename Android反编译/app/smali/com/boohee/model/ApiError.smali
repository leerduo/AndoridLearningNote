.class public Lcom/boohee/model/ApiError;
.super Ljava/lang/Object;
.source "ApiError.java"


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(Lorg/json/JSONObject;)I
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "code":I
    const-string v3, "errors"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 61
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, "apiError":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 64
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    .end local v0    # "apiError":Lorg/json/JSONObject;
    :cond_0
    return v2
.end method

.method public static getErrorMessage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    const-string v2, ""

    .line 45
    .local v2, "message":Ljava/lang/String;
    const-string v3, "errors"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 47
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    .local v0, "apiError":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 49
    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .end local v0    # "apiError":Lorg/json/JSONObject;
    :cond_0
    return-object v2
.end method

.method public static parseErrors(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/ApiError;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 26
    const-string v4, "errors"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 37
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    .local v1, "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/ApiError;>;"
    const-string v4, "errors"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v3, Lcom/boohee/model/ApiError$1;

    invoke-direct {v3}, Lcom/boohee/model/ApiError$1;-><init>()V

    invoke-virtual {v3}, Lcom/boohee/model/ApiError$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 36
    .local v2, "listType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    instance-of v4, v0, Lorg/json/JSONArray;

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_1
    instance-of v5, v3, Lcom/google/gson/Gson;

    if-nez v5, :cond_3

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/ApiError;>;"
    :goto_2
    check-cast v1, Ljava/util/ArrayList;

    .line 37
    .restart local v1    # "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/ApiError;>;"
    goto :goto_0

    .line 36
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_2
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, v4, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2
.end method
