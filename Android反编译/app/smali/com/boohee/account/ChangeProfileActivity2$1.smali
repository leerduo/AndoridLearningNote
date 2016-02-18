.class Lcom/boohee/account/ChangeProfileActivity2$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChangeProfileActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ChangeProfileActivity2;->updateUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/ChangeProfileActivity2;


# direct methods
.method constructor <init>(Lcom/boohee/account/ChangeProfileActivity2;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 168
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/model/User;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v2

    .line 171
    .local v2, "user":Lcom/boohee/model/User;
    new-instance v4, Lcom/boohee/modeldao/UserDao;

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;
    invoke-static {v5}, Lcom/boohee/account/ChangeProfileActivity2;->access$000(Lcom/boohee/account/ChangeProfileActivity2;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 172
    const-string v4, "user"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/boohee/account/ChangeProfileActivity2;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/account/ChangeProfileActivity2;->access$100(Lcom/boohee/account/ChangeProfileActivity2;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v3

    .line 175
    .local v3, "userPreference":Lcom/boohee/database/UserPreference;
    iget-object v4, v2, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 176
    const-string v4, "sex_type"

    iget-object v5, v2, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->index:I
    invoke-static {v5}, Lcom/boohee/account/ChangeProfileActivity2;->access$200(Lcom/boohee/account/ChangeProfileActivity2;)I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # invokes: Lcom/boohee/account/ChangeProfileActivity2;->setTargetWeight()V
    invoke-static {v4}, Lcom/boohee/account/ChangeProfileActivity2;->access$300(Lcom/boohee/account/ChangeProfileActivity2;)V

    .line 178
    :cond_1
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->index:I
    invoke-static {v5}, Lcom/boohee/account/ChangeProfileActivity2;->access$200(Lcom/boohee/account/ChangeProfileActivity2;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # invokes: Lcom/boohee/account/ChangeProfileActivity2;->setTargetDate()V
    invoke-static {v4}, Lcom/boohee/account/ChangeProfileActivity2;->access$400(Lcom/boohee/account/ChangeProfileActivity2;)V

    .line 179
    :cond_2
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->index:I
    invoke-static {v5}, Lcom/boohee/account/ChangeProfileActivity2;->access$200(Lcom/boohee/account/ChangeProfileActivity2;)I

    move-result v5

    if-eq v4, v5, :cond_3

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->index:I
    invoke-static {v5}, Lcom/boohee/account/ChangeProfileActivity2;->access$200(Lcom/boohee/account/ChangeProfileActivity2;)I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    new-instance v5, Lcom/boohee/one/event/PeriodEvent;

    invoke-direct {v5}, Lcom/boohee/one/event/PeriodEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 180
    :cond_4
    iget-object v4, p0, Lcom/boohee/account/ChangeProfileActivity2$1;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    invoke-virtual {v4}, Lcom/boohee/account/ChangeProfileActivity2;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v2    # "user":Lcom/boohee/model/User;
    .end local v3    # "userPreference":Lcom/boohee/database/UserPreference;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
