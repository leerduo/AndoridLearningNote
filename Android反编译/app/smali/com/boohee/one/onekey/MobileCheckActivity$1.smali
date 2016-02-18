.class Lcom/boohee/one/onekey/MobileCheckActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "MobileCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/MobileCheckActivity;->requestCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/MobileCheckActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/MobileCheckActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/boohee/one/onekey/MobileCheckActivity$1;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 145
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$1;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->dismissLoading()V

    .line 150
    return-void
.end method
