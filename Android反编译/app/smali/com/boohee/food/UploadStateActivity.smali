.class public Lcom/boohee/food/UploadStateActivity;
.super Lcom/boohee/main/GestureActivity;
.source "UploadStateActivity.java"


# static fields
.field public static final KEY_UPLOAD_FOOD:Ljava/lang/String; = "key_upload_food"


# instance fields
.field aliasItem:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0258
    .end annotation
.end field

.field brandItem:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0256
    .end annotation
.end field

.field private mUploadFood:Lcom/boohee/model/UploadFood;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Lcom/boohee/model/UploadFood;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploadFood"    # Lcom/boohee/model/UploadFood;

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {p1}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "dataStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/food/UploadStateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key_upload_food"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initItem(IILjava/lang/String;)V
    .locals 2
    .param p1, "itemViewRes"    # I
    .param p2, "nameRes"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/boohee/food/UploadStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "itemView":Landroid/view/View;
    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const v1, 0x7f0e040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const v8, 0x7f0e025b

    const v7, 0x7f020431

    const/4 v6, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/boohee/food/UploadStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_upload_food"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "dataStr":Ljava/lang/String;
    const-class v3, Lcom/boohee/model/UploadFood;

    invoke-static {v0, v3}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/UploadFood;

    iput-object v3, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    .line 49
    const v3, 0x7f0e0255

    const v4, 0x7f0705fe

    iget-object v5, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v5, v5, Lcom/boohee/model/UploadFood;->barcode:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v3, v3, Lcom/boohee/model/UploadFood;->brand:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v3, v3, Lcom/boohee/model/UploadFood;->brand:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->brandItem:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const v3, 0x7f0e0256

    const v4, 0x7f0705f0

    iget-object v5, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v5, v5, Lcom/boohee/model/UploadFood;->brand:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 54
    :cond_0
    const v3, 0x7f0e0257

    const v4, 0x7f070600

    iget-object v5, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v5, v5, Lcom/boohee/model/UploadFood;->food_name:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v3, v3, Lcom/boohee/model/UploadFood;->alias:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v3, v3, Lcom/boohee/model/UploadFood;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->aliasItem:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v3, 0x7f0e0258

    const v4, 0x7f0705ef

    iget-object v5, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v5, v5, Lcom/boohee/model/UploadFood;->alias:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 59
    :cond_1
    const v3, 0x7f0e0259

    const v4, 0x7f070603

    iget-object v5, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v5, v5, Lcom/boohee/model/UploadFood;->upload_date:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 60
    const v3, 0x7f0e025a

    const v4, 0x7f070601

    iget-object v5, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget v5, v5, Lcom/boohee/model/UploadFood;->state:I

    invoke-static {p0, v5}, Lcom/boohee/food/adapter/UploadAdapter;->getStateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v3, v3, Lcom/boohee/model/UploadFood;->message:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "null"

    iget-object v4, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v4, v4, Lcom/boohee/model/UploadFood;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    const v3, 0x7f070602

    iget-object v4, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v4, v4, Lcom/boohee/model/UploadFood;->message:Ljava/lang/String;

    invoke-direct {p0, v8, v3, v4}, Lcom/boohee/food/UploadStateActivity;->initItem(IILjava/lang/String;)V

    .line 67
    :goto_0
    const v3, 0x7f0e0580

    invoke-virtual {p0, v3}, Lcom/boohee/food/UploadStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 68
    .local v2, "ivFront":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v4, v4, Lcom/boohee/model/UploadFood;->front_img_url:Ljava/lang/String;

    invoke-static {v7}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 69
    const v3, 0x7f0e0581

    invoke-virtual {p0, v3}, Lcom/boohee/food/UploadStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, "ivBack":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/food/UploadStateActivity;->mUploadFood:Lcom/boohee/model/UploadFood;

    iget-object v4, v4, Lcom/boohee/model/UploadFood;->back_img_url:Ljava/lang/String;

    invoke-static {v7}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 71
    return-void

    .line 64
    .end local v1    # "ivBack":Landroid/widget/ImageView;
    .end local v2    # "ivFront":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/boohee/food/UploadStateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcom/boohee/food/UploadStateActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 42
    invoke-direct {p0}, Lcom/boohee/food/UploadStateActivity;->initView()V

    .line 43
    return-void
.end method
