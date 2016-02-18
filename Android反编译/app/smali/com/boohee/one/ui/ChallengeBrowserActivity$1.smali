.class Lcom/boohee/one/ui/ChallengeBrowserActivity$1;
.super Ljava/lang/Object;
.source "ChallengeBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeBrowserActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeBrowserActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->showLoading()V

    .line 144
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeBrowserActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;
    invoke-static {v0}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->access$000(Lcom/boohee/one/ui/ChallengeBrowserActivity;)Lcom/boohee/model/chanllenge/BaseChallenge;

    move-result-object v0

    iget v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/ChallengeBrowserActivity$1$1;

    iget-object v3, p0, Lcom/boohee/one/ui/ChallengeBrowserActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeBrowserActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/ChallengeBrowserActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/ChallengeBrowserActivity$1$1;-><init>(Lcom/boohee/one/ui/ChallengeBrowserActivity$1;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ChallengeApi;->exitChallenge(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
