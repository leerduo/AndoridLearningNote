.class Lcom/boohee/one/video/ui/AddSpecialLessonActivity$1;
.super Ljava/lang/Object;
.source "AddSpecialLessonActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->initView()V
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
.field final synthetic this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$1;->this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
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
    .line 62
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/one/video/ui/AddSpecialLessonActivity$1;->this$0:Lcom/boohee/one/video/ui/AddSpecialLessonActivity;

    # invokes: Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->loadData()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/AddSpecialLessonActivity;->access$000(Lcom/boohee/one/video/ui/AddSpecialLessonActivity;)V

    .line 63
    return-void
.end method
