.class public final enum Lcom/boohee/model/Goods$goods_state;
.super Ljava/lang/Enum;
.source "Goods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/model/Goods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "goods_state"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/model/Goods$goods_state;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/model/Goods$goods_state;

.field public static final enum initial:Lcom/boohee/model/Goods$goods_state;

.field public static final enum not_sale:Lcom/boohee/model/Goods$goods_state;

.field public static final enum on_sale:Lcom/boohee/model/Goods$goods_state;

.field public static final enum stop_sale:Lcom/boohee/model/Goods$goods_state;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/boohee/model/Goods$goods_state;

    const-string v1, "initial"

    invoke-direct {v0, v1, v2}, Lcom/boohee/model/Goods$goods_state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_state;->initial:Lcom/boohee/model/Goods$goods_state;

    new-instance v0, Lcom/boohee/model/Goods$goods_state;

    const-string v1, "on_sale"

    invoke-direct {v0, v1, v3}, Lcom/boohee/model/Goods$goods_state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_state;->on_sale:Lcom/boohee/model/Goods$goods_state;

    new-instance v0, Lcom/boohee/model/Goods$goods_state;

    const-string v1, "not_sale"

    invoke-direct {v0, v1, v4}, Lcom/boohee/model/Goods$goods_state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_state;->not_sale:Lcom/boohee/model/Goods$goods_state;

    new-instance v0, Lcom/boohee/model/Goods$goods_state;

    const-string v1, "stop_sale"

    invoke-direct {v0, v1, v5}, Lcom/boohee/model/Goods$goods_state;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Goods$goods_state;->stop_sale:Lcom/boohee/model/Goods$goods_state;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/boohee/model/Goods$goods_state;

    sget-object v1, Lcom/boohee/model/Goods$goods_state;->initial:Lcom/boohee/model/Goods$goods_state;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/model/Goods$goods_state;->on_sale:Lcom/boohee/model/Goods$goods_state;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/model/Goods$goods_state;->not_sale:Lcom/boohee/model/Goods$goods_state;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boohee/model/Goods$goods_state;->stop_sale:Lcom/boohee/model/Goods$goods_state;

    aput-object v1, v0, v5

    sput-object v0, Lcom/boohee/model/Goods$goods_state;->$VALUES:[Lcom/boohee/model/Goods$goods_state;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/model/Goods$goods_state;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/boohee/model/Goods$goods_state;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Goods$goods_state;

    return-object v0
.end method

.method public static values()[Lcom/boohee/model/Goods$goods_state;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/boohee/model/Goods$goods_state;->$VALUES:[Lcom/boohee/model/Goods$goods_state;

    invoke-virtual {v0}, [Lcom/boohee/model/Goods$goods_state;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/model/Goods$goods_state;

    return-object v0
.end method
