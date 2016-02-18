.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->loadUserData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 337
    const-string v1, "profile"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/User;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;

    move-result-object v0

    .line 338
    .local v0, "userData":Lcom/boohee/model/User;
    if-eqz v0, :cond_0

    .line 339
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    iget-object v2, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 341
    invoke-virtual {v0}, Lcom/boohee/model/User;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v4, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->finish()V

    .line 348
    :cond_0
    return-void

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$2;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v4, Lcom/boohee/account/UserInitActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
