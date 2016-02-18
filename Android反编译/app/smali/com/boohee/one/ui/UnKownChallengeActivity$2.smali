.class Lcom/boohee/one/ui/UnKownChallengeActivity$2;
.super Ljava/lang/Object;
.source "UnKownChallengeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UnKownChallengeActivity;->setHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UnKownChallengeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UnKownChallengeActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity$2;->this$0:Lcom/boohee/one/ui/UnKownChallengeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/boohee/one/ui/UnKownChallengeActivity$2;->this$0:Lcom/boohee/one/ui/UnKownChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/UnKownChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/UnKownChallengeActivity$2;->this$0:Lcom/boohee/one/ui/UnKownChallengeActivity;

    # getter for: Lcom/boohee/one/ui/UnKownChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;
    invoke-static {v1}, Lcom/boohee/one/ui/UnKownChallengeActivity;->access$200(Lcom/boohee/one/ui/UnKownChallengeActivity;)Lcom/boohee/model/chanllenge/BaseChallenge;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChallengeBrowserActivity;->comeOnBaby(Landroid/content/Context;Lcom/boohee/model/chanllenge/BaseChallenge;)V

    .line 174
    return-void
.end method
