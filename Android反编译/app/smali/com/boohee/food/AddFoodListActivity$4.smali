.class Lcom/boohee/food/AddFoodListActivity$4;
.super Ljava/lang/Object;
.source "AddFoodListActivity.java"

# interfaces
.implements Lcom/boohee/myview/highlight/HighLight$OnHighLightClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddFoodListActivity;->showHighLight()V
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
    .line 178
    iput-object p1, p0, Lcom/boohee/food/AddFoodListActivity$4;->this$0:Lcom/boohee/food/AddFoodListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setAddFoodGuide(Z)V

    .line 182
    return-void
.end method
