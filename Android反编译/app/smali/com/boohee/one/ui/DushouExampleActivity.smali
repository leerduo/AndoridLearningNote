.class public Lcom/boohee/one/ui/DushouExampleActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "DushouExampleActivity.java"


# instance fields
.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field mIvPhoto:Luk/co/senab/photoview/PhotoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/DushouExampleActivity;->setContentView(I)V

    .line 33
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 34
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lcom/boohee/one/ui/DushouExampleActivity;->mIvPhoto:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/boohee/one/ui/DushouExampleActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 35
    iget-object v0, p0, Lcom/boohee/one/ui/DushouExampleActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance v1, Lcom/boohee/one/ui/DushouExampleActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/DushouExampleActivity$1;-><init>(Lcom/boohee/one/ui/DushouExampleActivity;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 41
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/boohee/one/ui/DushouExampleActivity;->mIvPhoto:Luk/co/senab/photoview/PhotoView;

    const v3, 0x7f0202fd

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 42
    return-void
.end method
