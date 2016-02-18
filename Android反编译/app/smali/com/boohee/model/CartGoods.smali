.class public Lcom/boohee/model/CartGoods;
.super Lcom/boohee/model/ModelBase;
.source "CartGoods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/CartGoods$goods_state;,
        Lcom/boohee/model/CartGoods$goods_type;
    }
.end annotation


# instance fields
.field public a_photo_url:Ljava/lang/String;

.field public all_big_photo_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public all_thumb_photo_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b_photo_url:Ljava/lang/String;

.field public base_price:F

.field public big_photo_url:Ljava/lang/String;

.field public c_photo_url:Ljava/lang/String;

.field public can_sale:Z

.field public cart_id:I

.field public category_id:I

.field public category_name:Ljava/lang/String;

.field public chosen_specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FormatModel;",
            ">;"
        }
    .end annotation
.end field

.field public created_at:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public flag_url:Ljava/lang/String;

.field public flash_sale:Lcom/boohee/model/Promotion;

.field public goods_id:I

.field public isChecked:Ljava/lang/Boolean;

.field public market_price:F

.field public month_quantity:I

.field public msg:Ljava/lang/String;

.field public need_carriage:Z

.field public quantity:I

.field public share:Lcom/boohee/model/Share;

.field public slug:Ljava/lang/String;

.field public square_photo_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public state:Ljava/lang/String;

.field public state_text:Ljava/lang/String;

.field public thumb_photo_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unit_name:Ljava/lang/String;

.field public user_key:Ljava/lang/String;

.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/CartGoods;->isChecked:Ljava/lang/Boolean;

    .line 52
    iput v1, p0, Lcom/boohee/model/CartGoods;->quantity:I

    .line 63
    iput-boolean v1, p0, Lcom/boohee/model/CartGoods;->can_sale:Z

    return-void
.end method

.method public static parseCart(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "res"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    new-instance v4, Lcom/boohee/model/CartGoods$1;

    invoke-direct {v4}, Lcom/boohee/model/CartGoods$1;-><init>()V

    invoke-virtual {v4}, Lcom/boohee/model/CartGoods$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 73
    .local v3, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 74
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v4, "item"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v1, Ljava/util/ArrayList;

    .line 80
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :goto_1
    return-object v1

    .line 74
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v4, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 77
    .end local v3    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static parseGoodsFromJson(Lorg/json/JSONObject;)Lcom/boohee/model/CartGoods;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "goods":Lcom/boohee/model/CartGoods;
    :try_start_0
    const-string v5, "goods"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 87
    .local v4, "missionObj":Lorg/json/JSONObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 88
    .local v3, "gson":Lcom/google/gson/Gson;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v4    # "missionObj":Lorg/json/JSONObject;
    :goto_0
    const-class v6, Lcom/boohee/model/CartGoods;

    instance-of v7, v3, Lcom/google/gson/Gson;

    if-nez v7, :cond_1

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_1
    move-object v0, v5

    check-cast v0, Lcom/boohee/model/CartGoods;

    move-object v2, v0

    .line 92
    :goto_2
    return-object v2

    .line 88
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "missionObj":Lorg/json/JSONObject;
    :cond_0
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "missionObj":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v5, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
