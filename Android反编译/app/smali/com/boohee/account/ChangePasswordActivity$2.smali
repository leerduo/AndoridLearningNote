.class Lcom/boohee/account/ChangePasswordActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ChangePasswordActivity;->setPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/ChangePasswordActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/boohee/account/ChangePasswordActivity$2;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 112
    iget-object v1, p0, Lcom/boohee/account/ChangePasswordActivity$2;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    # getter for: Lcom/boohee/account/ChangePasswordActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/account/ChangePasswordActivity;->access$000(Lcom/boohee/account/ChangePasswordActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    .line 113
    .local v0, "userPrefs":Lcom/boohee/database/UserPreference;
    const-string v1, "user_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v1, "identity"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 115
    const-string v1, "\u8bbe\u7f6e\u5bc6\u7801\u6210\u529f"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/boohee/account/ChangePasswordActivity$2;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    invoke-virtual {v1}, Lcom/boohee/account/ChangePasswordActivity;->finish()V

    .line 117
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 122
    iget-object v0, p0, Lcom/boohee/account/ChangePasswordActivity$2;->this$0:Lcom/boohee/account/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/boohee/account/ChangePasswordActivity;->dismissLoading()V

    .line 123
    return-void
.end method
