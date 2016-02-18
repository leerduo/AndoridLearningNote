.class public Lcom/alipay/sdk/auth/AlipaySDK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static auth(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/alipay/sdk/auth/AuthHelper;->a(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V

    .line 30
    return-void
.end method
