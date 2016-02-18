.class public Lcom/boohee/model/Recipe;
.super Ljava/lang/Object;
.source "Recipe.java"


# instance fields
.field public code:Ljava/lang/String;

.field public condiments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecipeCondiment;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public image_url:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecipeStep;",
            ">;"
        }
    .end annotation
.end field

.field public tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/boohee/model/Recipe;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const/4 v2, 0x0

    .line 41
    :goto_0
    return-object v2

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 37
    .local v2, "result":Lcom/boohee/model/Recipe;
    :try_start_0
    const-class v3, Lcom/boohee/model/Recipe;

    invoke-static {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/boohee/model/Recipe;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
