.class public Lcom/boohee/model/club/Club;
.super Ljava/lang/Object;
.source "Club.java"


# instance fields
.field public act_page_url:Ljava/lang/String;

.field public avatar_url:Ljava/lang/String;

.field public banner_url:Ljava/lang/String;

.field public cover_url:Ljava/lang/String;

.field public exp_page_url:Ljava/lang/String;

.field public id:I

.field public isChecked:Z

.field public members_count:I

.field public name:Ljava/lang/String;

.field public posts_count:I

.field public thumb_img_url:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseClub(Ljava/lang/String;)Lcom/boohee/model/club/Club;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/boohee/model/club/Club;

    instance-of v2, v0, Lcom/google/gson/Gson;

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/boohee/model/club/Club;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseClubs(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "clubsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 66
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :goto_0
    return-object v2

    .line 62
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/model/club/Club;->parseClubs(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 66
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    goto :goto_0

    .line 63
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseClubs(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .param p0, "clubs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    if-nez p0, :cond_0

    move-object v4, v3

    .line 80
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .end local p0    # "clubs":Lorg/json/JSONArray;
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :goto_0
    return-object v4

    .line 75
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local p0    # "clubs":Lorg/json/JSONArray;
    :cond_0
    :try_start_0
    new-instance v5, Lcom/boohee/model/club/Club$1;

    invoke-direct {v5}, Lcom/boohee/model/club/Club$1;-><init>()V

    invoke-virtual {v5}, Lcom/boohee/model/club/Club$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 76
    .local v2, "listType":Ljava/lang/reflect/Type;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    instance-of v6, p0, Lorg/json/JSONArray;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .end local p0    # "clubs":Lorg/json/JSONArray;
    :goto_1
    instance-of v7, v5, Lcom/google/gson/Gson;

    if-nez v7, :cond_2

    invoke-virtual {v5, v6, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .end local v2    # "listType":Ljava/lang/reflect/Type;
    :goto_3
    move-object v4, v3

    .line 80
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    goto :goto_0

    .line 76
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v2    # "listType":Ljava/lang/reflect/Type;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local p0    # "clubs":Lorg/json/JSONArray;
    :cond_1
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "clubs":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, v6, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    .line 77
    .end local v2    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static parseClubs(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    if-nez p0, :cond_0

    move-object v3, v2

    .line 52
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :goto_0
    return-object v3

    .line 44
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :cond_0
    :try_start_0
    const-string v4, "clubs"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    .local v0, "clubs":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    move-object v3, v2

    .line 46
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    goto :goto_0

    .line 48
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :cond_1
    invoke-static {v0}, Lcom/boohee/model/club/Club;->parseClubs(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "clubs":Lorg/json/JSONArray;
    :goto_1
    move-object v3, v2

    .line 52
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    goto :goto_0

    .line 49
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
