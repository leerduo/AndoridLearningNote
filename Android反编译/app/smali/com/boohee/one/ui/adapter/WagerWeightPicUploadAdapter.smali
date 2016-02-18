.class public Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;
.super Landroid/widget/BaseAdapter;
.source "WagerWeightPicUploadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$DelListener;,
        Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final KEY_ADD:Ljava/lang/String; = "add"


# instance fields
.field private context:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mItemSize:I

.field private mLi:Landroid/view/LayoutInflater;

.field private maxPicNums:I

.field private removedPhotoIds:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILorg/json/JSONArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "maxPicNums"    # I
    .param p4, "itemSize"    # I
    .param p5, "removed_photo_ids"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;II",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 46
    iput-object p1, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDatas:Ljava/util/List;

    .line 48
    iput p3, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->maxPicNums:I

    .line 49
    iput-object p5, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->removedPhotoIds:Lorg/json/JSONArray;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mLi:Landroid/view/LayoutInflater;

    .line 51
    iput p4, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mItemSize:I

    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->initDisplayOptions()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->removedPhotoIds:Lorg/json/JSONArray;

    return-object v0
.end method

.method private initDisplayOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    const v1, 0x7f0d00bf

    .line 57
    .local v1, "defaultColor":I
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 58
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

    .line 63
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 64
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Lcom/boohee/model/status/Photo;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Lcom/boohee/model/status/Photo;

    .prologue
    .line 114
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p2, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p2, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p2, Lcom/boohee/model/status/Photo;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDisplayOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method

.method private setImageViewSize(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mItemSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mItemSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->maxPicNums:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->maxPicNums:I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "holder":Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mLi:Landroid/view/LayoutInflater;

    const v3, 0x7f03015f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;-><init>()V

    .line 88
    .restart local v0    # "holder":Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;
    const v2, 0x7f0e0449

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 89
    const v2, 0x7f0e0459

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;->btn:Landroid/widget/Button;

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v2, v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->setImageViewSize(Landroid/widget/ImageView;)V

    .line 95
    iget-object v2, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Photo;

    .line 96
    .local v1, "photo":Lcom/boohee/model/status/Photo;
    iget-object v2, v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;->btn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    iget-object v2, v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->loadImage(Landroid/widget/ImageView;Lcom/boohee/model/status/Photo;)V

    .line 98
    iget-object v2, v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;->btn:Landroid/widget/Button;

    new-instance v3, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$DelListener;

    iget-object v4, p0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p1}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$DelListener;-><init>(Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object p2

    .line 92
    .end local v1    # "photo":Lcom/boohee/model/status/Photo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter$ViewHolder;
    goto :goto_0
.end method
