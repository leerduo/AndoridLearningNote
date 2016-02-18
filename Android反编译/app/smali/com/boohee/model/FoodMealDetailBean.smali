.class public Lcom/boohee/model/FoodMealDetailBean;
.super Ljava/lang/Object;
.source "FoodMealDetailBean.java"


# instance fields
.field private current_page:I

.field private meals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MealBean;",
            ">;"
        }
    .end annotation
.end field

.field private total_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/boohee/model/FoodMealDetailBean;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 43
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/boohee/model/FoodMealDetailBean;

    instance-of v2, v0, Lcom/google/gson/Gson;

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v1, Lcom/boohee/model/FoodMealDetailBean;

    return-object v1

    .restart local v0    # "gson":Lcom/google/gson/Gson;
    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    .end local v0    # "gson":Lcom/google/gson/Gson;
    invoke-static {v0, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/model/FoodMealDetailBean;->current_page:I

    return v0
.end method

.method public getMeals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MealBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boohee/model/FoodMealDetailBean;->meals:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/boohee/model/FoodMealDetailBean;->total_page:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0
    .param p1, "current_page"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/boohee/model/FoodMealDetailBean;->current_page:I

    .line 39
    return-void
.end method

.method public setMeals(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MealBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "meals":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MealBean;>;"
    iput-object p1, p0, Lcom/boohee/model/FoodMealDetailBean;->meals:Ljava/util/List;

    .line 23
    return-void
.end method

.method public setTotal_page(I)V
    .locals 0
    .param p1, "total_page"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/boohee/model/FoodMealDetailBean;->total_page:I

    .line 31
    return-void
.end method
