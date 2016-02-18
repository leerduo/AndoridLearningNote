.class Lcom/alipay/sdk/util/FileDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

.field final synthetic b:Lcom/alipay/sdk/util/FileDownloader;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/FileDownloader;Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    iput-object p2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->a:Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 94
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    new-instance v1, Lcom/alipay/sdk/util/FileFetch;

    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Lcom/alipay/sdk/util/FileDownloader;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v3}, Lcom/alipay/sdk/util/FileDownloader;->b(Lcom/alipay/sdk/util/FileDownloader;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/sdk/util/FileFetch;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/util/FileDownloader;)V

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/FileDownloader;->a(Lcom/alipay/sdk/util/FileDownloader;Lcom/alipay/sdk/util/FileFetch;)Lcom/alipay/sdk/util/FileFetch;

    .line 95
    const-wide/16 v0, -0x1

    .line 96
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    iget-boolean v2, v2, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    if-eqz v2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->c(Lcom/alipay/sdk/util/FileDownloader;)J

    move-result-wide v0

    .line 98
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->a:Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

    invoke-virtual {v0, v5}, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z

    .line 124
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->d(Lcom/alipay/sdk/util/FileDownloader;)V

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    iget-boolean v2, v2, Lcom/alipay/sdk/util/FileDownloader;->a:Z

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->e(Lcom/alipay/sdk/util/FileDownloader;)V

    .line 107
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/FileFetch;->b()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->d(Lcom/alipay/sdk/util/FileDownloader;)V

    .line 109
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/alipay/sdk/util/FileFetch;->a(J)V

    .line 110
    iget-object v2, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v2}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/sdk/util/FileFetch;->b(J)V

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v1}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->a:Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->a(Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;)Z

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->b:Lcom/alipay/sdk/util/FileDownloader;

    invoke-static {v0}, Lcom/alipay/sdk/util/FileDownloader;->f(Lcom/alipay/sdk/util/FileDownloader;)Lcom/alipay/sdk/util/FileFetch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileFetch;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->a:Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

    invoke-virtual {v0, v5}, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/util/FileDownloader$1;->a:Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;

    invoke-virtual {v0, v5}, Lcom/alipay/sdk/util/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
