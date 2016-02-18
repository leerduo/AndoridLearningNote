.class public final enum Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;
.super Ljava/lang/Enum;
.source "WebViewPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WebViewPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UPLOAD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

.field public static final enum base_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

.field public static final enum end_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    const-string v1, "base_upload"

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->base_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    new-instance v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    const-string v1, "end_upload"

    invoke-direct {v0, v1, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->end_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    sget-object v1, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->base_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->end_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->$VALUES:[Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->$VALUES:[Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    invoke-virtual {v0}, [Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    return-object v0
.end method
