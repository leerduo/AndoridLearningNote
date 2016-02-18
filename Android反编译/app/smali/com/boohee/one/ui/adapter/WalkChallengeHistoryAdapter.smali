.class public Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "WalkChallengeHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter$GotoUserTimeLineListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/chanllenge/WalkingRank;",
        ">;"
    }
.end annotation


# instance fields
.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/WalkingRank;",
            ">;"
        }
    .end annotation
.end field

.field private mineRank:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/WalkingRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/WalkingRank;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 27
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 34
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->mDatas:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f030159

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/chanllenge/WalkingRank;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/chanllenge/WalkingRank;>.ViewHolder;"
    const/4 v9, 0x0

    .line 45
    const v7, 0x7f0e03ee

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    .local v4, "tvNo":Landroid/widget/TextView;
    const v7, 0x7f0e0398

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    .local v5, "tvUsername":Landroid/widget/TextView;
    const v7, 0x7f0e03ef

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 48
    .local v6, "tvWalkNum":Landroid/widget/TextView;
    const v7, 0x7f0e00bf

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 49
    .local v1, "ivPhoto":Landroid/widget/ImageView;
    const v7, 0x7f0e03c8

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, "ivTag":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/WalkingRank;

    .line 52
    .local v0, "data":Lcom/boohee/model/chanllenge/WalkingRank;
    iget v7, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    if-nez v7, :cond_0

    const-string v7, "?"

    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v7, v0, Lcom/boohee/model/chanllenge/WalkingRank;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v7, v7, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/boohee/model/chanllenge/WalkingRank;->steps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u6b65"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v7, v0, Lcom/boohee/model/chanllenge/WalkingRank;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v7, v7, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-direct {p0, v7, v1}, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 57
    new-instance v3, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter$GotoUserTimeLineListener;

    iget-object v7, v0, Lcom/boohee/model/chanllenge/WalkingRank;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v7, v7, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-direct {v3, p0, v7}, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter$GotoUserTimeLineListener;-><init>(Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;Ljava/lang/String;)V

    .line 58
    .local v3, "listener":Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter$GotoUserTimeLineListener;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget v7, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 62
    const v7, 0x7f020226

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_1
    return-object p2

    .line 52
    .end local v3    # "listener":Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter$GotoUserTimeLineListener;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 64
    .restart local v3    # "listener":Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter$GotoUserTimeLineListener;
    :cond_1
    iget v7, v0, Lcom/boohee/model/chanllenge/WalkingRank;->rank:I

    iget v8, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->mineRank:I

    if-ne v7, v8, :cond_2

    .line 65
    const v7, 0x7f020227

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 68
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMineRank(I)V
    .locals 0
    .param p1, "rank"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/boohee/one/ui/adapter/WalkChallengeHistoryAdapter;->mineRank:I

    .line 93
    return-void
.end method
