.class Lcom/boohee/food/AddFoodListActivity$2;
.super Ljava/lang/Object;
.source "AddFoodListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddFoodListActivity;->checkGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddFoodListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddFoodListActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$2;->this$0:Lcom/boohee/food/AddFoodListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/boohee/food/AddFoodListActivity$2;->this$0:Lcom/boohee/food/AddFoodListActivity;

    # invokes: Lcom/boohee/food/AddFoodListActivity;->showHighLight()V
    invoke-static {v0}, Lcom/boohee/food/AddFoodListActivity;->access$200(Lcom/boohee/food/AddFoodListActivity;)V

    .line 161
    return-void
.end method
