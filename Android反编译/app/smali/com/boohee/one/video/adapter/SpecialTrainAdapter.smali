.class public Lcom/boohee/one/video/adapter/SpecialTrainAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "SpecialTrainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/one/video/entity/SpecialTrain;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/SpecialTrain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/SpecialTrain;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/adapter/SpecialTrainAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/video/adapter/SpecialTrainAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SpecialTrainAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f030153

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/one/video/entity/SpecialTrain;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/one/video/entity/SpecialTrain;>.ViewHolder;"
    const v10, 0x7f0e00db

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    .line 38
    .local v3, "layout":Landroid/view/View;
    const v10, 0x7f0e043f

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 39
    .local v9, "tvTrainName":Landroid/widget/TextView;
    const v10, 0x7f0e0440

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 40
    .local v8, "tvTrainDes":Landroid/widget/TextView;
    const v10, 0x7f0e00d6

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 41
    .local v5, "tvColory":Landroid/widget/TextView;
    const v10, 0x7f0e017a

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 42
    .local v7, "tvTime":Landroid/widget/TextView;
    const v10, 0x7f0e0441

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 43
    .local v6, "tvPersonCount":Landroid/widget/TextView;
    const v10, 0x7f0e03d8

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .local v1, "ivBg":Landroid/widget/ImageView;
    const v10, 0x7f0e0442

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .local v2, "ivIsJoined":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v10, v3, v11, v12}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 47
    iget-object v10, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v10, v1, v11, v12}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/SpecialTrain;

    .line 51
    .local v4, "specialTrain":Lcom/boohee/one/video/entity/SpecialTrain;
    iget-object v10, v4, Lcom/boohee/one/video/entity/SpecialTrain;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v10, v4, Lcom/boohee/one/video/entity/SpecialTrain;->description:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v10, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0704da

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v4, Lcom/boohee/one/video/entity/SpecialTrain;->calorie:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v10, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0704f8

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v4, Lcom/boohee/one/video/entity/SpecialTrain;->minutes:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v10, p0, Lcom/boohee/one/video/adapter/SpecialTrainAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0704dc

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v4, Lcom/boohee/one/video/entity/SpecialTrain;->join_count:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-boolean v10, v4, Lcom/boohee/one/video/entity/SpecialTrain;->isJioned:Z

    if-eqz v10, :cond_0

    .line 58
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_0
    new-instance v10, Lcom/boohee/one/video/adapter/SpecialTrainAdapter$1;

    invoke-direct {v10, p0, v4}, Lcom/boohee/one/video/adapter/SpecialTrainAdapter$1;-><init>(Lcom/boohee/one/video/adapter/SpecialTrainAdapter;Lcom/boohee/one/video/entity/SpecialTrain;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v10

    iget-object v11, v4, Lcom/boohee/one/video/entity/SpecialTrain;->pic_url:Ljava/lang/String;

    invoke-static {p1}, Lcom/boohee/utility/ImageLoaderOptions;->randomColorWithOrder(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v12

    invoke-virtual {v10, v11, v1, v12}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 78
    return-object p2

    .line 62
    :cond_0
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
