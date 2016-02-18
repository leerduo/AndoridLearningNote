.class public Lcom/boohee/one/ui/adapter/ChallengeListAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "ChallengeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/chanllenge/BaseChallenge;",
        ">;"
    }
.end annotation


# instance fields
.field private isHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "isHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/BaseChallenge;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/chanllenge/BaseChallenge;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 30
    iput-boolean p3, p0, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;->isHistory:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f030122

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/chanllenge/BaseChallenge;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/chanllenge/BaseChallenge;>.ViewHolder;"
    const v4, 0x7f0e03be

    invoke-virtual {p3, v4}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 41
    .local v1, "challenge_iv":Landroid/widget/ImageView;
    const v4, 0x7f0e03bf

    invoke-virtual {p3, v4}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "challenge_name_tv":Landroid/widget/TextView;
    const v4, 0x7f0e03c1

    invoke-virtual {p3, v4}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, "challenge_title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/BaseChallenge;

    .line 45
    .local v0, "challenge":Lcom/boohee/model/chanllenge/BaseChallenge;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->avatar_url:Ljava/lang/String;

    const v6, 0x7f02033e

    invoke-static {v6}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 47
    iget-object v4, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-boolean v4, p0, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;->isHistory:Z

    if-eqz v4, :cond_0

    .line 51
    const-string v4, "2015-2014"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    return-object p2

    .line 53
    :cond_0
    iget-object v4, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
