.class final Lcom/alipay/sdk/util/FileFetch$FileAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/FileFetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FileAccess"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/FileFetch;

.field private b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/util/FileFetch;)V
    .locals 3

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->a:Lcom/alipay/sdk/util/FileFetch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/alipay/sdk/util/FileFetch;->a(Lcom/alipay/sdk/util/FileFetch;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->b:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return p2

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/FileFetch$FileAccess;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
