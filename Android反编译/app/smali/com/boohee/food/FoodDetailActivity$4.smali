.class Lcom/boohee/food/FoodDetailActivity$4;
.super Ljava/lang/Object;
.source "FoodDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->checkGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/FoodDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/FoodDetailActivity;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$4;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/boohee/food/FoodDetailActivity$4;->this$0:Lcom/boohee/food/FoodDetailActivity;

    # invokes: Lcom/boohee/food/FoodDetailActivity;->showHighLight()V
    invoke-static {v0}, Lcom/boohee/food/FoodDetailActivity;->access$600(Lcom/boohee/food/FoodDetailActivity;)V

    .line 357
    return-void
.end method
