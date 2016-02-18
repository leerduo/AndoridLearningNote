.class public final enum Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;
.super Ljava/lang/Enum;
.source "ChallengeSortHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/ChallengeSortHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

.field public static final enum ClockOutChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

.field public static final enum WalkingChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    const-string v1, "WalkingChallenge"

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->WalkingChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    new-instance v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    const-string v1, "ClockOutChallenge"

    invoke-direct {v0, v1, v3}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->ClockOutChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    sget-object v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->WalkingChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->ClockOutChallenge:Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->$VALUES:[Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    return-object v0
.end method

.method public static values()[Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->$VALUES:[Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    invoke-virtual {v0}, [Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/one/ui/ChallengeSortHistoryActivity$Type;

    return-object v0
.end method
