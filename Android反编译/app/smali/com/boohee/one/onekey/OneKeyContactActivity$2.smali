.class Lcom/boohee/one/onekey/OneKeyContactActivity$2;
.super Ljava/lang/Object;
.source "OneKeyContactActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity;->initListView()V
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
.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$2;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
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
    .line 150
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$2;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$2;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/ContactMessage;

    .line 154
    .local v0, "message":Lcom/boohee/one/onekey/model/ContactMessage;
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$2;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget v2, v0, Lcom/boohee/one/onekey/model/ContactMessage;->msg_id:I

    # setter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->fromId:I
    invoke-static {v1, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$102(Lcom/boohee/one/onekey/OneKeyContactActivity;I)I

    .line 155
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$2;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->getMessages()V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
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
    .line 160
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
