.class Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;
.super Ljava/lang/Object;
.source "IntroduceChallengeSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChallengeItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;-><init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$200(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$ChallengeItemClickListener;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$200(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-static {v1, v0}, Lcom/boohee/one/ui/BaseChallengeActivity;->startChallenge(Landroid/content/Context;Lcom/boohee/model/chanllenge/BaseChallenge;)V

    goto :goto_0
.end method
