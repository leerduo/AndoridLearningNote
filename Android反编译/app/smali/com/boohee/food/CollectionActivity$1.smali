.class Lcom/boohee/food/CollectionActivity$1;
.super Ljava/lang/Object;
.source "CollectionActivity.java"

# interfaces
.implements Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/CollectionActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/CollectionActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/CollectionActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/boohee/food/CollectionActivity$1;->this$0:Lcom/boohee/food/CollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/boohee/food/CollectionActivity$1;->this$0:Lcom/boohee/food/CollectionActivity;

    const/4 v1, 0x1

    # invokes: Lcom/boohee/food/CollectionActivity;->sendRequestCollection(Z)V
    invoke-static {v0, v1}, Lcom/boohee/food/CollectionActivity;->access$000(Lcom/boohee/food/CollectionActivity;Z)V

    .line 85
    return-void
.end method
