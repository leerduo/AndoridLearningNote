.class Lcom/alipay/sdk/widget/Loading$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/alipay/sdk/widget/Loading;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/Loading;ZLandroid/content/DialogInterface$OnCancelListener;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    iput-boolean p2, p0, Lcom/alipay/sdk/widget/Loading$1;->a:Z

    iput-object p3, p0, Lcom/alipay/sdk/widget/Loading$1;->b:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p4, p0, Lcom/alipay/sdk/widget/Loading$1;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v2}, Lcom/alipay/sdk/widget/Loading;->b(Lcom/alipay/sdk/widget/Loading;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/sdk/widget/Loading$1;->a:Z

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 45
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/Loading$1;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/Loading$1;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    invoke-static {v0}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading$1;->d:Lcom/alipay/sdk/widget/Loading;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/Loading;->a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
