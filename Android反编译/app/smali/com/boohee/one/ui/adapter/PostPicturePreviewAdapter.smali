.class public Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostPicturePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$DelListener;,
        Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final KEY_ADD:Ljava/lang/String; = "add"


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mItemSize:I

.field private mLi:Landroid/view/LayoutInflater;

.field private maxPicNums:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "maxPicNums"    # I
    .param p4, "itemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 42
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDatas:Ljava/util/List;

    .line 43
    iput p3, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->maxPicNums:I

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mLi:Landroid/view/LayoutInflater;

    .line 45
    iput p4, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mItemSize:I

    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->initDisplayOptions()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method private initDisplayOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    const v1, 0x7f0d0102

    .line 51
    .local v1, "defaultColor":I
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 52
    .local v0, "builder":Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 57
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 58
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 113
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method private setImageViewSize(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mItemSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mItemSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->maxPicNums:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->maxPicNums:I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "holder":Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 79
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mLi:Landroid/view/LayoutInflater;

    const v4, 0x7f03015f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    new-instance v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;-><init>()V

    .line 81
    .restart local v1    # "holder":Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;
    const v3, 0x7f0e0449

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 82
    const v3, 0x7f0e0459

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->setImageViewSize(Landroid/widget/ImageView;)V

    .line 88
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "path":Ljava/lang/String;
    const-string v3, "add"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const v0, 0x7f020298

    .line 91
    .local v0, "addResId":I
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawable://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 92
    iget-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    .end local v0    # "addResId":I
    :goto_1
    iget-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    new-instance v4, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$DelListener;

    invoke-direct {v4, p0, p1}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$DelListener;-><init>(Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-object p2

    .line 85
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;
    check-cast v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;
    goto :goto_0

    .line 94
    .restart local v2    # "path":Ljava/lang/String;
    :cond_1
    iget-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->btn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v3, v1, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_1
.end method
