.class public Lcom/boohee/model/MonthMc;
.super Ljava/lang/Object;
.source "MonthMc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/MonthMc$Section;
    }
.end annotation


# instance fields
.field public oviposit_day:Ljava/lang/String;

.field public sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MonthMc$Section;",
            ">;"
        }
    .end annotation
.end field

.field public year_month:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/boohee/model/MonthMc;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/boohee/model/MonthMc;

    invoke-static {p0, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/MonthMc;

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/boohee/model/MonthMc;
    .locals 1
    .param p0, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    const-class v0, Lcom/boohee/model/MonthMc;

    invoke-static {p0, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/MonthMc;

    return-object v0
.end method
