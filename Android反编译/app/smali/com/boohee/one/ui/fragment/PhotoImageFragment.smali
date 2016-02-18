.class public Lcom/boohee/one/ui/fragment/PhotoImageFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "PhotoImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/PhotoImageFragment$SaveImageTask;
    }
.end annotation


# static fields
.field public static final TYPE_PHOTO:I = 0x0

.field public static final TYPE_URL:I = 0x1


# instance fields
.field btnSave:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e045b
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private imageUrl:Ljava/lang/String;

.field ivPhoto:Luk/co/senab/photoview/PhotoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00bf
    .end annotation
.end field

.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private photo:Lcom/boohee/model/status/Photo;

.field progressWheel:Lcom/boohee/widgets/ProgressWheel;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e045a
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->type:I

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/PhotoImageFragment;)Luk/co/senab/photoview/PhotoViewAttacher;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PhotoImageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/PhotoImageFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PhotoImageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/PhotoImageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/PhotoImageFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getImageUrl(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->big_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->big_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->small_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->small_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    iget-object v0, v0, Lcom/boohee/model/status/Photo;->original_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private init(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->getImageUrl(I)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 107
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance v1, Lcom/boohee/one/ui/fragment/PhotoImageFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment$1;-><init>(Lcom/boohee/one/ui/fragment/PhotoImageFragment;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 114
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->noImage()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/fragment/PhotoImageFragment$2;

    invoke-direct {v4, p0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment$2;-><init>(Lcom/boohee/one/ui/fragment/PhotoImageFragment;)V

    new-instance v5, Lcom/boohee/one/ui/fragment/PhotoImageFragment$3;

    invoke-direct {v5, p0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment$3;-><init>(Lcom/boohee/one/ui/fragment/PhotoImageFragment;)V

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->noImage()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 148
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->btnSave:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/boohee/model/status/Photo;)Lcom/boohee/one/ui/fragment/PhotoImageFragment;
    .locals 2
    .param p0, "photo"    # Lcom/boohee/model/status/Photo;

    .prologue
    .line 66
    new-instance v0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment;-><init>()V

    .line 67
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/PhotoImageFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    .line 68
    const/4 v1, 0x0

    iput v1, v0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->type:I

    .line 69
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/PhotoImageFragment;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment;-><init>()V

    .line 80
    .local v0, "fragment":Lcom/boohee/one/ui/fragment/PhotoImageFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageUrl:Ljava/lang/String;

    .line 81
    const/4 v1, 0x1

    iput v1, v0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->type:I

    .line 82
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v1, 0x7f030160

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 89
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroyView()V

    .line 179
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 183
    :cond_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 96
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->context:Landroid/content/Context;

    .line 97
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 98
    iget v0, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->type:I

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->init(I)V

    .line 99
    return-void
.end method

.method public setPhoto(Lcom/boohee/model/status/Photo;)V
    .locals 0
    .param p1, "photo"    # Lcom/boohee/model/status/Photo;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/PhotoImageFragment;->photo:Lcom/boohee/model/status/Photo;

    .line 155
    return-void
.end method
