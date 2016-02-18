.class Lcom/alipay/sdk/app/PayTask$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask$4;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask$4;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$4$1;->a:Lcom/alipay/sdk/app/PayTask$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$4$1;->a:Lcom/alipay/sdk/app/PayTask$4;

    iget-object v0, v0, Lcom/alipay/sdk/app/PayTask$4;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->g(Lcom/alipay/sdk/app/PayTask;)V

    .line 431
    return-void
.end method
