.class Lcom/boohee/one/ui/CompleteRegisterActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "CompleteRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CompleteRegisterActivity;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/CompleteRegisterActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$2;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 107
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$2;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    invoke-static {p1}, Lcom/boohee/model/User;->parsePassportUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/CompleteRegisterActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/CompleteRegisterActivity;->access$002(Lcom/boohee/one/ui/CompleteRegisterActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;

    .line 109
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$2;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    # getter for: Lcom/boohee/one/ui/CompleteRegisterActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v1}, Lcom/boohee/one/ui/CompleteRegisterActivity;->access$000(Lcom/boohee/one/ui/CompleteRegisterActivity;)Lcom/boohee/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/AccountUtils;->saveTokenAndUserKey(Landroid/content/Context;Lcom/boohee/model/User;)V

    .line 111
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/AccountUtils;->setUserTypeBoohee(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$2;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CompleteRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/utils/AccountUtils;->login(Landroid/app/Activity;)V

    .line 113
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 118
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$2;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CompleteRegisterActivity;->dismissLoading()V

    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$2;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CompleteRegisterActivity;->loginBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    return-void
.end method
