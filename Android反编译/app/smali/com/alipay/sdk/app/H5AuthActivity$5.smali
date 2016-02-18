.class Lcom/alipay/sdk/app/H5AuthActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/sdk/app/H5AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alipay/sdk/app/H5AuthActivity$5;->b:Lcom/alipay/sdk/app/H5AuthActivity;

    iput-object p2, p0, Lcom/alipay/sdk/app/H5AuthActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$5;->b:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->d(Lcom/alipay/sdk/app/H5AuthActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/H5AuthActivity$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 235
    return-void
.end method
