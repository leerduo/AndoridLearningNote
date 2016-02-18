.class Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;
.super Ljava/lang/Object;
.source "WalkChallengeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/WalkChallengeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomBtnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WalkChallengeActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/one/ui/WalkChallengeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/WalkChallengeActivity$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->showLoading()V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v1, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$200(Lcom/boohee/one/ui/WalkChallengeActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick$1;

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # getter for: Lcom/boohee/one/ui/WalkChallengeActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$200(Lcom/boohee/one/ui/WalkChallengeActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, p0, v0}, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick$1;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lcom/boohee/api/ChallengeApi;->joinChallenge(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 141
    return-void
.end method
