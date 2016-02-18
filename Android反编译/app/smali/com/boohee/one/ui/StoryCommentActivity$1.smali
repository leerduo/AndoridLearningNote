.class Lcom/boohee/one/ui/StoryCommentActivity$1;
.super Ljava/lang/Object;
.source "StoryCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryCommentActivity;->firstLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryCommentActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryCommentActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity$1;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$1;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryCommentActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 84
    return-void
.end method
