.class Lcom/boohee/food/FoodDetailActivity$6;
.super Ljava/lang/Object;
.source "FoodDetailActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/FoodDetailActivity;->showHighLight()V
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
    .line 373
    iput-object p1, p0, Lcom/boohee/food/FoodDetailActivity$6;->this$0:Lcom/boohee/food/FoodDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setEstimateFoodGuide(Z)V

    .line 377
    return-void
.end method
