.class Lcom/boohee/account/ChangeProfileActivity1$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChangeProfileActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ChangeProfileActivity1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/ChangeProfileActivity1;


# direct methods
.method constructor <init>(Lcom/boohee/account/ChangeProfileActivity1;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/boohee/account/ChangeProfileActivity1$1;->this$0:Lcom/boohee/account/ChangeProfileActivity1;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v3, "profile"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/model/User;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v2

    .line 133
    .local v2, "user":Lcom/boohee/model/User;
    new-instance v3, Lcom/boohee/modeldao/UserDao;

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity1$1;->this$0:Lcom/boohee/account/ChangeProfileActivity1;

    # getter for: Lcom/boohee/account/ChangeProfileActivity1;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/account/ChangeProfileActivity1;->access$000(Lcom/boohee/account/ChangeProfileActivity1;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 134
    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1$1;->this$0:Lcom/boohee/account/ChangeProfileActivity1;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/boohee/account/ChangeProfileActivity1;->setResult(ILandroid/content/Intent;)V

    .line 136
    iget-object v3, p0, Lcom/boohee/account/ChangeProfileActivity1$1;->this$0:Lcom/boohee/account/ChangeProfileActivity1;

    invoke-virtual {v3}, Lcom/boohee/account/ChangeProfileActivity1;->finish()V

    .line 137
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/event/UserIntEvent;

    invoke-direct {v4}, Lcom/boohee/one/event/UserIntEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2    # "user":Lcom/boohee/model/User;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 146
    iget-object v0, p0, Lcom/boohee/account/ChangeProfileActivity1$1;->this$0:Lcom/boohee/account/ChangeProfileActivity1;

    invoke-virtual {v0}, Lcom/boohee/account/ChangeProfileActivity1;->dismissLoading()V

    .line 148
    return-void
.end method
