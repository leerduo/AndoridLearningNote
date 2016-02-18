.class Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/food/SearchFoodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchOnEditorActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/food/SearchFoodActivity;Lcom/boohee/food/SearchFoodActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p2, "x1"    # Lcom/boohee/food/SearchFoodActivity$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchOnEditorActionListener;->this$0:Lcom/boohee/food/SearchFoodActivity;

    # invokes: Lcom/boohee/food/SearchFoodActivity;->doSearch()V
    invoke-static {v0}, Lcom/boohee/food/SearchFoodActivity;->access$1300(Lcom/boohee/food/SearchFoodActivity;)V

    .line 515
    const/4 v0, 0x1

    return v0
.end method
