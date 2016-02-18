.class public Lcom/boohee/one/ui/adapter/BroadcastAdapter;
.super Lcom/boohee/one/ui/adapter/MyAdapter;
.source "BroadcastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
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
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/MyAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "holder":Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;
    if-nez p2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/boohee/one/ui/adapter/BroadcastAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03016b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;

    .end local v1    # "holder":Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;
    invoke-direct {v1, p2}, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;-><init>(Landroid/view/View;)V

    .line 32
    .restart local v1    # "holder":Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/adapter/BroadcastAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Broadcast;

    .line 38
    .local v0, "cast":Lcom/boohee/model/status/Broadcast;
    iget-object v2, v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/status/Broadcast;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;->body:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/status/Broadcast;->preview_body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-boolean v2, v0, Lcom/boohee/model/status/Broadcast;->read:Z

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;->isRead:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :goto_1
    return-object p2

    .line 34
    .end local v0    # "cast":Lcom/boohee/model/status/Broadcast;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;
    check-cast v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;

    .restart local v1    # "holder":Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;
    goto :goto_0

    .line 43
    .restart local v0    # "cast":Lcom/boohee/model/status/Broadcast;
    :cond_1
    iget-object v2, v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter$Holder;->isRead:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
