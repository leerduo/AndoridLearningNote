.class Lcom/boohee/food/CollectionActivity$2;
.super Ljava/lang/Object;
.source "CollectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 87
    iput-object p1, p0, Lcom/boohee/food/CollectionActivity$2;->this$0:Lcom/boohee/food/CollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/boohee/food/CollectionActivity$2;->this$0:Lcom/boohee/food/CollectionActivity;

    iget-object v0, p0, Lcom/boohee/food/CollectionActivity$2;->this$0:Lcom/boohee/food/CollectionActivity;

    # getter for: Lcom/boohee/food/CollectionActivity;->mDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/food/CollectionActivity;->access$100(Lcom/boohee/food/CollectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CollectionFood;

    iget-object v0, v0, Lcom/boohee/model/CollectionFood;->code:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/boohee/food/FoodDetailActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method
