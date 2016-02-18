.class Lcom/boohee/one/ui/AccountSettingActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "AccountSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/AccountSettingActivity;->initAccountSetting()V
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
    .line 68
    iput-object p1, p0, Lcom/boohee/one/ui/AccountSettingActivity$1;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$1;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/AccountSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$1;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    # invokes: Lcom/boohee/one/ui/AccountSettingActivity;->getUserConnections()V
    invoke-static {v0}, Lcom/boohee/one/ui/AccountSettingActivity;->access$000(Lcom/boohee/one/ui/AccountSettingActivity;)V

    .line 73
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 77
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$1;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/AccountSettingActivity;->dismissLoading()V

    .line 78
    return-void
.end method
