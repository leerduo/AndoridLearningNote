.class Lcom/alipay/sdk/auth/AuthActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/authjs/IJsCallback;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$9;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/authjs/CallInfo;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$9;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0, p1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/authjs/CallInfo;)V

    .line 393
    return-void
.end method
