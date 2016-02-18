.class public Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "WeightImagePagerAdapter.java"


# instance fields
.field private mHeight:F

.field private mWeightPreviewPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightPreviewPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;F)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightPreviewPhoto;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "previewPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/WeightPreviewPhoto;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 27
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mWeightPreviewPhotos:Ljava/util/List;

    .line 28
    iput p3, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mHeight:F

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mWeightPreviewPhotos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mWeightPreviewPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mWeightPreviewPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/mine/WeightPreviewPhoto;

    iget v1, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mHeight:F

    invoke-static {v0, v1}, Lcom/boohee/one/ui/fragment/WeightImageFragment;->newInstance(Lcom/boohee/model/mine/WeightPreviewPhoto;F)Lcom/boohee/one/ui/fragment/WeightImageFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/WeightImageFragment;

    .line 49
    .local v0, "f":Lcom/boohee/one/ui/fragment/WeightImageFragment;
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mWeightPreviewPhotos:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/WeightPreviewPhoto;

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/WeightImageFragment;->setWeightRecord(Lcom/boohee/model/mine/WeightPreviewPhoto;)V

    .line 50
    iget v1, p0, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;->mHeight:F

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/WeightImageFragment;->setHeight(F)V

    .line 51
    return-object v0
.end method
