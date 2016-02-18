.class Lcom/boohee/food/CustomFoodListActivity$1;
.super Ljava/lang/Object;
.source "CustomFoodListActivity.java"

# interfaces
.implements Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/CustomFoodListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/CustomFoodListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/CustomFoodListActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/boohee/food/CustomFoodListActivity$1;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/boohee/food/CustomFoodListActivity$1;->this$0:Lcom/boohee/food/CustomFoodListActivity;

    const/4 v1, 0x1

    # invokes: Lcom/boohee/food/CustomFoodListActivity;->sendRequestCollection(Z)V
    invoke-static {v0, v1}, Lcom/boohee/food/CustomFoodListActivity;->access$000(Lcom/boohee/food/CustomFoodListActivity;Z)V

    .line 90
    return-void
.end method
