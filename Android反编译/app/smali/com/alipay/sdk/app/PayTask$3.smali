.class Lcom/alipay/sdk/app/PayTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/Loading;

.field final synthetic b:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$3;->b:Lcom/alipay/sdk/app/PayTask;

    iput-object p2, p0, Lcom/alipay/sdk/app/PayTask$3;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$3;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    .line 393
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$3;->b:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->e(Lcom/alipay/sdk/app/PayTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$3;->b:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->d(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$3;->b:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->f(Lcom/alipay/sdk/app/PayTask;)V

    .line 395
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$3;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    .line 404
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$3;->b:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->e(Lcom/alipay/sdk/app/PayTask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$3;->b:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->d(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method
