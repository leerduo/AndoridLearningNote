.class Lcom/boohee/one/ui/ChallengeBrowserActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChallengeBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeBrowserActivity;->initFavoriteMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$5;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 328
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$5;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeBrowserActivity;->refreshMenu(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$800(Lcom/boohee/one/ui/ChallengeBrowserActivity;Lorg/json/JSONObject;)V

    .line 329
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 334
    return-void
.end method
