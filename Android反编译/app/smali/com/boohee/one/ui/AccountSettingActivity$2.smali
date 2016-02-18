.class Lcom/boohee/one/ui/AccountSettingActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "AccountSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/AccountSettingActivity;->getUserConnections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/AccountSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/AccountSettingActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/boohee/one/ui/AccountSettingActivity$2;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 105
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$2;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-static {p1}, Lcom/boohee/model/status/UserConnection;->parseUserConnections(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/boohee/one/ui/AccountSettingActivity;->connections:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$2;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    # invokes: Lcom/boohee/one/ui/AccountSettingActivity;->initSocialAccount()V
    invoke-static {v0}, Lcom/boohee/one/ui/AccountSettingActivity;->access$100(Lcom/boohee/one/ui/AccountSettingActivity;)V

    .line 107
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 112
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$2;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/AccountSettingActivity;->dismissLoading()V

    .line 113
    return-void
.end method
