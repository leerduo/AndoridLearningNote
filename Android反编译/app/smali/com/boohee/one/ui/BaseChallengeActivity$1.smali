.class Lcom/boohee/one/ui/BaseChallengeActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "BaseChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BaseChallengeActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/BaseChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/BaseChallengeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$1;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 153
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$1;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    # invokes: Lcom/boohee/one/ui/BaseChallengeActivity;->handleData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->access$000(Lcom/boohee/one/ui/BaseChallengeActivity;Lorg/json/JSONObject;)V

    .line 154
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 159
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$1;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->dismissLoading()V

    .line 160
    return-void
.end method
