.class Lcom/boohee/one/ui/WagerChallengeActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "WagerChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WagerChallengeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WagerChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WagerChallengeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boohee/one/ui/WagerChallengeActivity$1;->this$0:Lcom/boohee/one/ui/WagerChallengeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 59
    iget-object v0, p0, Lcom/boohee/one/ui/WagerChallengeActivity$1;->this$0:Lcom/boohee/one/ui/WagerChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WagerChallengeActivity;->handleChallenge(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/WagerChallengeActivity;->access$000(Lcom/boohee/one/ui/WagerChallengeActivity;Lorg/json/JSONObject;)V

    .line 60
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/WagerChallengeActivity$1;->this$0:Lcom/boohee/one/ui/WagerChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WagerChallengeActivity;->dismissLoading()V

    .line 66
    return-void
.end method
