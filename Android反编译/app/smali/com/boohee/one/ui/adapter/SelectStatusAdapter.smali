.class public Lcom/boohee/one/ui/adapter/SelectStatusAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "SelectStatusAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/MealBean;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/MealBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MealBean;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 28
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 32
    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const v1, 0x7f0d005d

    invoke-static {v1}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/adapter/SelectStatusAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/ui/adapter/SelectStatusAdapter$1;-><init>(Lcom/boohee/one/ui/adapter/SelectStatusAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f03014f

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/MealBean;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/MealBean;>.ViewHolder;"
    const v4, 0x7f0e0437

    invoke-virtual {p3, v4}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/RoundedCornersImage;

    .line 42
    .local v0, "avatar":Lcom/boohee/widgets/RoundedCornersImage;
    const v4, 0x7f0e00fc

    invoke-virtual {p3, v4}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 43
    .local v3, "userName":Landroid/widget/TextView;
    const v4, 0x7f0e0438

    invoke-virtual {p3, v4}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 44
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MealBean;

    .line 45
    .local v1, "bean":Lcom/boohee/model/MealBean;
    if-nez v1, :cond_0

    .line 46
    const/4 p2, 0x0

    .line 50
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 47
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {v1}, Lcom/boohee/model/MealBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v1}, Lcom/boohee/model/MealBean;->getUser_img()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lcom/boohee/model/MealBean;->getImg_url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method
