.class public Lcom/boohee/model/status/UserConnection;
.super Ljava/lang/Object;
.source "UserConnection.java"


# instance fields
.field public access_token:Ljava/lang/String;

.field public avatar_url:Ljava/lang/String;

.field public expires_at:Ljava/lang/String;

.field public expires_in:Ljava/lang/String;

.field public id:I

.field public identity:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseUserConnection(Ljava/lang/String;)Lcom/boohee/model/status/UserConnection;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "connection":Lcom/boohee/model/status/UserConnection;
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/boohee/model/status/UserConnection;

    instance-of v5, v3, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move-object v0, v3

    check-cast v0, Lcom/boohee/model/status/UserConnection;

    move-object v1, v0

    .line 36
    :goto_1
    return-object v1

    .line 32
    :cond_0
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, p0, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseUserConnections(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/UserConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 43
    .local v2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/UserConnection;>;"
    :try_start_0
    const-string v5, "user_connections"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 44
    .local v1, "connObj":Lorg/json/JSONArray;
    new-instance v5, Lcom/boohee/model/status/UserConnection$1;

    invoke-direct {v5}, Lcom/boohee/model/status/UserConnection$1;-><init>()V

    invoke-virtual {v5}, Lcom/boohee/model/status/UserConnection$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 46
    .local v4, "listType":Ljava/lang/reflect/Type;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    instance-of v6, v1, Lorg/json/JSONArray;

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v1    # "connObj":Lorg/json/JSONArray;
    :goto_0
    instance-of v7, v5, Lcom/google/gson/Gson;

    if-nez v7, :cond_1

    invoke-virtual {v5, v6, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 50
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    :goto_2
    return-object v2

    .line 46
    .restart local v1    # "connObj":Lorg/json/JSONArray;
    .restart local v4    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "connObj":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, v6, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 47
    .end local v4    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
