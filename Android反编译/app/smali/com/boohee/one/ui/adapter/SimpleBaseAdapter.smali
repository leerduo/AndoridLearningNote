.class public abstract Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->context:Landroid/content/Context;

    .line 23
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    .local p1, "elem":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getItemResource()I
.end method

.method public abstract getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<TT;>.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->getItemResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;-><init>(Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;Landroid/view/View;)V

    .line 68
    .local v0, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>.ViewHolder;"
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 70
    .end local v0    # "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>.ViewHolder;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>.ViewHolder;"
    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public replaceAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<TT;>;"
    .local p1, "elem":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method
