.class Lcom/boohee/one/ui/AccountSettingActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "AccountSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/AccountSettingActivity;->deleteConn(Ljava/lang/String;Lcom/boohee/model/status/UserConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/AccountSettingActivity;

.field final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/AccountSettingActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iput-object p3, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->val$provider:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0d007a

    const v2, 0x7f0705d2

    .line 236
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 237
    const v0, 0x7f070105

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 239
    const-string v0, "sina_weibo"

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->val$provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaScreenName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaScreenName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iput-object v4, v0, Lcom/boohee/one/ui/AccountSettingActivity;->sinaConn:Lcom/boohee/model/status/UserConnection;

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string v0, "weixin"

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->val$provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinScreenName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinScreenName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iput-object v4, v0, Lcom/boohee/one/ui/AccountSettingActivity;->weixinConn:Lcom/boohee/model/status/UserConnection;

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "qq_zone"

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->val$provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->qqScreenName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->qqScreenName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->qqLogout()V

    .line 251
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iput-object v4, v0, Lcom/boohee/one/ui/AccountSettingActivity;->qqConn:Lcom/boohee/model/status/UserConnection;

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 258
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$5;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/AccountSettingActivity;->dismissLoading()V

    .line 259
    return-void
.end method
