.class Lcom/alipay/sdk/app/PayTask$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$5;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/alipay/sdk/app/PayTask$5$1;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$5$1;-><init>(Lcom/alipay/sdk/app/PayTask$5;)V

    .line 467
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$5;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v1}, Lcom/alipay/sdk/app/PayTask;->e(Lcom/alipay/sdk/app/PayTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    :cond_0
    return-void
.end method
