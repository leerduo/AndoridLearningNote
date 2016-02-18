.class Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;
.super Ljava/lang/Object;
.source "UserGuideChooseInterestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 68
    const v1, 0x7f0e038c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 70
    .local v0, "btn":Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I
    invoke-static {v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$200(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->titles:[Ljava/lang/String;

    aget-object v1, v1, p3

    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    aput-object v2, v1, p3

    .line 75
    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # operator-- for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I
    invoke-static {v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$210(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)I

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->titles:[Ljava/lang/String;

    aget-object v2, v2, p3

    aput-object v2, v1, p3

    .line 79
    iget-object v1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # operator++ for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->currentCheckedNum:I
    invoke-static {v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$208(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)I

    goto :goto_0
.end method
