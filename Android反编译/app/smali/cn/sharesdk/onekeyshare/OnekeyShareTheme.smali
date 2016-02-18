.class public final enum Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
.super Ljava/lang/Enum;
.source "OnekeyShareTheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/onekeyshare/OnekeyShareTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

.field public static final enum CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

.field public static final enum SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    const-string v1, "CLASSIC"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    const-string v1, "SKYBLUE"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    sget-object v1, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->CLASSIC:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    aput-object v1, v0, v3

    sput-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->$VALUES:[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->$VALUES:[Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    invoke-virtual {v0}, [Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    return-object v0
.end method
