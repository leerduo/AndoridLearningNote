.class Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;
.super Ljava/lang/Object;
.source "SearchFoodActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/food/SearchFoodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchFoodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/food/SearchFoodActivity;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/food/SearchFoodActivity;Lcom/boohee/food/SearchFoodActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/food/SearchFoodActivity;
    .param p2, "x1"    # Lcom/boohee/food/SearchFoodActivity$1;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;-><init>(Lcom/boohee/food/SearchFoodActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 536
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->iv_clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->tv_search_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->sv_search:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 547
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->iv_clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->tv_search_tip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->sv_search:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->tv_search_tip:Landroid/widget/TextView;

    const-string v1, "\u641c\u7d22 \u201c%s\u201d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/boohee/food/SearchFoodActivity$SearchTextWatcher;->this$0:Lcom/boohee/food/SearchFoodActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchFoodActivity;->tv_null:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 527
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 532
    return-void
.end method
