.class Lcom/alipay/sdk/app/PayTask$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask$6;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask$6;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$6$2;->a:Lcom/alipay/sdk/app/PayTask$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6$2;->a:Lcom/alipay/sdk/app/PayTask$6;

    iget-object v0, v0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$6$2;->a:Lcom/alipay/sdk/app/PayTask$6;

    iget-object v1, v1, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->c(Lcom/alipay/sdk/app/PayTask;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$6$2;->a:Lcom/alipay/sdk/app/PayTask$6;

    iget-object v0, v0, Lcom/alipay/sdk/app/PayTask$6;->a:Lcom/alipay/sdk/app/PayTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;Z)Z

    .line 495
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V

    .line 497
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
