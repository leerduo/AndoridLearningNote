.class Lcom/alipay/sdk/app/PayTask$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask$1;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask$1;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$1$1;->a:Lcom/alipay/sdk/app/PayTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$1$1;->a:Lcom/alipay/sdk/app/PayTask$1;

    iget-object v0, v0, Lcom/alipay/sdk/app/PayTask$1;->g:Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$1$1;->a:Lcom/alipay/sdk/app/PayTask$1;

    iget-object v1, v1, Lcom/alipay/sdk/app/PayTask$1;->a:[Lcom/alipay/sdk/protocol/ActionType;

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;)V

    .line 324
    return-void
.end method
