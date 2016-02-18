.class public Lcom/boohee/more/EstimateFoodActivity;
.super Lcom/boohee/main/GestureActivity;
.source "EstimateFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/EstimateFoodActivity$EstimateFood;
    }
.end annotation


# static fields
.field private static baoziList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field

.field private static breadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field

.field private static cerealList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field

.field private static cookedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field

.field private static mantouList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field

.field private static noodlesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field

.field private static riceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field llContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0127
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f070220

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->riceList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->noodlesList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->mantouList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->baoziList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->breadList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->cerealList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->riceList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020352

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->riceList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020353

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->riceList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020354

    const v3, 0x7f070221

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->noodlesList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f02034f

    const v3, 0x7f07021d

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->noodlesList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020350

    const v3, 0x7f07021e

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->noodlesList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020351

    const v3, 0x7f07021f

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->mantouList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020356

    const v3, 0x7f07021c

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->baoziList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020348

    const v3, 0x7f070208

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->breadList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020347

    const v3, 0x7f070209

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cerealList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f02034a

    const v3, 0x7f07020a

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cerealList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f02034b

    const v3, 0x7f07020b

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f02034e

    const v3, 0x7f07020d

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f02034c

    const v3, 0x7f07020f

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020357

    const v3, 0x7f070211

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f020355

    const v3, 0x7f070212

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    new-instance v1, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    const v2, 0x7f02034d

    const v3, 0x7f070213

    invoke-direct {v1, v2, v3}, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 135
    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/more/EstimateFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initItem(II)V
    .locals 8
    .param p1, "imgResource"    # I
    .param p2, "strResource"    # I

    .prologue
    .line 116
    iget-object v4, p0, Lcom/boohee/more/EstimateFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030239

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0e06d6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "foodImg":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/boohee/more/EstimateFoodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x5

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/boohee/more/EstimateFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 120
    .local v3, "width":I
    int-to-double v4, v3

    const-wide v6, 0x3fe1eb851eb851ecL    # 0.56

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 121
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    const-string v5, ""

    invoke-static {p1}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 125
    const v4, 0x7f0e06d7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v4, p0, Lcom/boohee/more/EstimateFoodActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 74
    sget-object v2, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    .line 75
    .local v0, "food":Lcom/boohee/more/EstimateFoodActivity$EstimateFood;
    iget v2, v0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;->imgResource:I

    iget v3, v0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;->strResource:I

    invoke-direct {p0, v2, v3}, Lcom/boohee/more/EstimateFoodActivity;->initItem(II)V

    goto :goto_0

    .line 77
    .end local v0    # "food":Lcom/boohee/more/EstimateFoodActivity$EstimateFood;
    :cond_0
    return-void
.end method

.method private refresh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/more/EstimateFoodActivity$EstimateFood;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/more/EstimateFoodActivity$EstimateFood;>;"
    iget-object v2, p0, Lcom/boohee/more/EstimateFoodActivity;->llContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;

    .line 110
    .local v0, "food":Lcom/boohee/more/EstimateFoodActivity$EstimateFood;
    iget v2, v0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;->imgResource:I

    iget v3, v0, Lcom/boohee/more/EstimateFoodActivity$EstimateFood;->strResource:I

    invoke-direct {p0, v2, v3}, Lcom/boohee/more/EstimateFoodActivity;->initItem(II)V

    goto :goto_0

    .line 112
    .end local v0    # "food":Lcom/boohee/more/EstimateFoodActivity$EstimateFood;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0126,
            0x7f0e0121,
            0x7f0e0122,
            0x7f0e0123,
            0x7f0e0124,
            0x7f0e0125,
            0x7f0e0120
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 84
    :pswitch_0
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->riceList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 87
    :pswitch_1
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->noodlesList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 90
    :pswitch_2
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->mantouList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 93
    :pswitch_3
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->baoziList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 96
    :pswitch_4
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->breadList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 99
    :pswitch_5
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cerealList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 102
    :pswitch_6
    sget-object v0, Lcom/boohee/more/EstimateFoodActivity;->cookedList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0e0120
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/boohee/more/EstimateFoodActivity;->setContentView(I)V

    .line 69
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 70
    invoke-direct {p0}, Lcom/boohee/more/EstimateFoodActivity;->initView()V

    .line 71
    return-void
.end method
