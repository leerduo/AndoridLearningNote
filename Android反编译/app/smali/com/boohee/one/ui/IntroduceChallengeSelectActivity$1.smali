.class Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;
.super Ljava/lang/Object;
.source "IntroduceChallengeSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$1;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$000(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 68
    return-void
.end method
