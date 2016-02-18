.class public Lcom/boohee/one/easemob/utils/HXImageCache;
.super Ljava/lang/Object;
.source "HXImageCache.java"


# static fields
.field private static imageCache:Lcom/boohee/one/easemob/utils/HXImageCache;


# instance fields
.field private cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/boohee/one/easemob/utils/HXImageCache;->imageCache:Lcom/boohee/one/easemob/utils/HXImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/easemob/utils/HXImageCache;->cache:Landroid/support/v4/util/LruCache;

    .line 14
    new-instance v0, Lcom/boohee/one/easemob/utils/HXImageCache$1;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/easemob/utils/HXImageCache$1;-><init>(Lcom/boohee/one/easemob/utils/HXImageCache;I)V

    iput-object v0, p0, Lcom/boohee/one/easemob/utils/HXImageCache;->cache:Landroid/support/v4/util/LruCache;

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/boohee/one/easemob/utils/HXImageCache;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/boohee/one/easemob/utils/HXImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boohee/one/easemob/utils/HXImageCache;->imageCache:Lcom/boohee/one/easemob/utils/HXImageCache;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/boohee/one/easemob/utils/HXImageCache;

    invoke-direct {v0}, Lcom/boohee/one/easemob/utils/HXImageCache;-><init>()V

    sput-object v0, Lcom/boohee/one/easemob/utils/HXImageCache;->imageCache:Lcom/boohee/one/easemob/utils/HXImageCache;

    .line 28
    :cond_0
    sget-object v0, Lcom/boohee/one/easemob/utils/HXImageCache;->imageCache:Lcom/boohee/one/easemob/utils/HXImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/easemob/utils/HXImageCache;->cache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/easemob/utils/HXImageCache;->cache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
