.class public Lcom/boohee/model/Coupon;
.super Ljava/lang/Object;
.source "Coupon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/Coupon$coupon_state;
    }
.end annotation


# instance fields
.field public amount:Ljava/lang/String;

.field public expired_at:Ljava/lang/String;

.field public id:I

.field public isChecked:Ljava/lang/Boolean;

.field public order_amount:Ljava/lang/String;

.field public started_at:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/Coupon;->isChecked:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "res"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Coupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v4, Lcom/boohee/model/Coupon$1;

    invoke-direct {v4}, Lcom/boohee/model/Coupon$1;-><init>()V

    invoke-virtual {v4}, Lcom/boohee/model/Coupon$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 33
    .local v3, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 34
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v4, "coupons"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :goto_1
    return-object v0

    .line 34
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v4, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 38
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static parseLists(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Coupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v2, Lcom/boohee/model/Coupon$2;

    invoke-direct {v2}, Lcom/boohee/model/Coupon$2;-><init>()V

    invoke-virtual {v2}, Lcom/boohee/model/Coupon$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 51
    .local v0, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, v2, Lcom/google/gson/Gson;

    if-nez v3, :cond_0

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/List;

    .line 52
    .local v1, "topics":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Coupon;>;"
    return-object v1

    .line 51
    .end local v1    # "topics":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Coupon;>;"
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, p0, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseTopic(Lorg/json/JSONObject;)Lcom/boohee/model/Coupon;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 58
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
    const-class v3, Lcom/boohee/model/Coupon;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/boohee/model/Coupon;

    .line 59
    .local v0, "data":Lcom/boohee/model/Coupon;
    goto :goto_0

    .line 58
    .end local v0    # "data":Lcom/boohee/model/Coupon;
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


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
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
