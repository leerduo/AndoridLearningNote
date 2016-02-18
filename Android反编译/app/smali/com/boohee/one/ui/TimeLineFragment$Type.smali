.class public final enum Lcom/boohee/one/ui/TimeLineFragment$Type;
.super Ljava/lang/Enum;
.source "TimeLineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/TimeLineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/one/ui/TimeLineFragment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/one/ui/TimeLineFragment$Type;

.field public static final enum HOT:Lcom/boohee/one/ui/TimeLineFragment$Type;

.field public static final enum RECENT:Lcom/boohee/one/ui/TimeLineFragment$Type;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/boohee/one/ui/TimeLineFragment$Type;

    const-string v1, "HOT"

    const-string v2, "hot"

    invoke-direct {v0, v1, v3, v2}, Lcom/boohee/one/ui/TimeLineFragment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/boohee/one/ui/TimeLineFragment$Type;->HOT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    new-instance v0, Lcom/boohee/one/ui/TimeLineFragment$Type;

    const-string v1, "RECENT"

    const-string v2, "recent"

    invoke-direct {v0, v1, v4, v2}, Lcom/boohee/one/ui/TimeLineFragment$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/boohee/one/ui/TimeLineFragment$Type;->RECENT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/boohee/one/ui/TimeLineFragment$Type;

    sget-object v1, Lcom/boohee/one/ui/TimeLineFragment$Type;->HOT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/one/ui/TimeLineFragment$Type;->RECENT:Lcom/boohee/one/ui/TimeLineFragment$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/boohee/one/ui/TimeLineFragment$Type;->$VALUES:[Lcom/boohee/one/ui/TimeLineFragment$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/boohee/one/ui/TimeLineFragment$Type;->type:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/TimeLineFragment$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/TimeLineFragment$Type;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/TimeLineFragment$Type;->type:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/one/ui/TimeLineFragment$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/boohee/one/ui/TimeLineFragment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/TimeLineFragment$Type;

    return-object v0
.end method

.method public static values()[Lcom/boohee/one/ui/TimeLineFragment$Type;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/boohee/one/ui/TimeLineFragment$Type;->$VALUES:[Lcom/boohee/one/ui/TimeLineFragment$Type;

    invoke-virtual {v0}, [Lcom/boohee/one/ui/TimeLineFragment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/one/ui/TimeLineFragment$Type;

    return-object v0
.end method
