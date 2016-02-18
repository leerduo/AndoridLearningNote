.class Lcom/boohee/food/SearchFoodActivity$11;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->loadFoodWithCode(Ljava/lang/String;)V
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
    .line 635
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$11;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$11;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/SearchFoodActivity;->finish()V

    .line 639
    return-void
.end method
