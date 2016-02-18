.class public final enum Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;
.super Ljava/lang/Enum;
.source "TodayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/model/TodayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DESCRIPTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

.field public static final enum good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

.field public static final enum less:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

.field public static final enum much:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    const-string v1, "less"

    invoke-direct {v0, v1, v2}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->less:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    new-instance v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    const-string v1, "good"

    invoke-direct {v0, v1, v3}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    new-instance v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    const-string v1, "much"

    invoke-direct {v0, v1, v4}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->much:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    sget-object v1, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->less:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->much:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->$VALUES:[Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->$VALUES:[Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v0}, [Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    return-object v0
.end method
