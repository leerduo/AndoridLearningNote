.class public Lcom/boohee/one/ui/adapter/SelectClubAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectClubAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mSelect:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mSelect:Ljava/util/Set;

    .line 28
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 31
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mDataList:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/adapter/SelectClubAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mSelect:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mSelect:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # I

    .prologue
    .line 25
    check-cast p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;

    .end local p1    # "x0":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->onBindViewHolder(Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/club/Club;

    .line 64
    .local v0, "club":Lcom/boohee/model/club/Club;
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, v0, Lcom/boohee/model/club/Club;->thumb_img_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;->viewCover:Lcom/boohee/widgets/SquareImageView;

    const v4, 0x7f0d012e

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 70
    iget-object v1, p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;->viewCover:Lcom/boohee/widgets/SquareImageView;

    iget-object v2, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mSelect:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boohee/widgets/SquareImageView;->setChecked(Z)V

    .line 71
    iget-object v1, p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;->viewCover:Lcom/boohee/widgets/SquareImageView;

    new-instance v2, Lcom/boohee/one/ui/adapter/SelectClubAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/boohee/one/ui/adapter/SelectClubAdapter$1;-><init>(Lcom/boohee/one/ui/adapter/SelectClubAdapter;Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;Lcom/boohee/model/club/Club;)V

    invoke-virtual {v1, v2}, Lcom/boohee/widgets/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/boohee/model/club/Club;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/boohee/model/club/Club;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03014e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/boohee/one/ui/adapter/SelectClubAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setSelectData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/club/Club;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "selectData":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, "tmpIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/club/Club;

    .line 44
    .local v0, "club":Lcom/boohee/model/club/Club;
    iget v3, v0, Lcom/boohee/model/club/Club;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v0    # "club":Lcom/boohee/model/club/Club;
    :cond_2
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/club/Club;

    .line 47
    .restart local v0    # "club":Lcom/boohee/model/club/Club;
    iget v3, v0, Lcom/boohee/model/club/Club;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->mSelect:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    .end local v0    # "club":Lcom/boohee/model/club/Club;
    :cond_4
    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
