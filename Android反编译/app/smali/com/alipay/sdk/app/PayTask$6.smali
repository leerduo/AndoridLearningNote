.class Lcom/alipay/sdk/app/PayTask$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/Utils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 479
    iget-object v7, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u53d6\u6d88\u5b89\u88c5\uff1f"

    const-string v3, "\u91cd\u65b0\u5b89\u88c5"

    new-instance v4, Lcom/alipay/sdk/app/PayTask$6$1;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/PayTask$6$1;-><init>(Lcom/alipay/sdk/app/PayTask$6;)V

    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/sdk/app/PayTask$6$2;

    invoke-direct {v6, p0}, Lcom/alipay/sdk/app/PayTask$6$2;-><init>(Lcom/alipay/sdk/app/PayTask$6;)V

    invoke-static/range {v0 .. v6}, Lcom/alipay/sdk/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 513
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/app/Result;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :try_start_1
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
