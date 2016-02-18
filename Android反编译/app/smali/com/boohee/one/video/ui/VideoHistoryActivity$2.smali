.class Lcom/boohee/one/video/ui/VideoHistoryActivity$2;
.super Ljava/lang/Object;
.source "VideoHistoryActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/VideoHistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$2;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$2;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    iget v1, v0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/boohee/one/video/ui/VideoHistoryActivity;->page:I

    .line 71
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoHistoryActivity$2;->this$0:Lcom/boohee/one/video/ui/VideoHistoryActivity;

    # invokes: Lcom/boohee/one/video/ui/VideoHistoryActivity;->initData()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->access$100(Lcom/boohee/one/video/ui/VideoHistoryActivity;)V

    .line 72
    return-void
.end method
