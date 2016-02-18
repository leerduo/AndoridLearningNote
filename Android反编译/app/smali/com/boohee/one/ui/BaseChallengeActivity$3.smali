.class Lcom/boohee/one/ui/BaseChallengeActivity$3;
.super Ljava/lang/Object;
.source "BaseChallengeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BaseChallengeActivity;->initHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/BaseChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/BaseChallengeActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$3;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$3;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/boohee/one/ui/BaseChallengeActivity$3;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/BaseChallengeActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/ui/BaseChallengeActivity$3;->this$0:Lcom/boohee/one/ui/BaseChallengeActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/BaseChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->comeOnBaby(Landroid/content/Context;Lcom/boohee/model/chanllenge/BaseChallenge;)V

    .line 210
    :cond_0
    return-void
.end method
