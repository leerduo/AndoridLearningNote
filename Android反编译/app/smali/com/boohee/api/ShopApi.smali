.class public Lcom/boohee/api/ShopApi;
.super Ljava/lang/Object;
.source "ShopApi.java"


# static fields
.field public static final CANCEL_ORDER:Ljava/lang/String; = "/api/v1/orders/%1$d/cancel.json"

.field public static final CLEAR_CARTS:Ljava/lang/String; = "/api/v1/carts/clear.json"

.field public static final DELETE_CARTS:Ljava/lang/String; = "/api/v1/carts/batch_delete.json"

.field public static final GET_CARTS:Ljava/lang/String; = "/api/v1/carts.json"

.field public static final GET_CATEGORIES:Ljava/lang/String; = "/api/v1/categories/%1$d"

.field public static final GET_CATEGORIES_SUBS:Ljava/lang/String; = "/api/v1/categories/%1$d/subs/%2$d"

.field public static final GET_COUPONS:Ljava/lang/String; = "/api/v1/coupons"

.field public static final GET_GOODS_DETAIL:Ljava/lang/String; = "/api/v1/goods/%1$d"

.field public static final GET_LABELS_DETAIL:Ljava/lang/String; = "/api/v1/labels/%1$d?page=%2$d"

.field public static final GET_LABELS_HOT:Ljava/lang/String; = "/api/v1/labels/hot"

.field public static final GET_MORE_GOODS:Ljava/lang/String; = "/api/v1/shop_home/more_goods"

.field public static final GET_ORDERS:Ljava/lang/String; = "/api/v1/orders.json"

.field public static final GET_ORDER_DETAIL:Ljava/lang/String; = "/api/v1/orders/%1$d"

.field public static final GET_SHIPMENT_ADDRESS:Ljava/lang/String; = "/api/v1/shipment_addresses.json"

.field public static final GET_SHOP_HOME:Ljava/lang/String; = "/api/v1/shop_home"

.field public static final ORDERS_PREVIEW:Ljava/lang/String; = "/api/v1/orders/preview"

.field public static final ORDERS_STATS:Ljava/lang/String; = "/api/v1/orders/stats.json"

.field public static final POST__SHIPMENT_ADDRESS:Ljava/lang/String; = "/api/v1/shipment_addresses/%1$s.json"

.field public static final TABBAR_STATUS:Ljava/lang/String; = "/api/v1/tabbar_status"

.field public static final UPDATE_CARTS:Ljava/lang/String; = "/api/v1/carts/%1$s.json"

.field public static final URL_REGIONS:Ljava/lang/String; = "/api/v1/regions/more.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCarts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 7
    .param p0, "goodsId"    # I
    .param p1, "quantity"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 179
    new-instance v3, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v3}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 181
    .local v3, "params":Lcom/boohee/one/http/JsonParams;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 182
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v4, "quantity"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    const-string v4, "cart_item"

    invoke-virtual {v3, v4, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    const-string v4, "/api/v1/carts.json"

    invoke-static {v4, v3, p3, p2}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static cancelOrder(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 248
    const-string v0, "/api/v1/orders/%1$d/cancel.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public static clearCarts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 168
    const-string v0, "/api/v1/carts/clear.json"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public static createOrders(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "params"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 280
    const-string v0, "/api/v1/orders.json"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 281
    return-void
.end method

.method public static createShipmentAddress(Lcom/boohee/model/Address;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "address"    # Lcom/boohee/model/Address;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 66
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 67
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "real_name"

    iget-object v2, p0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "email"

    iget-object v2, p0, Lcom/boohee/model/Address;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "province"

    iget-object v2, p0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "cellphone"

    iget-object v2, p0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "city"

    iget-object v2, p0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "district"

    iget-object v2, p0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "street"

    iget-object v2, p0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "zipcode"

    iget-object v2, p0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "default"

    iget-boolean v2, p0, Lcom/boohee/model/Address;->isDefault:Z

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Z)V

    .line 76
    const-string v1, "/api/v1/shipment_addresses.json"

    const-string v2, "shipment_address"

    invoke-virtual {v0, v2}, Lcom/boohee/one/http/JsonParams;->with(Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v2

    invoke-static {v1, v2, p2, p1}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public static deleteCart(Ljava/util/ArrayList;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 157
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "ids"

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "/api/v1/carts/batch_delete.json"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method public static deleteShipmentAddress(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "addressId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 108
    const-string v0, "/api/v1/shipment_addresses/%1$s.json"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public static getCarts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 145
    const-string v0, "/api/v1/carts.json"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public static getCategoriesSubs(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "labelId"    # I
    .param p1, "childLabelId"    # I
    .param p2, "page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 349
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 350
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 351
    const-string v1, "/api/v1/categories/%1$d/subs/%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p4, p3}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method public static getCatetgories(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "labelId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 337
    const-string v0, "/api/v1/categories/%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public static getCoupons(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 210
    const-string v0, "/api/v1/coupons"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 211
    return-void
.end method

.method public static getGoodsDetail(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "goodsId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 291
    const-string v0, "/api/v1/goods/%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method public static getLablesDetail(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "labelId"    # I
    .param p1, "page"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 326
    const-string v0, "/api/v1/labels/%1$d?page=%2$d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 327
    return-void
.end method

.method public static getLablesHot(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 301
    const-string v0, "/api/v1/labels/hot"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 302
    return-void
.end method

.method public static getOrderDetail(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 237
    const-string v0, "/api/v1/orders/%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method public static getOrders(Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "state"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 222
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 223
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "type"

    const-string v2, "GoodsOrder"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 226
    const-string v1, "/api/v1/orders.json"

    invoke-static {v1, v0, p3, p2}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method public static getOrdersPreview(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "params"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 269
    const-string v0, "/api/v1/orders/preview"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method public static getOrdersStats(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 258
    const-string v0, "/api/v1/orders/stats.json"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method public static getRegions(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "timestamp"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 133
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 134
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "/api/v1/regions/more.json"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public static getShipmentAddress(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 55
    const-string v0, "/api/v1/shipment_addresses.json"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public static getShopHomeMoreGoods(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 311
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 312
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 313
    const-string v1, "/api/v1/shop_home/more_goods"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method public static getShopHomePages(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 305
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 306
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 307
    const-string v1, "/api/v1/shop_home"

    invoke-static {v1, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 308
    return-void
.end method

.method public static getTabbarStatus(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 200
    const-string v0, "/api/v1/tabbar_status"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method public static updateCarts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "quantity"    # I
    .param p1, "goodsId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 120
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 121
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "quantity"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 122
    const-string v1, "/api/v1/carts/%1$s.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p3, p2}, Lcom/boohee/one/http/client/OneClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public static updateShipmentAddress(Lcom/boohee/model/Address;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "address"    # Lcom/boohee/model/Address;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 87
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 88
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "real_name"

    iget-object v2, p0, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "email"

    iget-object v2, p0, Lcom/boohee/model/Address;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "province"

    iget-object v2, p0, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "cellphone"

    iget-object v2, p0, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "city"

    iget-object v2, p0, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "district"

    iget-object v2, p0, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "street"

    iget-object v2, p0, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "zipcode"

    iget-object v2, p0, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "default"

    iget-boolean v2, p0, Lcom/boohee/model/Address;->isDefault:Z

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Z)V

    .line 97
    const-string v1, "/api/v1/shipment_addresses/%1$s.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/model/Address;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shipment_address"

    invoke-virtual {v0, v2}, Lcom/boohee/one/http/JsonParams;->with(Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v2

    invoke-static {v1, v2, p2, p1}, Lcom/boohee/one/http/client/OneClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 98
    return-void
.end method
