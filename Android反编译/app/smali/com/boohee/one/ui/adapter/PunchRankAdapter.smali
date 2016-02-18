.class public Lcom/boohee/one/ui/adapter/PunchRankAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "PunchRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/chanllenge/ClockOutRank;",
        ">;"
    }
.end annotation


# instance fields
.field private myRank:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutRank;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method private initRankLabel(ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/boohee/model/chanllenge/ClockOutRank;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "txt_medal"    # Landroid/widget/TextView;
    .param p3, "txt_rank_num"    # Landroid/widget/TextView;
    .param p4, "rank"    # Lcom/boohee/model/chanllenge/ClockOutRank;

    .prologue
    const v5, 0x7f020226

    const/16 v4, 0x8

    const v3, 0x7f020227

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-nez p1, :cond_2

    .line 68
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget v0, p4, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    iget v0, p4, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    if-nez v0, :cond_0

    .line 74
    const-string v0, "?"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_2
    if-ne p1, v1, :cond_5

    .line 78
    iget v0, p4, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    if-ne v0, v1, :cond_3

    .line 79
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_3
    iget v0, p4, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->getMyRank()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 82
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget v0, p4, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->getMyRank()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 88
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 91
    :cond_6
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemResource()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f030146

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRank;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/chanllenge/ClockOutRank;>.ViewHolder;"
    iget-object v6, p0, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->data:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/ClockOutRank;

    .line 41
    .local v1, "rank":Lcom/boohee/model/chanllenge/ClockOutRank;
    const v6, 0x7f0e01d8

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 42
    .local v0, "iv_avatar":Lde/hdodenhof/circleimageview/CircleImageView;
    const v6, 0x7f0e0429

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 43
    .local v5, "txt_rank_num":Landroid/widget/TextView;
    const v6, 0x7f0e0309

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, "txt_name":Landroid/widget/TextView;
    const v6, 0x7f0e042a

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "txt_punch_count":Landroid/widget/TextView;
    const v6, 0x7f0e042b

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, "txt_medal":Landroid/widget/TextView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v7, v7, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->rank:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v6, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v6, v6, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v6, v1, Lcom/boohee/model/chanllenge/ClockOutRank;->rank_info:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-direct {p0, p1, v2, v5, v1}, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->initRankLabel(ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/boohee/model/chanllenge/ClockOutRank;)V

    .line 55
    return-object p2
.end method

.method public getMyRank()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->myRank:I

    return v0
.end method

.method public setMyRank(I)V
    .locals 0
    .param p1, "myRank"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/boohee/one/ui/adapter/PunchRankAdapter;->myRank:I

    .line 101
    return-void
.end method
