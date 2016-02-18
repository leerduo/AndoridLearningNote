.class final enum Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;
.super Ljava/lang/Enum;
.source "MobileCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/MobileCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Captcha"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

.field public static final enum sms:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

.field public static final enum voice:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    const-string v1, "sms"

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->sms:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    new-instance v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    const-string v1, "voice"

    invoke-direct {v0, v1, v3}, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->voice:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    sget-object v1, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->sms:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->voice:Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    aput-object v1, v0, v3

    sput-object v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->$VALUES:[Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    return-object v0
.end method

.method public static values()[Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->$VALUES:[Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    invoke-virtual {v0}, [Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/one/onekey/MobileCheckActivity$Captcha;

    return-object v0
.end method
