.class Lcom/alipay/sdk/app/H5AuthActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/authjs/IJsCallback;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/H5AuthActivity;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/alipay/sdk/app/H5AuthActivity$9;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/authjs/CallInfo;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/alipay/sdk/app/H5AuthActivity$9;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/H5AuthActivity;->a(Lcom/alipay/sdk/app/H5AuthActivity;Lcom/alipay/sdk/authjs/CallInfo;)V

    .line 436
    return-void
.end method
