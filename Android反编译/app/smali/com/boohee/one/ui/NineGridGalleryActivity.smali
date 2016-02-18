.class public Lcom/boohee/one/ui/NineGridGalleryActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "NineGridGalleryActivity.java"


# static fields
.field public static final PHOTO_LIST:Ljava/lang/String; = "PHOTO_LIST"


# instance fields
.field private photoImagePagerAdapter:Lcom/boohee/one/ui/adapter/PhotoImagePagerAdapter;

.field private photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field rlGallery:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0273
    .end annotation
.end field

.field tvIndex:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01b1
    .end annotation
.end field

.field viewpager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/NineGridGalleryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/NineGridGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/NineGridGalleryActivity;->setCurrentIndex(I)V

    return-void
.end method

.method public static comeOn(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 50
    .end local p1    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local p1    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/NineGridGalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PHOTO_LIST"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 48
    const-string v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PHOTO_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoList:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->position:I

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    new-instance v0, Lcom/boohee/one/ui/adapter/PhotoImagePagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/PhotoImagePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoImagePagerAdapter:Lcom/boohee/one/ui/adapter/PhotoImagePagerAdapter;

    .line 70
    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoImagePagerAdapter:Lcom/boohee/one/ui/adapter/PhotoImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/boohee/one/ui/NineGridGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/NineGridGalleryActivity$1;-><init>(Lcom/boohee/one/ui/NineGridGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 79
    iget v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->position:I

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->setCurrentIndex(I)V

    goto :goto_0
.end method

.method private setCurrentIndex(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070632

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/boohee/one/ui/NineGridGalleryActivity;->photoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030092

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 57
    invoke-direct {p0}, Lcom/boohee/one/ui/NineGridGalleryActivity;->init()V

    .line 58
    return-void
.end method
