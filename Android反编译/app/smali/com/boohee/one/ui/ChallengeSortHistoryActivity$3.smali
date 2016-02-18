.class Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;
.super Ljava/lang/Object;
.source "ChallengeSortHistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

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
    .line 125
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$400(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$400(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "nickname"

    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # getter for: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mClockDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$400(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/ClockOutRank;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$3;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
