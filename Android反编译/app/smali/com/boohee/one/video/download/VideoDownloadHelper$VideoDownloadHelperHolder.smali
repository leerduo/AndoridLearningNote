.class Lcom/boohee/one/video/download/VideoDownloadHelper$VideoDownloadHelperHolder;
.super Ljava/lang/Object;
.source "VideoDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/video/download/VideoDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoDownloadHelperHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/boohee/one/video/download/VideoDownloadHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/boohee/one/video/download/VideoDownloadHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/boohee/one/video/download/VideoDownloadHelper;-><init>(Lcom/boohee/one/video/download/VideoDownloadHelper$1;)V

    sput-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper$VideoDownloadHelperHolder;->INSTANCE:Lcom/boohee/one/video/download/VideoDownloadHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/boohee/one/video/download/VideoDownloadHelper;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper$VideoDownloadHelperHolder;->INSTANCE:Lcom/boohee/one/video/download/VideoDownloadHelper;

    return-object v0
.end method
