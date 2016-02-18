.class public Lcom/boohee/food/adapter/UploadAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "UploadAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/UploadFood;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private blvContent:Lcom/boohee/widgets/BooheeListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/boohee/widgets/BooheeListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "blv"    # Lcom/boohee/widgets/BooheeListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/UploadFood;",
            ">;",
            "Lcom/boohee/widgets/BooheeListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/UploadFood;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 34
    iput-object p3, p0, Lcom/boohee/food/adapter/UploadAdapter;->blvContent:Lcom/boohee/widgets/BooheeListView;

    .line 35
    iget-object v0, p0, Lcom/boohee/food/adapter/UploadAdapter;->blvContent:Lcom/boohee/widgets/BooheeListView;

    invoke-virtual {v0, p0}, Lcom/boohee/widgets/BooheeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    return-void
.end method

.method public static final getStateString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f03015d

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/UploadFood;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/UploadFood;>.ViewHolder;"
    invoke-virtual {p0, p1}, Lcom/boohee/food/adapter/UploadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/UploadFood;

    .line 46
    .local v2, "food":Lcom/boohee/model/UploadFood;
    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object p2

    .line 49
    :cond_1
    const v7, 0x7f0e03bc

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 50
    .local v0, "civIcon":Lde/hdodenhof/circleimageview/CircleImageView;
    iget-object v7, v2, Lcom/boohee/model/UploadFood;->thumb_img_url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 51
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/boohee/model/UploadFood;->thumb_img_url:Ljava/lang/String;

    const v9, 0x7f020431

    invoke-static {v9}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v0, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 53
    :cond_2
    const v7, 0x7f0e00d3

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 54
    .local v5, "tvName":Landroid/widget/TextView;
    iget-object v7, v2, Lcom/boohee/model/UploadFood;->food_name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/boohee/model/UploadFood;->barcode:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :try_start_0
    iget-object v7, p0, Lcom/boohee/food/adapter/UploadAdapter;->context:Landroid/content/Context;

    iget v8, v2, Lcom/boohee/model/UploadFood;->state:I

    invoke-static {v7, v8}, Lcom/boohee/food/adapter/UploadAdapter;->getStateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "state":Ljava/lang/String;
    iget-object v7, v2, Lcom/boohee/model/UploadFood;->message:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "null"

    iget-object v8, v2, Lcom/boohee/model/UploadFood;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/boohee/model/UploadFood;->message:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_3
    const v7, 0x7f0e0455

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    .local v6, "tvState":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v4    # "state":Ljava/lang/String;
    .end local v6    # "tvState":Landroid/widget/TextView;
    :goto_2
    const v7, 0x7f0e0454

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 66
    .local v3, "ivState":Landroid/widget/ImageView;
    iget v7, v2, Lcom/boohee/model/UploadFood;->state:I

    if-nez v7, :cond_5

    .line 68
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    const-string v8, ""

    const v9, 0x7f0202f3

    invoke-static {v9}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 54
    .end local v3    # "ivState":Landroid/widget/ImageView;
    :cond_4
    iget-object v7, v2, Lcom/boohee/model/UploadFood;->food_name:Ljava/lang/String;

    goto :goto_1

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "ivState":Landroid/widget/ImageView;
    :cond_5
    iget v7, v2, Lcom/boohee/model/UploadFood;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 72
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    const-string v8, ""

    const v9, 0x7f0202f2

    invoke-static {v9}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 74
    :cond_6
    iget v7, v2, Lcom/boohee/model/UploadFood;->state:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 76
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    const-string v8, ""

    const v9, 0x7f0202f1

    invoke-static {v9}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/boohee/food/adapter/UploadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/UploadFood;

    .line 85
    .local v0, "draftFood":Lcom/boohee/model/UploadFood;
    iget-object v1, p0, Lcom/boohee/food/adapter/UploadAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/boohee/food/UploadStateActivity;->comeOnBaby(Landroid/content/Context;Lcom/boohee/model/UploadFood;)V

    .line 86
    return-void
.end method
