.class Lcom/boohee/one/ui/HomeMoreActivity$2;
.super Ljava/lang/Object;
.source "HomeMoreActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/HomeMoreActivity;->initView()V
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
.field final synthetic this$0:Lcom/boohee/one/ui/HomeMoreActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/HomeMoreActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/boohee/one/ui/HomeMoreActivity$2;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

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
    .line 80
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity$2;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    const/4 v1, 0x1

    # setter for: Lcom/boohee/one/ui/HomeMoreActivity;->currentPage:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$102(Lcom/boohee/one/ui/HomeMoreActivity;I)I

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity$2;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$2;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$200(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/HomeMoreActivity;->getData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$300(Lcom/boohee/one/ui/HomeMoreActivity;Ljava/lang/String;)V

    .line 82
    return-void
.end method
