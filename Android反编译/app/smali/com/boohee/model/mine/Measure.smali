.class public Lcom/boohee/model/mine/Measure;
.super Lcom/boohee/model/mine/BaseRecord;
.source "Measure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/mine/Measure$MeasureType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30e42456c1c4ca3cL


# instance fields
.field public code:Ljava/lang/String;

.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/boohee/model/mine/BaseRecord;-><init>()V

    .line 35
    return-void
.end method

.method public static getMeasureList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v0
.end method

.method public static parseLists(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/BaseRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 32
    .end local p0    # "array":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 29
    .restart local p0    # "array":Lorg/json/JSONArray;
    :cond_0
    new-instance v2, Lcom/boohee/model/mine/Measure$1;

    invoke-direct {v2}, Lcom/boohee/model/mine/Measure$1;-><init>()V

    invoke-virtual {v2}, Lcom/boohee/model/mine/Measure$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 31
    .local v0, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, p0, Lorg/json/JSONArray;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local p0    # "array":Lorg/json/JSONArray;
    :goto_1
    instance-of v4, v2, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/util/List;

    .line 32
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/BaseRecord;>;"
    goto :goto_0

    .line 31
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/BaseRecord;>;"
    .restart local p0    # "array":Lorg/json/JSONArray;
    :cond_1
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "array":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, v3, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2
.end method
