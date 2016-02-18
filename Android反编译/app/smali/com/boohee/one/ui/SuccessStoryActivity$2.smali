.class Lcom/boohee/one/ui/SuccessStoryActivity$2;
.super Ljava/lang/Object;
.source "SuccessStoryActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    # operator++ for: Lcom/boohee/one/ui/SuccessStoryActivity;->page:I
    invoke-static {v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$008(Lcom/boohee/one/ui/SuccessStoryActivity;)I

    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/SuccessStoryActivity$2;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    # invokes: Lcom/boohee/one/ui/SuccessStoryActivity;->requestData()V
    invoke-static {v0}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$100(Lcom/boohee/one/ui/SuccessStoryActivity;)V

    .line 103
    return-void
.end method
