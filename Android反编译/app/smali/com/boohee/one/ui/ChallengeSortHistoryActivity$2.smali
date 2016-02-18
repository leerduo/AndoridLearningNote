.class Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;
.super Ljava/lang/Object;
.source "ChallengeSortHistoryActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I
    invoke-static {v0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$000(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mCurrentPage:I
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$100(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$000(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)I

    move-result v1

    # setter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$102(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;I)I

    .line 118
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$2;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadData()V
    invoke-static {v0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$300(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V

    .line 120
    :cond_0
    return-void
.end method
