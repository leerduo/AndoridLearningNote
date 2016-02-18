.class public Lcom/alipay/sdk/widget/Loading;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/sdk/widget/Loading;->a:Landroid/app/Activity;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/Loading;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/Loading;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alipay/sdk/widget/Loading;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/sdk/widget/Loading;->a(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    return-void
.end method

.method static synthetic b(Lcom/alipay/sdk/widget/Loading;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/alipay/sdk/widget/Loading$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/alipay/sdk/widget/Loading$1;-><init>(Lcom/alipay/sdk/widget/Loading;ZLandroid/content/DialogInterface$OnCancelListener;Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/alipay/sdk/widget/Loading;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/widget/Loading;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/sdk/widget/Loading;->a(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 30
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/alipay/sdk/widget/Loading$2;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/Loading$2;-><init>(Lcom/alipay/sdk/widget/Loading;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/sdk/widget/Loading;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
