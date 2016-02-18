.class public final enum Lcom/alipay/sdk/authjs/CallInfo$CallError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/authjs/CallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallError"
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/sdk/authjs/CallInfo$CallError;

.field public static final enum b:Lcom/alipay/sdk/authjs/CallInfo$CallError;

.field public static final enum c:Lcom/alipay/sdk/authjs/CallInfo$CallError;

.field public static final enum d:Lcom/alipay/sdk/authjs/CallInfo$CallError;

.field public static final enum e:Lcom/alipay/sdk/authjs/CallInfo$CallError;

.field private static final synthetic f:[Lcom/alipay/sdk/authjs/CallInfo$CallError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    const-string v1, "NONE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/authjs/CallInfo$CallError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->a:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    new-instance v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    const-string v1, "FUNCTION_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/alipay/sdk/authjs/CallInfo$CallError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->b:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    new-instance v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    const-string v1, "INVALID_PARAMETER"

    invoke-direct {v0, v1, v4}, Lcom/alipay/sdk/authjs/CallInfo$CallError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->c:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    new-instance v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    const-string v1, "RUNTIME_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/alipay/sdk/authjs/CallInfo$CallError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->d:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    new-instance v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    const-string v1, "NONE_PERMISS"

    invoke-direct {v0, v1, v6}, Lcom/alipay/sdk/authjs/CallInfo$CallError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->e:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/sdk/authjs/CallInfo$CallError;

    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->a:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->b:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->c:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->d:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/authjs/CallInfo$CallError;->e:Lcom/alipay/sdk/authjs/CallInfo$CallError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->f:[Lcom/alipay/sdk/authjs/CallInfo$CallError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/authjs/CallInfo$CallError;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/authjs/CallInfo$CallError;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/sdk/authjs/CallInfo$CallError;->f:[Lcom/alipay/sdk/authjs/CallInfo$CallError;

    invoke-virtual {v0}, [Lcom/alipay/sdk/authjs/CallInfo$CallError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/authjs/CallInfo$CallError;

    return-object v0
.end method
