.class Lcom/alipay/sdk/app/H5AuthActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/sdk/app/H5AuthActivity$1;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 114
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$1;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/H5AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
