.class Lcom/boohee/one/ui/SuccessStoryActivity$1;
.super Ljava/lang/Object;
.source "SuccessStoryActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryActivity;->initView()V
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
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$1;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

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
    .line 94
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$1;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    const/4 v1, 0x1

    # setter for: Lcom/boohee/one/ui/SuccessStoryActivity;->page:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$002(Lcom/boohee/one/ui/SuccessStoryActivity;I)I

    .line 95
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$1;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    # invokes: Lcom/boohee/one/ui/SuccessStoryActivity;->requestData()V
    invoke-static {v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$100(Lcom/boohee/one/ui/SuccessStoryActivity;)V

    .line 96
    return-void
.end method
