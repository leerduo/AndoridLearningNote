.class Lcom/boohee/food/SearchFoodActivity$9;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$9;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$9;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/SearchFoodActivity;->finish()V

    .line 473
    return-void
.end method
