.class public Lcom/boohee/one/cache/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/cache/FileCache$1;,
        Lcom/boohee/one/cache/FileCache$Utils;,
        Lcom/boohee/one/cache/FileCache$ACacheManager;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/boohee/one/cache/FileCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/boohee/one/cache/FileCache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "max_size"    # J
    .param p4, "max_count"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t make dirs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v1, Lcom/boohee/one/cache/FileCache$ACacheManager;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/boohee/one/cache/FileCache$ACacheManager;-><init>(Lcom/boohee/one/cache/FileCache;Ljava/io/File;JILcom/boohee/one/cache/FileCache$1;)V

    iput-object v1, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    .line 97
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 62
    const-string v0, "ACache"

    invoke-static {p0, v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;JI)Lcom/boohee/one/cache/FileCache;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ACache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, "f":Ljava/io/File;
    invoke-static {v0, p1, p2, p3}, Lcom/boohee/one/cache/FileCache;->get(Ljava/io/File;JI)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/one/cache/FileCache;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v0, "f":Ljava/io/File;
    const-wide/32 v2, 0x2faf080

    const v1, 0x7fffffff

    invoke-static {v0, v2, v3, v1}, Lcom/boohee/one/cache/FileCache;->get(Ljava/io/File;JI)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/io/File;)Lcom/boohee/one/cache/FileCache;
    .locals 3
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 71
    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/boohee/one/cache/FileCache;->get(Ljava/io/File;JI)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/io/File;JI)Lcom/boohee/one/cache/FileCache;
    .locals 5
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 80
    sget-object v1, Lcom/boohee/one/cache/FileCache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/boohee/one/cache/FileCache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/cache/FileCache;

    .line 81
    .local v0, "manager":Lcom/boohee/one/cache/FileCache;
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/boohee/one/cache/FileCache;

    .end local v0    # "manager":Lcom/boohee/one/cache/FileCache;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/boohee/one/cache/FileCache;-><init>(Ljava/io/File;JI)V

    .line 83
    .restart local v0    # "manager":Lcom/boohee/one/cache/FileCache;
    sget-object v1, Lcom/boohee/one/cache/FileCache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/boohee/one/cache/FileCache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-object v0
.end method

.method private static myPid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$1500(Lcom/boohee/one/cache/FileCache$ACacheManager;)V

    .line 532
    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v1, p1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$100(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 512
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "f":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "RAFile":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 318
    .local v5, "removeFile":Z
    :try_start_0
    iget-object v7, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v7, p1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$400(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 319
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 334
    if-eqz v0, :cond_0

    .line 336
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 342
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v6

    .line 337
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 338
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v1, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .local v1, "RAFile":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v2, v7, [B

    .line 323
    .local v2, "byteArray":[B
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 324
    invoke-static {v2}, Lcom/boohee/one/cache/FileCache$Utils;->access$800([B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 325
    invoke-static {v2}, Lcom/boohee/one/cache/FileCache$Utils;->access$900([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 334
    if-eqz v1, :cond_3

    .line 336
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 341
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 342
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    :cond_4
    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 337
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .line 338
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 327
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v5, 0x1

    .line 334
    if-eqz v1, :cond_6

    .line 336
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 341
    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    .line 342
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    :cond_7
    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 337
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    .line 338
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 330
    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v2    # "byteArray":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    .line 331
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 334
    if-eqz v0, :cond_8

    .line 336
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 341
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    if-eqz v5, :cond_1

    .line 342
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_1

    .line 337
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 338
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 334
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_9

    .line 336
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 341
    :cond_9
    :goto_7
    if-eqz v5, :cond_a

    .line 342
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    :cond_a
    throw v6

    .line 337
    :catch_5
    move-exception v3

    .line 338
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 334
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 330
    .end local v0    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "RAFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "RAFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "RAFile":Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache$Utils;->access$1100([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache$Utils;->access$1100([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache$Utils;->access$1300(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    :goto_0
    return-object v2

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "JSONString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 220
    :goto_0
    return-object v2

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 397
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v2

    .line 398
    .local v2, "data":[B
    if-eqz v2, :cond_1

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 402
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 404
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 411
    .local v6, "reObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 412
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 417
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 418
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 424
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v6

    .line 413
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "reObject":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 414
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 419
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 420
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 406
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "reObject":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v3

    .line 407
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 411
    if-eqz v0, :cond_2

    .line 412
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 417
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    if-eqz v4, :cond_1

    .line 418
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 419
    :catch_3
    move-exception v3

    .line 420
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 413
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 414
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 410
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 411
    :goto_4
    if-eqz v0, :cond_3

    .line 412
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 417
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 418
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 421
    :cond_4
    :goto_6
    throw v7

    .line 413
    :catch_5
    move-exception v3

    .line 414
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 419
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 420
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 410
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 406
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 148
    iget-object v8, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v8, p1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$400(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 149
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v7

    .line 151
    :cond_1
    const/4 v6, 0x0

    .line 152
    .local v6, "removeFile":Z
    const/4 v3, 0x0

    .line 154
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 157
    .local v5, "readString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 160
    :cond_2
    invoke-static {v5}, Lcom/boohee/one/cache/FileCache$Utils;->access$500(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 161
    invoke-static {v5}, Lcom/boohee/one/cache/FileCache$Utils;->access$600(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 170
    if-eqz v4, :cond_3

    .line 172
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    :cond_3
    :goto_2
    if-eqz v6, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v6, 0x1

    .line 170
    if-eqz v4, :cond_5

    .line 172
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 177
    :cond_5
    :goto_3
    if-eqz v6, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 166
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "readString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    if-eqz v3, :cond_6

    .line 172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 177
    :cond_6
    :goto_5
    if-eqz v6, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 173
    :catch_3
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_7

    .line 172
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 177
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 178
    invoke-virtual {p0, p1}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    :cond_8
    throw v7

    .line 173
    :catch_4
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_6

    .line 166
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 439
    invoke-static {p2}, Lcom/boohee/one/cache/FileCache$Utils;->access$1000(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;[B)V

    .line 440
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;
    .param p3, "saveTime"    # I

    .prologue
    .line 450
    invoke-static {p2}, Lcom/boohee/one/cache/FileCache$Utils;->access$1000(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;[BI)V

    .line 451
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 477
    invoke-static {p2}, Lcom/boohee/one/cache/FileCache$Utils;->access$1200(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 478
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/Drawable;
    .param p3, "saveTime"    # I

    .prologue
    .line 488
    invoke-static {p2}, Lcom/boohee/one/cache/FileCache$Utils;->access$1200(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 489
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 357
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 358
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "saveTime"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 371
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 373
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 375
    .local v2, "data":[B
    const/4 v6, -0x1

    if-eq p3, v6, :cond_0

    .line 376
    invoke-virtual {p0, p1, v2, p3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;[BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 384
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 388
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 378
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 380
    .end local v2    # "data":[B
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 381
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 384
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 387
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 383
    .end local v2    # "data":[B
    :catchall_0
    move-exception v6

    .line 384
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 386
    :goto_4
    throw v6

    .line 385
    :catch_3
    move-exception v7

    goto :goto_4

    .line 383
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 380
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v4, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v4, p1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$100(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 111
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 113
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    if-eqz v3, :cond_0

    .line 120
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 121
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v4, v1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$200(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 128
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 122
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-eqz v2, :cond_1

    .line 120
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 126
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v4, v1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$200(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/io/File;)V

    goto :goto_1

    .line 122
    :catch_2
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 120
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 121
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 126
    :cond_2
    :goto_5
    iget-object v5, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v5, v1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$200(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/io/File;)V

    throw v4

    .line 122
    :catch_3
    move-exception v0

    .line 123
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 115
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveTime"    # I

    .prologue
    .line 138
    invoke-static {p3, p2}, Lcom/boohee/one/cache/FileCache$Utils;->access$300(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 235
    instance-of v0, p2, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p2    # "value":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 235
    .restart local p2    # "value":Lorg/json/JSONArray;
    :cond_0
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "value":Lorg/json/JSONArray;
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;
    .param p3, "saveTime"    # I

    .prologue
    .line 246
    instance-of v0, p2, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p2    # "value":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    return-void

    .line 246
    .restart local p2    # "value":Lorg/json/JSONArray;
    :cond_0
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "value":Lorg/json/JSONArray;
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 193
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p2    # "value":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 193
    .restart local p2    # "value":Lorg/json/JSONObject;
    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "value":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "saveTime"    # I

    .prologue
    .line 204
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p2    # "value":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    return-void

    .line 204
    .restart local p2    # "value":Lorg/json/JSONObject;
    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "value":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 277
    iget-object v4, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v4, p1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$100(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 278
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 280
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    if-eqz v3, :cond_0

    .line 287
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 288
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v4, v1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$200(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/io/File;)V

    move-object v2, v3

    .line 295
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 289
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-eqz v2, :cond_1

    .line 287
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v4, v1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$200(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/io/File;)V

    goto :goto_1

    .line 289
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 287
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 293
    :cond_2
    :goto_5
    iget-object v5, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v5, v1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$200(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/io/File;)V

    throw v4

    .line 289
    :catch_3
    move-exception v0

    .line 290
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 282
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "saveTime"    # I

    .prologue
    .line 305
    invoke-static {p3, p2}, Lcom/boohee/one/cache/FileCache$Utils;->access$700(I[B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;[B)V

    .line 306
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/boohee/one/cache/FileCache;->mCache:Lcom/boohee/one/cache/FileCache$ACacheManager;

    invoke-static {v0, p1}, Lcom/boohee/one/cache/FileCache$ACacheManager;->access$1400(Lcom/boohee/one/cache/FileCache$ACacheManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
