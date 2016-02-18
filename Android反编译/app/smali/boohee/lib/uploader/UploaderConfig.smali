.class public Lboohee/lib/uploader/UploaderConfig;
.super Ljava/lang/Object;
.source "UploaderConfig.java"


# static fields
.field public static DEBUG:Z

.field public static MAX_HEIGHT:I

.field public static MAX_SIZE:I

.field public static MAX_WIDTH:I

.field public static appVersionName:Ljava/lang/String;

.field public static booheeUserToken:Ljava/lang/String;

.field public static booheeUserkey:Ljava/lang/String;

.field public static sAppContext:Landroid/content/Context;

.field public static sQiniuPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lboohee/lib/uploader/UploaderConfig;->DEBUG:Z

    .line 16
    const-string v0, "t"

    sput-object v0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    .line 17
    const v0, 0x4b000

    sput v0, Lboohee/lib/uploader/UploaderConfig;->MAX_SIZE:I

    .line 18
    const/16 v0, 0x1e0

    sput v0, Lboohee/lib/uploader/UploaderConfig;->MAX_WIDTH:I

    .line 19
    const/16 v0, 0x320

    sput v0, Lboohee/lib/uploader/UploaderConfig;->MAX_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lboohee/lib/uploader/UploaderConfig;->DEBUG:Z

    .line 59
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    sget v1, Lboohee/lib/uploader/UploaderConfig;->MAX_SIZE:I

    invoke-static {p0, v0, v1}, Lboohee/lib/uploader/UploaderConfig;->init(Landroid/content/Context;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "qiniuPrefix"    # Ljava/lang/String;
    .param p2, "maxPictureSize"    # I

    .prologue
    .line 47
    sput-object p0, Lboohee/lib/uploader/UploaderConfig;->sAppContext:Landroid/content/Context;

    .line 48
    sput-object p1, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    .line 49
    sput p2, Lboohee/lib/uploader/UploaderConfig;->MAX_SIZE:I

    .line 50
    return-void
.end method

.method public static setBooheeUploadParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "versionName"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 78
    sput-object p0, Lboohee/lib/uploader/UploaderConfig;->appVersionName:Ljava/lang/String;

    .line 79
    sput-object p1, Lboohee/lib/uploader/UploaderConfig;->booheeUserkey:Ljava/lang/String;

    .line 80
    sput-object p2, Lboohee/lib/uploader/UploaderConfig;->booheeUserToken:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static setQiniuPrefix(Ljava/lang/String;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 67
    sput-object p0, Lboohee/lib/uploader/UploaderConfig;->sQiniuPrefix:Ljava/lang/String;

    .line 68
    return-void
.end method
