.class Lcom/boohee/food/SearchFoodActivity$2;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->addListener()V
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
    .line 218
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$2;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$2;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # invokes: Lcom/boohee/food/SearchFoodActivity;->doScan()V
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$400(Lcom/boohee/food/SearchFoodActivity;)V

    .line 222
    return-void
.end method
