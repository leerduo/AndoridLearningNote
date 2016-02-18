.class Lcom/boohee/one/ui/FlexChallengeActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "FlexChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/FlexChallengeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/FlexChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/FlexChallengeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/one/ui/FlexChallengeActivity$1;->this$0:Lcom/boohee/one/ui/FlexChallengeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/FlexChallengeActivity$1;->this$0:Lcom/boohee/one/ui/FlexChallengeActivity;

    # invokes: Lcom/boohee/one/ui/FlexChallengeActivity;->handleChallenge(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/FlexChallengeActivity;->access$000(Lcom/boohee/one/ui/FlexChallengeActivity;Lorg/json/JSONObject;)V

    .line 41
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 46
    iget-object v0, p0, Lcom/boohee/one/ui/FlexChallengeActivity$1;->this$0:Lcom/boohee/one/ui/FlexChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/FlexChallengeActivity;->dismissLoading()V

    .line 47
    return-void
.end method
