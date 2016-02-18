.class public Lcom/boohee/food/adapter/CollectionAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "CollectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/CollectionFood;",
        ">;"
    }
.end annotation


# instance fields
.field private isEdit:Z

.field private mDataSelect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CollectionFood;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CollectionFood;>;"
    .local p3, "dataSelect":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 34
    iput-object p3, p0, Lcom/boohee/food/adapter/CollectionAdapter;->mDataSelect:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/adapter/CollectionAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/adapter/CollectionAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/food/adapter/CollectionAdapter;->mDataSelect:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f030126

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/CollectionFood;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/CollectionFood;>.ViewHolder;"
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/boohee/food/adapter/CollectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/CollectionFood;

    .line 45
    .local v2, "food":Lcom/boohee/model/CollectionFood;
    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-object p2

    .line 48
    :cond_0
    const v7, 0x7f0e03bc

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 49
    .local v1, "civIcon":Lde/hdodenhof/circleimageview/CircleImageView;
    iget-object v7, v2, Lcom/boohee/model/CollectionFood;->thumb_image_url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 50
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/boohee/model/CollectionFood;->thumb_image_url:Ljava/lang/String;

    const v9, 0x7f020431

    invoke-static {v9}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v9

    invoke-virtual {v7, v8, v1, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 53
    :cond_1
    const v7, 0x7f0e00d3

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 54
    .local v5, "tvName":Landroid/widget/TextView;
    iget-object v7, v2, Lcom/boohee/model/CollectionFood;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v7, 0x7f0e00d6

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 57
    .local v4, "tvCalory":Landroid/widget/TextView;
    iget-object v7, v2, Lcom/boohee/model/CollectionFood;->calory:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/boohee/utils/FoodUtils;->showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v7, 0x7f0e00c2

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 60
    .local v6, "tvUnit":Landroid/widget/TextView;
    iget-object v7, v2, Lcom/boohee/model/CollectionFood;->weight:Ljava/lang/String;

    iget-boolean v8, v2, Lcom/boohee/model/CollectionFood;->is_liquid:Z

    invoke-static {v7, v8, v10}, Lcom/boohee/utils/FoodUtils;->changeUnitAndWeight(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v7, 0x7f0e0130

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 63
    .local v3, "ivLight":Landroid/widget/ImageView;
    iget v7, v2, Lcom/boohee/model/CollectionFood;->health_light:I

    invoke-static {v7, v3}, Lcom/boohee/utils/FoodUtils;->switchToLight(ILandroid/widget/ImageView;)V

    .line 65
    const v7, 0x7f0e03cf

    invoke-virtual {p3, v7}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 66
    .local v0, "cbSelect":Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/boohee/food/adapter/CollectionAdapter;->mDataSelect:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-boolean v7, p0, Lcom/boohee/food/adapter/CollectionAdapter;->isEdit:Z

    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    new-instance v7, Lcom/boohee/food/adapter/CollectionAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/boohee/food/adapter/CollectionAdapter$1;-><init>(Lcom/boohee/food/adapter/CollectionAdapter;I)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 79
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/boohee/food/adapter/CollectionAdapter;->isEdit:Z

    .line 86
    invoke-virtual {p0}, Lcom/boohee/food/adapter/CollectionAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
