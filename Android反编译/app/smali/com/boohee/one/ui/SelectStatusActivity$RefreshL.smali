.class Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;
.super Ljava/lang/Object;
.source "SelectStatusActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/SelectStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshL"
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
.field final synthetic this$0:Lcom/boohee/one/ui/SelectStatusActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/SelectStatusActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/SelectStatusActivity;Lcom/boohee/one/ui/SelectStatusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/SelectStatusActivity$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;-><init>(Lcom/boohee/one/ui/SelectStatusActivity;)V

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
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # setter for: Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z
    invoke-static {v0, v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$302(Lcom/boohee/one/ui/SelectStatusActivity;Z)Z

    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # setter for: Lcom/boohee/one/ui/SelectStatusActivity;->mPage:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$1002(Lcom/boohee/one/ui/SelectStatusActivity;I)I

    .line 156
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$RefreshL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # invokes: Lcom/boohee/one/ui/SelectStatusActivity;->loadData()V
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$1100(Lcom/boohee/one/ui/SelectStatusActivity;)V

    .line 157
    return-void
.end method
