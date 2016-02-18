.class Lcom/boohee/one/onekey/UserInfoCheckActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserInfoCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserInfoCheckActivity;->sendInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserInfoCheckActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$3;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$3;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-static {v0}, Lcom/boohee/one/onekey/UserHomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 192
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$3;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->finish()V

    .line 193
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity$3;->this$0:Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->dismissLoading()V

    .line 198
    return-void
.end method
