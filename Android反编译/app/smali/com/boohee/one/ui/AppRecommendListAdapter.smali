.class public Lcom/boohee/one/ui/AppRecommendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppRecommendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/AppRecommend;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private option:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/AppRecommend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/AppRecommend;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->apps:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->ctx:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->apps:Ljava/util/ArrayList;

    .line 29
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 30
    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->global()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->option:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->apps:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/boohee/model/AppRecommend;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/AppRecommend;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/AppRecommendListAdapter;->getItem(I)Lcom/boohee/model/AppRecommend;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "holder":Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;-><init>(Lcom/boohee/one/ui/AppRecommendListAdapter;)V

    .line 55
    .restart local v0    # "holder":Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    const v1, 0x7f0e0089

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f0e0283

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "one.boohee.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/AppRecommendListAdapter;->getItem(I)Lcom/boohee/model/AppRecommend;

    move-result-object v3

    iget-object v3, v3, Lcom/boohee/model/AppRecommend;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/boohee/one/ui/AppRecommendListAdapter;->option:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 64
    iget-object v1, v0, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/AppRecommendListAdapter;->getItem(I)Lcom/boohee/model/AppRecommend;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/AppRecommend;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/ui/AppRecommendListAdapter$ViewHolder;
    goto :goto_0
.end method
