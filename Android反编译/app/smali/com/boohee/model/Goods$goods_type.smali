.class public final enum Lcom/boohee/model/Goods$goods_type;
.super Ljava/lang/Enum;
.source "Goods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/model/Goods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "goods_type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/model/Goods$goods_type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/model/Goods$goods_type;

.field public static final enum Goods:Lcom/boohee/model/Goods$goods_type;

.field public static final enum PackageGoods:Lcom/boohee/model/Goods$goods_type;

.field public static final enum SpecGoods:Lcom/boohee/model/Goods$goods_type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/boohee/model/Goods$goods_type;

    const-string v1, "Goods"

    invoke-direct {v0, v1, v2}, Lcom/boohee/model/Goods$goods_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_type;->Goods:Lcom/boohee/model/Goods$goods_type;

    new-instance v0, Lcom/boohee/model/Goods$goods_type;

    const-string v1, "PackageGoods"

    invoke-direct {v0, v1, v3}, Lcom/boohee/model/Goods$goods_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_type;->PackageGoods:Lcom/boohee/model/Goods$goods_type;

    new-instance v0, Lcom/boohee/model/Goods$goods_type;

    const-string v1, "SpecGoods"

    invoke-direct {v0, v1, v4}, Lcom/boohee/model/Goods$goods_type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/boohee/model/Goods$goods_type;

    sget-object v1, Lcom/boohee/model/Goods$goods_type;->Goods:Lcom/boohee/model/Goods$goods_type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/model/Goods$goods_type;->PackageGoods:Lcom/boohee/model/Goods$goods_type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/boohee/model/Goods$goods_type;->$VALUES:[Lcom/boohee/model/Goods$goods_type;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/model/Goods$goods_type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/boohee/model/Goods$goods_type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Goods$goods_type;

    return-object v0
.end method

.method public static values()[Lcom/boohee/model/Goods$goods_type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/boohee/model/Goods$goods_type;->$VALUES:[Lcom/boohee/model/Goods$goods_type;

    invoke-virtual {v0}, [Lcom/boohee/model/Goods$goods_type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/model/Goods$goods_type;

    return-object v0
.end method
