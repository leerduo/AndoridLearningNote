.class public Lcom/boohee/model/FoodInfo;
.super Ljava/lang/Object;
.source "FoodInfo.java"


# instance fields
.field public appraise:Ljava/lang/String;

.field public calory:Ljava/lang/String;

.field public carbohydrate:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public compare:Lcom/boohee/model/FoodCompare;

.field public fat:Ljava/lang/String;

.field public fiber_dietary:Ljava/lang/String;

.field public health_light:I

.field public id:I

.field public ingredient:Lcom/boohee/model/FoodIngredient;

.field public is_liquid:Z

.field public large_image_url:Ljava/lang/String;

.field public lights:Lcom/boohee/model/FoodLights;

.field public name:Ljava/lang/String;

.field public protein:Ljava/lang/String;

.field public recipe:Z

.field public thumb_image_url:Ljava/lang/String;

.field public units:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FoodInfoUnit;",
            ">;"
        }
    .end annotation
.end field

.field public uploader:Ljava/lang/String;

.field public weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/boohee/model/FoodInfo;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const/4 v2, 0x0

    .line 54
    :goto_0
    return-object v2

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 50
    .local v2, "result":Lcom/boohee/model/FoodInfo;
    :try_start_0
    const-class v3, Lcom/boohee/model/FoodInfo;

    invoke-static {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/boohee/model/FoodInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
