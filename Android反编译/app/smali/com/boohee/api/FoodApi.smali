.class public Lcom/boohee/api/FoodApi;
.super Ljava/lang/Object;
.source "FoodApi.java"


# static fields
.field public static final COLLECTION_DELETE_BATCH:Ljava/lang/String; = "/v2/favorite_foods/batch_delete?food_ids=%s"

.field public static final COLLECTION_LIST:Ljava/lang/String; = "/v2/favorite_foods?page=%d"

.field public static final CUSTOM_DELETE_BATCH:Ljava/lang/String; = "/v2/custom_foods/batch_delete?ids=%s"

.field public static final CUSTOM_FOOD_COUNT:Ljava/lang/String; = "/v2/custom_foods/count"

.field public static final DELETE_CUSTOM_ACTIVITIES:Ljava/lang/String; = "/v2/custom_activities/%1$d"

.field public static final DELETE_CUSTOM_FOODS:Ljava/lang/String; = "/v2/custom_foods/%1$d"

.field public static final DELETE_FAVORITE:Ljava/lang/String; = "/v1/users/favorite_food_records/%1$s"

.field public static final FOOD_FAVORITE_COUNT:Ljava/lang/String; = "/v2/favorite_foods/count"

.field public static final GET_ACTIVITIES_SEARCH:Ljava/lang/String; = "/v2/activities/search?q=%1$s&page=%2$s"

.field public static final GET_CUSTOM_ACTIVITIES:Ljava/lang/String; = "/v2/custom_activities?page=%1$s"

.field public static final GET_CUSTOM_FOODS:Ljava/lang/String; = "/v2/custom_foods?page=%1$s"

.field public static final GET_FAVORITE_FOODS:Ljava/lang/String; = "/v1/users/favorite_food_records?page=%1$d"

.field public static final GET_FOODS_RECIPE:Ljava/lang/String; = "/fb/v1/foods/%1$s/recipe"

.field public static final GET_FOODS_SEARCH:Ljava/lang/String; = "/v2/ifoods/search?q=%1$s&page=%2$s"

.field public static final GET_FOOD_DETAIL:Ljava/lang/String; = "/fb/v1/foods/%1$s"

.field public static final GET_FOOD_HOT:Ljava/lang/String; = "/v2/ifoods/hot?page=%1$d"

.field public static final GET_FOOD_SHOW_WITH_LIGHT:Ljava/lang/String; = "/v2/ifoods/%1$s/show_with_light"

.field public static final GET_FOOD_WITH_BARCODE:Ljava/lang/String; = "/fb/v1/foods/barcode?barcode=%s"

.field public static final GET_IS_FAVORITE:Ljava/lang/String; = "/v1/users/favorite_food_records/%1$s/whether_liked"

.field public static final HOST_IMAGE:Ljava/lang/String; = "http://s.boohee.cn"

.field public static final POST_CUSTOM_ACTIVITIES:Ljava/lang/String; = "/v2/custom_activities"

.field public static final POST_CUSTOM_FOODS:Ljava/lang/String; = "/v2/custom_foods"

.field public static final POST_FAVORITE:Ljava/lang/String; = "/v1/users/favorite_food_records"

.field public static final UPLOAD_FOOD:Ljava/lang/String; = "/fb/v1/food_drafts"

.field public static final UPLOAD_FOOD_COUNT:Ljava/lang/String; = "/fb/v1/food_drafts/count"

.field public static final UPLOAD_FOOD_LIST:Ljava/lang/String; = "/fb/v1/food_drafts?page=%d"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 112
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 113
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "/v1/users/favorite_food_records"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public static createCustomActivities(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 231
    const-string v0, "/v2/custom_activities"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public static createCustomFood(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 198
    const-string v0, "/v2/custom_foods"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method public static deleteCollectionFood(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "foodIds"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 77
    const-string v0, "/v2/favorite_foods/batch_delete?food_ids=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public static deleteCustomActivities(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 242
    const-string v0, "/v2/custom_activities/%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public static deleteCustomFood(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 209
    const-string v0, "/v2/custom_foods/%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public static deleteCustomFood(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "foodIds"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 69
    const-string v0, "/v2/custom_foods/batch_delete?ids=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static deleteFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 125
    const-string v0, "/v1/users/favorite_food_records/%1$s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public static getActivitiesSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 167
    const-string v0, "/v2/activities/search?q=%1$s&page=%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p0}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public static getCollectionFoodList(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 81
    const-string v0, "/v2/favorite_foods?page=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public static getCustomActivities(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 220
    const-string v0, "/v2/custom_activities?page=%1$s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 221
    return-void
.end method

.method public static getCustomFoodCount(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 93
    const-string v0, "/v2/custom_foods/count"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public static getCustomFoods(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 187
    const-string v0, "/v2/custom_foods?page=%1$s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method public static getFavoriteFoods(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 100
    const-string v0, "/v1/users/favorite_food_records?page=%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public static getFoodDetail(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 264
    const-string v0, "/fb/v1/foods/%1$s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/FoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 265
    return-void
.end method

.method public static getFoodFavoriteCount(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 89
    const-string v0, "/v2/favorite_foods/count"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static getFoodHot(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 146
    const-string v0, "/v2/ifoods/hot?page=%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public static getFoodShowWithLight(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 156
    const-string v0, "/v2/ifoods/%1$s/show_with_light"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public static getFoodWithBarcode(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 61
    const-string v0, "/fb/v1/foods/barcode?barcode=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/FoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static getFoodsRecipe(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 253
    const-string v0, "/fb/v1/foods/%1$s/recipe"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/FoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 254
    return-void
.end method

.method public static getFoodsSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 177
    const-string v0, "/v2/ifoods/search?q=%1$s&page=%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p0}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public static getUploadFoodCount(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 85
    const-string v0, "/fb/v1/food_drafts/count"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/FoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public static getUploadFoodList(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "page"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 73
    const-string v0, "/fb/v1/food_drafts?page=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/FoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public static isFavorite(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 136
    const-string v0, "/v1/users/favorite_food_records/%1$s/whether_liked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/IFoodClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public static uploadFood(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 65
    const-string v0, "/fb/v1/food_drafts"

    invoke-static {v0, p0, p2, p1}, Lcom/boohee/one/http/client/FoodClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 66
    return-void
.end method
