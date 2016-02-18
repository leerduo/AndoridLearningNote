.class public Lcom/boohee/model/FilterSyncBean;
.super Ljava/lang/Object;
.source "FilterSyncBean.java"


# instance fields
.field private figures:[Lcom/boohee/model/FilterSyncFigureBean;

.field private food:Lcom/boohee/model/FilterSyncFoodBean;

.field private recordOn:Ljava/lang/String;

.field private sport:Lcom/boohee/model/FilterSyncSportBean;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/boohee/model/FilterSyncBean;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/boohee/model/FilterSyncBean;

    instance-of v2, v0, Lcom/google/gson/Gson;

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/boohee/model/FilterSyncBean;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getFigures()[Lcom/boohee/model/FilterSyncFigureBean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->figures:[Lcom/boohee/model/FilterSyncFigureBean;

    return-object v0
.end method

.method public getFood()Lcom/boohee/model/FilterSyncFoodBean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->food:Lcom/boohee/model/FilterSyncFoodBean;

    return-object v0
.end method

.method public getRecordOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->recordOn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->recordOn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSport()Lcom/boohee/model/FilterSyncSportBean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->sport:Lcom/boohee/model/FilterSyncSportBean;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->figures:[Lcom/boohee/model/FilterSyncFigureBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->sport:Lcom/boohee/model/FilterSyncSportBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/model/FilterSyncBean;->food:Lcom/boohee/model/FilterSyncFoodBean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFigures([Lcom/boohee/model/FilterSyncFigureBean;)V
    .locals 0
    .param p1, "figures"    # [Lcom/boohee/model/FilterSyncFigureBean;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/model/FilterSyncBean;->figures:[Lcom/boohee/model/FilterSyncFigureBean;

    .line 70
    return-void
.end method

.method public setFood(Lcom/boohee/model/FilterSyncFoodBean;)V
    .locals 0
    .param p1, "food"    # Lcom/boohee/model/FilterSyncFoodBean;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/model/FilterSyncBean;->food:Lcom/boohee/model/FilterSyncFoodBean;

    .line 37
    return-void
.end method

.method public setRecordOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordOn"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/model/FilterSyncBean;->recordOn:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSport(Lcom/boohee/model/FilterSyncSportBean;)V
    .locals 0
    .param p1, "sport"    # Lcom/boohee/model/FilterSyncSportBean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/model/FilterSyncBean;->sport:Lcom/boohee/model/FilterSyncSportBean;

    .line 45
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/boohee/model/FilterSyncBean;->tag:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
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
