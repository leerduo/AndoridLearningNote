.class Lcom/boohee/one/mine/McInitActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "McInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/mine/McInitActivity;->changeMcProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/mine/McInitActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/mine/McInitActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/boohee/one/mine/McInitActivity$1;->this$0:Lcom/boohee/one/mine/McInitActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity$1;->this$0:Lcom/boohee/one/mine/McInitActivity;

    # getter for: Lcom/boohee/one/mine/McInitActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/mine/McInitActivity;->access$000(Lcom/boohee/one/mine/McInitActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity$1;->this$0:Lcom/boohee/one/mine/McInitActivity;

    invoke-virtual {v1, v0}, Lcom/boohee/one/mine/McInitActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    iget-object v1, p0, Lcom/boohee/one/mine/McInitActivity$1;->this$0:Lcom/boohee/one/mine/McInitActivity;

    invoke-virtual {v1}, Lcom/boohee/one/mine/McInitActivity;->finish()V

    .line 153
    return-void
.end method
