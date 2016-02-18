.class Lcom/boohee/account/UserInitActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/UserInitActivity;->changeProfileRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserInitActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserInitActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 185
    :try_start_0
    const-string v3, "profile"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 186
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "token"

    iget-object v4, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/account/UserInitActivity;->access$000(Lcom/boohee/account/UserInitActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    iget-object v3, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-static {v2}, Lcom/boohee/model/User;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v4

    # setter for: Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v3, v4}, Lcom/boohee/account/UserInitActivity;->access$102(Lcom/boohee/account/UserInitActivity;Lcom/boohee/model/User;)Lcom/boohee/model/User;

    .line 188
    new-instance v3, Lcom/boohee/modeldao/UserDao;

    iget-object v4, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/account/UserInitActivity;->access$200(Lcom/boohee/account/UserInitActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->mUser:Lcom/boohee/model/User;
    invoke-static {v4}, Lcom/boohee/account/UserInitActivity;->access$100(Lcom/boohee/account/UserInitActivity;)Lcom/boohee/model/User;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 189
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/boohee/account/UserInitActivity;->access$300(Lcom/boohee/account/UserInitActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/boohee/record/EvaluationActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "GO_HOME"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    iget-object v3, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-virtual {v3, v1}, Lcom/boohee/account/UserInitActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    iget-object v3, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-virtual {v3}, Lcom/boohee/account/UserInitActivity;->finish()V

    .line 193
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/event/UserIntEvent;

    invoke-direct {v4}, Lcom/boohee/one/event/UserIntEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/account/UserInitActivity;->isSendRequest:Z
    invoke-static {v0, v1}, Lcom/boohee/account/UserInitActivity;->access$402(Lcom/boohee/account/UserInitActivity;Z)Z

    .line 202
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$1;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-virtual {v0}, Lcom/boohee/account/UserInitActivity;->dismissLoading()V

    .line 203
    return-void
.end method
