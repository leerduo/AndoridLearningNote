.class public final enum Lcom/boohee/model/Alarm$AlarmType;
.super Ljava/lang/Enum;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/model/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlarmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/model/Alarm$AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/model/Alarm$AlarmType;

.field public static final enum DIET:Lcom/boohee/model/Alarm$AlarmType;

.field public static final enum DRINK:Lcom/boohee/model/Alarm$AlarmType;

.field public static final enum MORNING:Lcom/boohee/model/Alarm$AlarmType;

.field public static final enum SPORT:Lcom/boohee/model/Alarm$AlarmType;


# instance fields
.field private code:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 67
    new-instance v0, Lcom/boohee/model/Alarm$AlarmType;

    const-string v1, "MORNING"

    const-string v2, "morning"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/boohee/model/Alarm$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Alarm$AlarmType;->MORNING:Lcom/boohee/model/Alarm$AlarmType;

    new-instance v0, Lcom/boohee/model/Alarm$AlarmType;

    const-string v1, "DIET"

    const-string v2, "diet"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/boohee/model/Alarm$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Alarm$AlarmType;->DIET:Lcom/boohee/model/Alarm$AlarmType;

    new-instance v0, Lcom/boohee/model/Alarm$AlarmType;

    const-string v1, "SPORT"

    const-string v2, "sport"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/boohee/model/Alarm$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Alarm$AlarmType;->SPORT:Lcom/boohee/model/Alarm$AlarmType;

    new-instance v0, Lcom/boohee/model/Alarm$AlarmType;

    const-string v1, "DRINK"

    const-string v2, "drink"

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/boohee/model/Alarm$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/boohee/model/Alarm$AlarmType;->DRINK:Lcom/boohee/model/Alarm$AlarmType;

    .line 66
    new-array v0, v7, [Lcom/boohee/model/Alarm$AlarmType;

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->MORNING:Lcom/boohee/model/Alarm$AlarmType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->DIET:Lcom/boohee/model/Alarm$AlarmType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->SPORT:Lcom/boohee/model/Alarm$AlarmType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/boohee/model/Alarm$AlarmType;->DRINK:Lcom/boohee/model/Alarm$AlarmType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/boohee/model/Alarm$AlarmType;->$VALUES:[Lcom/boohee/model/Alarm$AlarmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/boohee/model/Alarm$AlarmType;->code:Ljava/lang/String;

    .line 74
    iput p4, p0, Lcom/boohee/model/Alarm$AlarmType;->type:I

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/model/Alarm$AlarmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/boohee/model/Alarm$AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Alarm$AlarmType;

    return-object v0
.end method

.method public static values()[Lcom/boohee/model/Alarm$AlarmType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/boohee/model/Alarm$AlarmType;->$VALUES:[Lcom/boohee/model/Alarm$AlarmType;

    invoke-virtual {v0}, [Lcom/boohee/model/Alarm$AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/model/Alarm$AlarmType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/boohee/model/Alarm$AlarmType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/boohee/model/Alarm$AlarmType;->type:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/boohee/model/Alarm$AlarmType;->code:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/boohee/model/Alarm$AlarmType;->type:I

    .line 91
    return-void
.end method
