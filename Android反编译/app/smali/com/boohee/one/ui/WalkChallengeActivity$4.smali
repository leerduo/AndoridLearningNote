.class Lcom/boohee/one/ui/WalkChallengeActivity$4;
.super Ljava/lang/Object;
.source "WalkChallengeActivity.java"

# interfaces
.implements Lcom/boohee/utils/LeDongLiHelper$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WalkChallengeActivity;->loadLeDongLiData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WalkChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "errors"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->dismissLoading()V

    .line 290
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->initLoad()V

    goto :goto_0
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "steps"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v1, "KEY_LE_DONG_LI"

    invoke-static {v0, v1}, Lcom/boohee/utility/SportDataBindHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->setBottomTextGone()V

    .line 281
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->showLoading()V

    .line 282
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$4;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    const-string v1, "ledongli"

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->uploadSportStep(ILjava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$800(Lcom/boohee/one/ui/WalkChallengeActivity;ILjava/lang/String;)V

    .line 283
    return-void
.end method
