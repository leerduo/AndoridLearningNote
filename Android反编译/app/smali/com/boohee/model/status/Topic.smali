.class public Lcom/boohee/model/status/Topic;
.super Ljava/lang/Object;
.source "Topic.java"


# instance fields
.field public choice:Z

.field public head_image_url:Ljava/lang/String;

.field public id:I

.field public page_url:Ljava/lang/String;

.field public posts_count:I

.field public slug:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/Topic;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    instance-of v1, p0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_1
    const-class v2, Lcom/boohee/model/status/Topic;

    instance-of v3, v0, Lcom/google/gson/Gson;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/boohee/model/status/Topic;

    goto :goto_0

    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method
