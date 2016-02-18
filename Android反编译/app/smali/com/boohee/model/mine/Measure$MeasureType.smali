.class public final enum Lcom/boohee/model/mine/Measure$MeasureType;
.super Ljava/lang/Enum;
.source "Measure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/model/mine/Measure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/model/mine/Measure$MeasureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum ARM:Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum HIP:Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

.field public static final enum WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;


# instance fields
.field private code:I

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v1, "WEIGHT"

    const-string v3, "\u4f53\u91cd"

    const-string v4, "weight"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    new-instance v3, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v4, "WAIST"

    const-string v6, "\u8170\u56f4"

    const-string v7, "waist"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    new-instance v3, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v4, "BRASS"

    const-string v6, "\u80f8\u56f4"

    const-string v7, "brass"

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    new-instance v3, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v4, "HIP"

    const-string v6, "\u81c0\u56f4"

    const-string v7, "hip"

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    .line 38
    new-instance v3, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v4, "ARM"

    const-string v6, "\u624b\u81c2\u56f4"

    const-string v7, "arm"

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    new-instance v3, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v4, "THIGH"

    const/4 v5, 0x5

    const-string v6, "\u5927\u817f\u56f4"

    const-string v7, "thigh"

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    new-instance v3, Lcom/boohee/model/mine/Measure$MeasureType;

    const-string v4, "SHANK"

    const/4 v5, 0x6

    const-string v6, "\u5c0f\u817f\u56f4"

    const-string v7, "shank"

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lcom/boohee/model/mine/Measure$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/boohee/model/mine/Measure$MeasureType;

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->$VALUES:[Lcom/boohee/model/mine/Measure$MeasureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/boohee/model/mine/Measure$MeasureType;->name:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/boohee/model/mine/Measure$MeasureType;->type:Ljava/lang/String;

    .line 46
    iput p5, p0, Lcom/boohee/model/mine/Measure$MeasureType;->code:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/model/mine/Measure$MeasureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/mine/Measure$MeasureType;

    return-object v0
.end method

.method public static values()[Lcom/boohee/model/mine/Measure$MeasureType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->$VALUES:[Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, [Lcom/boohee/model/mine/Measure$MeasureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/model/mine/Measure$MeasureType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/boohee/model/mine/Measure$MeasureType;->code:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/model/mine/Measure$MeasureType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/model/mine/Measure$MeasureType;->type:Ljava/lang/String;

    return-object v0
.end method
