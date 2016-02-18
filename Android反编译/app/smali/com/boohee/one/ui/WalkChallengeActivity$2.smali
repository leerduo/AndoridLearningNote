.class Lcom/boohee/one/ui/WalkChallengeActivity$2;
.super Ljava/lang/Object;
.source "WalkChallengeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WalkChallengeActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

.field final synthetic val$selectDialog:Lcom/boohee/widgets/SelectSportDataSrcDialog;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/widgets/SelectSportDataSrcDialog;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/boohee/one/ui/WalkChallengeActivity$2;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/WalkChallengeActivity$2;->val$selectDialog:Lcom/boohee/widgets/SelectSportDataSrcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$2;->val$selectDialog:Lcom/boohee/widgets/SelectSportDataSrcDialog;

    invoke-virtual {v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->dismiss()V

    .line 197
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity$2;->this$0:Lcom/boohee/one/ui/WalkChallengeActivity;

    # invokes: Lcom/boohee/one/ui/WalkChallengeActivity;->loadLeDongLiData()V
    invoke-static {v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->access$500(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    .line 198
    return-void
.end method
