.class Lcom/alipay/sdk/widget/Loading$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/Loading;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/Loading;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0, v2}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 68
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0, v2}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/Loading$2;->a:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v1, v2}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    throw v0
.end method
