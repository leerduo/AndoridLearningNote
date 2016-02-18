.class Lcom/alipay/sdk/app/PayTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/alipay/sdk/protocol/ActionType;

.field final synthetic b:[Lcom/alipay/sdk/protocol/ActionType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/sdk/app/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$1;->g:Lcom/alipay/sdk/app/PayTask;

    iput-object p2, p0, Lcom/alipay/sdk/app/PayTask$1;->a:[Lcom/alipay/sdk/protocol/ActionType;

    iput-object p3, p0, Lcom/alipay/sdk/app/PayTask$1;->b:[Lcom/alipay/sdk/protocol/ActionType;

    iput-object p4, p0, Lcom/alipay/sdk/app/PayTask$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/sdk/app/PayTask$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/sdk/app/PayTask$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/sdk/app/PayTask$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 316
    .line 318
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$1;->a:[Lcom/alipay/sdk/protocol/ActionType;

    if-eqz v1, :cond_1

    .line 319
    new-instance v4, Lcom/alipay/sdk/app/PayTask$1$1;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/PayTask$1$1;-><init>(Lcom/alipay/sdk/app/PayTask$1;)V

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$1;->b:[Lcom/alipay/sdk/protocol/ActionType;

    if-eqz v1, :cond_0

    .line 328
    new-instance v6, Lcom/alipay/sdk/app/PayTask$1$2;

    invoke-direct {v6, p0}, Lcom/alipay/sdk/app/PayTask$1$2;-><init>(Lcom/alipay/sdk/app/PayTask$1;)V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$1;->g:Lcom/alipay/sdk/app/PayTask;

    invoke-static {v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask$1;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/alipay/sdk/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 340
    return-void

    :cond_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method
