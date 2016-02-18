.class Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$2;->a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient$2;->a:Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;

    iget-object v0, v0, Lcom/alipay/sdk/app/H5AuthActivity$MyWebViewClient;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->finish()V

    .line 336
    return-void
.end method
