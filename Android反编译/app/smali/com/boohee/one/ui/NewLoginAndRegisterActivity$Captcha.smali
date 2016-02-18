.class final enum Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;
.super Ljava/lang/Enum;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Captcha"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

.field public static final enum sms:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

.field public static final enum voice:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    const-string v1, "sms"

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->sms:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    new-instance v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    const-string v1, "voice"

    invoke-direct {v0, v1, v3}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->voice:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    sget-object v1, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->sms:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->voice:Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    aput-object v1, v0, v3

    sput-object v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->$VALUES:[Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    return-object v0
.end method

.method public static values()[Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->$VALUES:[Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    invoke-virtual {v0}, [Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/one/ui/NewLoginAndRegisterActivity$Captcha;

    return-object v0
.end method
