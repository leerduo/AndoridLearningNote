.class Lcom/boohee/one/ui/ChallengeSortHistoryActivity$4;
.super Ljava/lang/Object;
.source "ChallengeSortHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 131
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$4;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$4;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 135
    return-void
.end method
