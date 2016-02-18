.class Lcom/boohee/one/onekey/UserHomeActivity$1;
.super Ljava/lang/Object;
.source "UserHomeActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserHomeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserHomeActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/boohee/one/onekey/UserHomeActivity$1;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
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
    .line 98
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity$1;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    const/4 v1, 0x1

    # invokes: Lcom/boohee/one/onekey/UserHomeActivity;->requestPostMessage(Z)V
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserHomeActivity;->access$000(Lcom/boohee/one/onekey/UserHomeActivity;Z)V

    .line 99
    return-void
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
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
    .line 103
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity$1;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    const/4 v1, 0x0

    # invokes: Lcom/boohee/one/onekey/UserHomeActivity;->requestPostMessage(Z)V
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/UserHomeActivity;->access$000(Lcom/boohee/one/onekey/UserHomeActivity;Z)V

    .line 104
    return-void
.end method
