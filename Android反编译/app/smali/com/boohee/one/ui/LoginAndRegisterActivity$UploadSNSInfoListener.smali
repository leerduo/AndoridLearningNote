.class Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;
.super Lcom/boohee/one/http/JsonCallback;
.source "LoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/LoginAndRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadSNSInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    .line 355
    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    .line 356
    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 361
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-static {p1}, Lcom/boohee/model/User;->parsePassportUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$402(Lcom/boohee/one/ui/LoginAndRegisterActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;

    .line 362
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v1}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$400(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Lcom/boohee/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/AccountUtils;->saveTokenAndUserKey(Landroid/content/Context;Lcom/boohee/model/User;)V

    .line 363
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/LoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/boohee/model/status/UserConnection;->parseUserConnections(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/AccountUtils;->saveQQOpenIDAndAccessToken(Landroid/content/Context;Ljava/util/List;)V

    .line 365
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/LoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 366
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->finish()V

    .line 367
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 372
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->dismissLoading()V

    .line 373
    return-void
.end method
