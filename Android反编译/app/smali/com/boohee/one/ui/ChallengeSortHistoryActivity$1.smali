.class Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;
.super Ljava/lang/Object;
.source "ChallengeSortHistoryActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # setter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I
    invoke-static {v0, v2}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$002(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;I)I

    .line 107
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mPage:I
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$000(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)I

    move-result v1

    # setter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$102(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;I)I

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # setter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->hasMore:Z
    invoke-static {v0, v2}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$202(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Z)Z

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$1;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadData()V
    invoke-static {v0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$300(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V

    .line 110
    return-void
.end method
