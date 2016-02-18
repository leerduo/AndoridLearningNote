.class public Lcom/boohee/model/Order;
.super Lcom/boohee/model/ModelBase;
.source "Order.java"


# static fields
.field public static gson:Lcom/google/gson/Gson; = null

.field private static final serialVersionUID:J = -0x5918f9eab837de7fL


# instance fields
.field public created_at:Ljava/lang/String;

.field public order_no:Ljava/lang/String;

.field public price:F

.field public state:Ljava/lang/String;

.field public state_text:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/boohee/model/Order;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "created_at"    # Ljava/lang/String;
    .param p2, "order_no"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/boohee/model/Order;->created_at:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/boohee/model/Order;->order_no:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static parseOrders(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "res"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Order;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v7, "orders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Order;>;"
    :try_start_0
    const-string v9, "orders"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 30
    .local v0, "arrays":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 31
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    .local v1, "child":Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    .local v8, "type":Ljava/lang/String;
    const-string v9, "GoodsOrder"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 34
    invoke-static {v1}, Lcom/boohee/model/UchoiceOrder;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/UchoiceOrder;

    move-result-object v6

    .line 35
    .local v6, "orderUchoice":Lcom/boohee/model/UchoiceOrder;
    if-eqz v6, :cond_0

    .line 36
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v6    # "orderUchoice":Lcom/boohee/model/UchoiceOrder;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_1
    const-string v9, "RecipeOrder"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 38
    invoke-static {v1}, Lcom/boohee/model/RecipeOrder;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/RecipeOrder;

    move-result-object v5

    .line 39
    .local v5, "orderRecipe":Lcom/boohee/model/RecipeOrder;
    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    .end local v0    # "arrays":Lorg/json/JSONArray;
    .end local v1    # "child":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v5    # "orderRecipe":Lcom/boohee/model/RecipeOrder;
    .end local v8    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v7

    .line 41
    .restart local v0    # "arrays":Lorg/json/JSONArray;
    .restart local v1    # "child":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    .restart local v8    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v9, "NiceOrder"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 42
    invoke-static {v1}, Lcom/boohee/model/NiceOrder;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/NiceOrder;

    move-result-object v4

    .line 43
    .local v4, "niceOrder":Lcom/boohee/model/NiceOrder;
    if-eqz v4, :cond_0

    .line 44
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
