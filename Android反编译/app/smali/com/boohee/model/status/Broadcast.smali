.class public Lcom/boohee/model/status/Broadcast;
.super Ljava/lang/Object;
.source "Broadcast.java"


# instance fields
.field public created_at:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public id:I

.field public preview_body:Ljava/lang/String;

.field public read:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBroadacasts(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "arrays"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Broadcast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 30
    .end local p0    # "arrays":Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .line 27
    .restart local p0    # "arrays":Lorg/json/JSONArray;
    :cond_1
    new-instance v2, Lcom/boohee/model/status/Broadcast$1;

    invoke-direct {v2}, Lcom/boohee/model/status/Broadcast$1;-><init>()V

    invoke-virtual {v2}, Lcom/boohee/model/status/Broadcast$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 29
    .local v1, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, p0, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local p0    # "arrays":Lorg/json/JSONArray;
    :goto_1
    instance-of v4, v2, Lcom/google/gson/Gson;

    if-nez v4, :cond_3

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .local v0, "casts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Broadcast;>;"
    goto :goto_0

    .line 29
    .end local v0    # "casts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Broadcast;>;"
    .restart local p0    # "arrays":Lorg/json/JSONArray;
    :cond_2
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "arrays":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method
