.class Lcom/boohee/account/ChangeProfileActivity2$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChangeProfileActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/ChangeProfileActivity2;->updateMc()V
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
    .line 191
    iput-object p1, p0, Lcom/boohee/account/ChangeProfileActivity2$2;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2$2;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    # getter for: Lcom/boohee/account/ChangeProfileActivity2;->code:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/account/ChangeProfileActivity2;->access$500(Lcom/boohee/account/ChangeProfileActivity2;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/ChangeProfileActivity2$2;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    iget-object v2, v2, Lcom/boohee/account/ChangeProfileActivity2;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2$2;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/boohee/account/ChangeProfileActivity2;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/boohee/account/ChangeProfileActivity2$2;->this$0:Lcom/boohee/account/ChangeProfileActivity2;

    invoke-virtual {v1}, Lcom/boohee/account/ChangeProfileActivity2;->finish()V

    .line 199
    return-void
.end method
