.class public Lcom/boohee/one/wxapi/WXEntryActivity;
.super Lcom/umeng/socialize/weixin/view/WXCallbackActivity;
.source "WXEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    :try_start_0
    invoke-super {p0, p1}, Lcom/umeng/socialize/weixin/view/WXCallbackActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/boohee/one/wxapi/WXEntryActivity;->finish()V

    .line 15
    return-void

    .line 12
    :catch_0
    move-exception v0

    goto :goto_0
.end method
