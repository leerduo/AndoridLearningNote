.class Lcom/boohee/account/UserProfileActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/UserProfileActivity;->getUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserProfileActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/boohee/account/UserProfileActivity$3;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 134
    :try_start_0
    const-string v1, "profile"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/User;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v1

    sput-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    .line 135
    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$3;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->userPreference:Lcom/boohee/database/UserPreference;
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$200(Lcom/boohee/account/UserProfileActivity;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    const-string v2, "sex_type"

    sget-object v3, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget-object v3, v3, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$3;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/account/UserProfileActivity;->access$300(Lcom/boohee/account/UserProfileActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$3;->this$0:Lcom/boohee/account/UserProfileActivity;

    # invokes: Lcom/boohee/account/UserProfileActivity;->initUI()V
    invoke-static {v1}, Lcom/boohee/account/UserProfileActivity;->access$400(Lcom/boohee/account/UserProfileActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$3;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v0}, Lcom/boohee/account/UserProfileActivity;->dismissLoading()V

    .line 147
    return-void
.end method
