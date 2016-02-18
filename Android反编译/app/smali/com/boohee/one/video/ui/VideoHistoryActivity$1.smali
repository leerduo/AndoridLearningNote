.class Lcom/boohee/one/video/ui/VideoHistoryActivity$1;
.super Ljava/lang/Object;
.source "VideoHistoryActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoHistoryActivity;->initView()V
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
.field final synthetic this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$1;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
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
    .line 62
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$1;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    # getter for: Lcom/boohee/one/video/ui/VideoHistoryActivity;->videoHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->access$000(Lcom/boohee/one/video/ui/VideoHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$1;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->page:I

    .line 64
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$1;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoHistoryActivity;->initData()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->access$100(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V

    .line 65
    return-void
.end method
