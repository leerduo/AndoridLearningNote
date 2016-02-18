.class Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;
.super Ljava/lang/Object;
.source "SelectStatusActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/SelectStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMoreL"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SelectStatusActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/SelectStatusActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/SelectStatusActivity;Lcom/boohee/one/ui/SelectStatusActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/SelectStatusActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/SelectStatusActivity$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;-><init>(Lcom/boohee/one/ui/SelectStatusActivity;)V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z
    invoke-static {v0, v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$302(Lcom/boohee/one/ui/SelectStatusActivity;Z)Z

    .line 165
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$LoadMoreL;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # invokes: Lcom/boohee/one/ui/SelectStatusActivity;->loadData()V
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$1100(Lcom/boohee/one/ui/SelectStatusActivity;)V

    .line 166
    return-void
.end method
