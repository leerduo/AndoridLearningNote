.class public Lcom/boohee/more/PhysicalDimenActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "PhysicalDimenActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private image:Landroid/widget/ImageView;

.field private index:I

.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/boohee/more/PhysicalDimenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/PhysicalDimenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->index:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/more/PhysicalDimenActivity;->image:Landroid/widget/ImageView;

    const v2, 0x7f02044f

    invoke-static {v2}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/more/PhysicalDimenActivity;->image:Landroid/widget/ImageView;

    const v2, 0x7f02044d

    invoke-static {v2}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/more/PhysicalDimenActivity;->image:Landroid/widget/ImageView;

    const v2, 0x7f02044e

    invoke-static {v2}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0301aa

    invoke-virtual {p0, v0}, Lcom/boohee/more/PhysicalDimenActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/boohee/more/PhysicalDimenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->index:I

    .line 28
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/boohee/more/PhysicalDimenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->image:Landroid/widget/ImageView;

    .line 29
    invoke-direct {p0}, Lcom/boohee/more/PhysicalDimenActivity;->init()V

    .line 30
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lcom/boohee/more/PhysicalDimenActivity;->image:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 31
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance v1, Lcom/boohee/more/PhysicalDimenActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/PhysicalDimenActivity$1;-><init>(Lcom/boohee/more/PhysicalDimenActivity;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 64
    :cond_0
    return-void
.end method
