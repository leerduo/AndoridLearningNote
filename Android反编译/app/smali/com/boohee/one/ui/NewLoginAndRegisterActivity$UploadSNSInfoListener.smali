.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;
.super Lcom/boohee/one/http/JsonCallback;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadSNSInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    .line 311
    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    .line 312
    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 317
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-static {p1}, Lcom/boohee/model/User;->parsePassportUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$202(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;

    .line 318
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$200(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)Lcom/boohee/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/AccountUtils;->saveTokenAndUserKey(Landroid/content/Context;Lcom/boohee/model/User;)V

    .line 319
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/boohee/model/status/UserConnection;->parseUserConnections(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/AccountUtils;->saveQQOpenIDAndAccessToken(Landroid/content/Context;Ljava/util/List;)V

    .line 321
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # invokes: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loadUserData()V
    invoke-static {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$300(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    .line 322
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 327
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$UploadSNSInfoListener;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->dismissLoading()V

    .line 328
    return-void
.end method
