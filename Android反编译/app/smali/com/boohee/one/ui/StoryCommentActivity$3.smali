.class Lcom/boohee/one/ui/StoryCommentActivity$3;
.super Ljava/lang/Object;
.source "StoryCommentActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryCommentActivity;->initView()V
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
    .line 110
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity$3;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$3;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # invokes: Lcom/boohee/one/ui/StoryCommentActivity;->getNextComments()V
    invoke-static {v0}, Lcom/boohee/one/ui/StoryCommentActivity;->access$100(Lcom/boohee/one/ui/StoryCommentActivity;)V

    .line 114
    return-void
.end method
