.class Lcom/boohee/food/SearchFoodActivity$4;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchFoodActivity;->checkGuide()V
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
    .line 237
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$4;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$4;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # invokes: Lcom/boohee/food/SearchFoodActivity;->showHighLight()V
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$600(Lcom/boohee/food/SearchFoodActivity;)V

    .line 241
    return-void
.end method
