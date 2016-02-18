.class Lcom/boohee/food/AddSportListActivity$1;
.super Ljava/lang/Object;
.source "AddSportListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddSportListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddSportListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddSportListActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 107
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    new-instance v1, Lcom/boohee/myview/NewBadgeView;

    iget-object v2, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/food/AddSportListActivity;->access$100(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v0, v1}, Lcom/boohee/food/AddSportListActivity;->access$002(Lcom/boohee/food/AddSportListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;

    .line 108
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    const v2, 0x7f0e07c4

    invoke-virtual {v1, v2}, Lcom/boohee/food/AddSportListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/boohee/myview/NewBadgeView;->setBadgeMargin(IIII)V

    .line 110
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v0

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 111
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    invoke-virtual {v1}, Lcom/boohee/food/AddSportListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/NewBadgeView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$1;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mMessageBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$000(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcom/boohee/myview/NewBadgeView;->setBackground(II)V

    .line 113
    return-void
.end method
