.class Lcom/boohee/one/ui/ChannelPostsActivity$2;
.super Ljava/lang/Object;
.source "ChannelPostsActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChannelPostsActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChannelPostsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChannelPostsActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/boohee/one/ui/ChannelPostsActivity$2;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$2;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # getter for: Lcom/boohee/one/ui/ChannelPostsActivity;->isLastVisible:Z
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$100(Lcom/boohee/one/ui/ChannelPostsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/ChannelPostsActivity$2;->this$0:Lcom/boohee/one/ui/ChannelPostsActivity;

    # invokes: Lcom/boohee/one/ui/ChannelPostsActivity;->getNextTopic()V
    invoke-static {v0}, Lcom/boohee/one/ui/ChannelPostsActivity;->access$200(Lcom/boohee/one/ui/ChannelPostsActivity;)V

    .line 112
    :cond_0
    return-void
.end method
