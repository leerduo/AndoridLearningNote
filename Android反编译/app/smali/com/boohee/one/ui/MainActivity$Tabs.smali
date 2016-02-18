.class final enum Lcom/boohee/one/ui/MainActivity$Tabs;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tabs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/one/ui/MainActivity$Tabs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/one/ui/MainActivity$Tabs;

.field public static final enum COUPLE:Lcom/boohee/one/ui/MainActivity$Tabs;

.field public static final enum HOME:Lcom/boohee/one/ui/MainActivity$Tabs;

.field public static final enum MINE:Lcom/boohee/one/ui/MainActivity$Tabs;

.field public static final enum SHOP:Lcom/boohee/one/ui/MainActivity$Tabs;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/boohee/one/ui/MainActivity$Tabs;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/MainActivity$Tabs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/MainActivity$Tabs;->HOME:Lcom/boohee/one/ui/MainActivity$Tabs;

    new-instance v0, Lcom/boohee/one/ui/MainActivity$Tabs;

    const-string v1, "COUPLE"

    invoke-direct {v0, v1, v3}, Lcom/boohee/one/ui/MainActivity$Tabs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/MainActivity$Tabs;->COUPLE:Lcom/boohee/one/ui/MainActivity$Tabs;

    new-instance v0, Lcom/boohee/one/ui/MainActivity$Tabs;

    const-string v1, "MINE"

    invoke-direct {v0, v1, v4}, Lcom/boohee/one/ui/MainActivity$Tabs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/MainActivity$Tabs;->MINE:Lcom/boohee/one/ui/MainActivity$Tabs;

    new-instance v0, Lcom/boohee/one/ui/MainActivity$Tabs;

    const-string v1, "SHOP"

    invoke-direct {v0, v1, v5}, Lcom/boohee/one/ui/MainActivity$Tabs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/MainActivity$Tabs;->SHOP:Lcom/boohee/one/ui/MainActivity$Tabs;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/boohee/one/ui/MainActivity$Tabs;

    sget-object v1, Lcom/boohee/one/ui/MainActivity$Tabs;->HOME:Lcom/boohee/one/ui/MainActivity$Tabs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/one/ui/MainActivity$Tabs;->COUPLE:Lcom/boohee/one/ui/MainActivity$Tabs;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/one/ui/MainActivity$Tabs;->MINE:Lcom/boohee/one/ui/MainActivity$Tabs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boohee/one/ui/MainActivity$Tabs;->SHOP:Lcom/boohee/one/ui/MainActivity$Tabs;

    aput-object v1, v0, v5

    sput-object v0, Lcom/boohee/one/ui/MainActivity$Tabs;->$VALUES:[Lcom/boohee/one/ui/MainActivity$Tabs;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/one/ui/MainActivity$Tabs;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/MainActivity$Tabs;

    return-object v0
.end method

.method public static values()[Lcom/boohee/one/ui/MainActivity$Tabs;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/boohee/one/ui/MainActivity$Tabs;->$VALUES:[Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v0}, [Lcom/boohee/one/ui/MainActivity$Tabs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/one/ui/MainActivity$Tabs;

    return-object v0
.end method
