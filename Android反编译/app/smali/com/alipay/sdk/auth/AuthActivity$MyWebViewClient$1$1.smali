.class Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1$1;->a:Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1$1;->a:Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;->b:Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    .line 260
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1$1;->a:Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;

    iget-object v0, v0, Lcom/alipay/sdk/auth/AuthActivity$MyWebViewClient$1;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    return-void
.end method
