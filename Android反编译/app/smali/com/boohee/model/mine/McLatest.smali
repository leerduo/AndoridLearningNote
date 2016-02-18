.class public Lcom/boohee/model/mine/McLatest;
.super Ljava/lang/Object;
.source "McLatest.java"


# static fields
.field public static ACTION_END:Ljava/lang/String;

.field public static ACTION_START:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public mc_distance:I

.field public mc_index:I

.field public next_start_on:Ljava/lang/String;

.field public oviposit_day:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "start"

    sput-object v0, Lcom/boohee/model/mine/McLatest;->ACTION_START:Ljava/lang/String;

    .line 13
    const-string v0, "end"

    sput-object v0, Lcom/boohee/model/mine/McLatest;->ACTION_END:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/mine/McLatest;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 23
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    instance-of v2, p0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_1
    const-class v3, Lcom/boohee/model/mine/McLatest;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/boohee/model/mine/McLatest;

    .line 24
    .local v0, "latest":Lcom/boohee/model/mine/McLatest;
    goto :goto_0

    .line 23
    .end local v0    # "latest":Lcom/boohee/model/mine/McLatest;
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method
