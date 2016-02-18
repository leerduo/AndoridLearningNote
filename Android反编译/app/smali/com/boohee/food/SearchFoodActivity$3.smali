.class Lcom/boohee/food/SearchFoodActivity$3;
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
    .line 224
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$3;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$3;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->et_search:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$3;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->ll_result:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$3;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->sv_search:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$3;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # invokes: Lcom/boohee/food/SearchFoodActivity;->loadHistoryData()V
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$500(Lcom/boohee/food/SearchFoodActivity;)V

    .line 231
    return-void
.end method
