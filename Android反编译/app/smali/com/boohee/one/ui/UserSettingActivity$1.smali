.class Lcom/boohee/one/ui/UserSettingActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserSettingActivity;->getUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserSettingActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/UserSettingActivity;->access$002(Lcom/boohee/one/ui/UserSettingActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;

    .line 178
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    const-string v2, "profile"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/model/User;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v2

    # setter for: Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/UserSettingActivity;->access$002(Lcom/boohee/one/ui/UserSettingActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;

    .line 168
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/UserSettingActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    # getter for: Lcom/boohee/one/ui/UserSettingActivity;->user:Lcom/boohee/model/User;
    invoke-static {v2}, Lcom/boohee/one/ui/UserSettingActivity;->access$000(Lcom/boohee/one/ui/UserSettingActivity;)Lcom/boohee/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/UserSettingActivity;->dismissLoading()V

    .line 182
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity$1;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    # invokes: Lcom/boohee/one/ui/UserSettingActivity;->initView()V
    invoke-static {v0}, Lcom/boohee/one/ui/UserSettingActivity;->access$100(Lcom/boohee/one/ui/UserSettingActivity;)V

    .line 183
    return-void
.end method
