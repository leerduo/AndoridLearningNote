.class Lcom/boohee/one/ui/WalkChallengeActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "WalkChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WalkChallengeActivity;->uploadSportStep(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WalkChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/boohee/one/ui/WalkChallengeActivity$5;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 320
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$5;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->dismissLoading()V

    .line 322
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 312
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$5;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$5;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$5;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->initLoad()V

    .line 314
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$5;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->dismissLoading()V

    goto :goto_0
.end method
