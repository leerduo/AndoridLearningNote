.class Lcom/boohee/one/onekey/UserHomeActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserHomeActivity;->requestConsultorsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserHomeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/boohee/one/onekey/UserHomeActivity$2;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$2;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iget-object v2, v2, Lcom/boohee/one/onekey/UserHomeActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const-string v2, "photo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "photo":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/onekey/UserHomeActivity$2;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iget-object v3, v3, Lcom/boohee/one/onekey/UserHomeActivity;->ivAvatar:Landroid/widget/ImageView;

    const v4, 0x7f02011a

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 124
    iget-object v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$2;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    const-string v3, "im_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/boohee/one/onekey/UserHomeActivity;->mIMId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boohee/one/onekey/UserHomeActivity;->access$102(Lcom/boohee/one/onekey/UserHomeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity$2;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/UserHomeActivity;->dismissLoading()V

    .line 130
    return-void
.end method
