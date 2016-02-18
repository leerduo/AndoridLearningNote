.class Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
.super Lcom/boohee/one/ui/adapter/MyAdapter;
.source "MilestoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/MilestoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MilestoneAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MilestoneActivity;


# direct methods
.method protected constructor <init>(Lcom/boohee/one/ui/MilestoneActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/boohee/one/ui/adapter/MyAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "holder":Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03016f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    new-instance v0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;
    invoke-direct {v0, p2}, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    .restart local v0    # "holder":Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    :goto_0
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Milestone;

    .line 144
    .local v1, "stone":Lcom/boohee/model/status/Milestone;
    iget-object v2, v0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/boohee/model/status/Milestone;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, v0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/boohee/model/status/Milestone;->key_note:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, v0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;->lockText:Landroid/widget/TextView;

    iget-boolean v2, v1, Lcom/boohee/model/status/Milestone;->achieved:Z

    if-eqz v2, :cond_1

    const-string v2, "\u5df2\u89e3\u9501"

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object p2

    .line 140
    .end local v1    # "stone":Lcom/boohee/model/status/Milestone;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;
    check-cast v0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;
    goto :goto_0

    .line 146
    .restart local v1    # "stone":Lcom/boohee/model/status/Milestone;
    :cond_1
    const-string v2, "\u672a\u89e3\u9501"

    goto :goto_1
.end method
