.class Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1$1;->a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1$1;->a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;->b:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->a(Lcom/alipay/sdk/app/H5AuthActivity;Z)Z

    .line 268
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1$1;->a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$1;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 270
    return-void
.end method
