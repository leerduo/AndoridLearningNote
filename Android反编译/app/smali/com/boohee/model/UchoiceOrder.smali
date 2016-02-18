.class public Lcom/boohee/model/UchoiceOrder;
.super Lcom/boohee/model/Order;
.source "UchoiceOrder.java"


# static fields
.field public static CANCELED:Ljava/lang/String; = null

.field public static EXPIRED:Ljava/lang/String; = null

.field public static INITIAL:Ljava/lang/String; = null

.field public static PART_SENT:Ljava/lang/String; = null

.field public static PAYED:Ljava/lang/String; = null

.field public static SENT:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x160c62178b98a919L


# instance fields
.field public address_city:Ljava/lang/String;

.field public address_district:Ljava/lang/String;

.field public address_province:Ljava/lang/String;

.field public address_street:Ljava/lang/String;

.field public address_zipcode:Ljava/lang/String;

.field public carriage:F

.field public cellphone:Ljava/lang/String;

.field public coupon:Lcom/boohee/model/Coupon;

.field public email:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public order_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/OrderItems;",
            ">;"
        }
    .end annotation
.end field

.field public real_name:Ljava/lang/String;

.field public receive_time:Ljava/lang/String;

.field public shipment_type:Ljava/lang/String;

.field public shipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Shipments;",
            ">;"
        }
    .end annotation
.end field

.field public unshipped_order_item_ids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "initial"

    sput-object v0, Lcom/boohee/model/UchoiceOrder;->INITIAL:Ljava/lang/String;

    .line 15
    const-string v0, "payed"

    sput-object v0, Lcom/boohee/model/UchoiceOrder;->PAYED:Ljava/lang/String;

    .line 16
    const-string v0, "sent"

    sput-object v0, Lcom/boohee/model/UchoiceOrder;->SENT:Ljava/lang/String;

    .line 17
    const-string v0, "part_sent"

    sput-object v0, Lcom/boohee/model/UchoiceOrder;->PART_SENT:Ljava/lang/String;

    .line 18
    const-string v0, "expired"

    sput-object v0, Lcom/boohee/model/UchoiceOrder;->EXPIRED:Ljava/lang/String;

    .line 19
    const-string v0, "canceled"

    sput-object v0, Lcom/boohee/model/UchoiceOrder;->CANCELED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;
    .param p2, "order_no"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/boohee/model/Order;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "orders"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/UchoiceOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Lcom/boohee/model/UchoiceOrder$1;

    invoke-direct {v1}, Lcom/boohee/model/UchoiceOrder$1;-><init>()V

    invoke-virtual {v1}, Lcom/boohee/model/UchoiceOrder$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 77
    .local v0, "type":Ljava/lang/reflect/Type;
    sget-object v1, Lcom/boohee/model/UchoiceOrder;->gson:Lcom/google/gson/Gson;

    instance-of v2, v1, Lcom/google/gson/Gson;

    if-nez v2, :cond_0

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_0
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, p0, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseOrderDetail(Lorg/json/JSONObject;)Lcom/boohee/model/UchoiceOrder;
    .locals 8
    .param p0, "res"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    const/4 v4, 0x0

    .line 45
    .local v4, "orderUchoice":Lcom/boohee/model/UchoiceOrder;
    :try_start_0
    const-string v5, "order"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 46
    .local v3, "missionObj":Lorg/json/JSONObject;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    .local v2, "gson":Lcom/google/gson/Gson;
    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v3    # "missionObj":Lorg/json/JSONObject;
    :goto_0
    const-class v6, Lcom/boohee/model/UchoiceOrder;

    instance-of v7, v2, Lcom/google/gson/Gson;

    if-nez v7, :cond_1

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_1
    move-object v0, v5

    check-cast v0, Lcom/boohee/model/UchoiceOrder;

    move-object v4, v0

    .line 51
    :goto_2
    return-object v4

    .line 47
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "missionObj":Lorg/json/JSONObject;
    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "missionObj":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v5, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static parseOrderId(Lorg/json/JSONObject;)I
    .locals 4
    .param p0, "res"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    const/4 v2, -0x1

    .line 57
    .local v2, "orderId":I
    :try_start_0
    const-string v3, "order"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    .local v1, "missionObj":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 62
    .end local v1    # "missionObj":Lorg/json/JSONObject;
    :goto_0
    return v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/UchoiceOrder;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    instance-of v2, p0, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    const-class v3, Lcom/boohee/model/UchoiceOrder;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_1

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Lcom/boohee/model/UchoiceOrder;

    .line 67
    .local v0, "orderUchoice":Lcom/boohee/model/UchoiceOrder;
    return-object v0

    .line 66
    .end local v0    # "orderUchoice":Lcom/boohee/model/UchoiceOrder;
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static toJson(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/UchoiceOrder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/UchoiceOrder;>;"
    sget-object v0, Lcom/boohee/model/UchoiceOrder;->gson:Lcom/google/gson/Gson;

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
