.class public Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "MicroNutrientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/MicroNutrientsItem;",
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
            "Lcom/boohee/model/MicroNutrientsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/MicroNutrientsItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f030140

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
            "Lcom/boohee/model/MicroNutrientsItem;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/MicroNutrientsItem;>.ViewHolder;"
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MicroNutrientsItem;

    .line 37
    .local v1, "item":Lcom/boohee/model/MicroNutrientsItem;
    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object p2

    .line 40
    :cond_1
    const v3, 0x7f0e0411

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v3, 0x7f0e0412

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v3, 0x7f0e0413

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->rec_value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v3, 0x7f0e0415

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, "desc":Landroid/widget/TextView;
    const v3, 0x7f0e0414

    invoke-virtual {p3, v3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 47
    .local v2, "state":Landroid/widget/ImageView;
    sget-object v3, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->less:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v3}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->desc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;->context:Landroid/content/Context;

    const v4, 0x7f07036a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v3, 0x7f0201f1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 50
    :cond_2
    sget-object v3, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->much:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v3}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->desc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;->context:Landroid/content/Context;

    const v4, 0x7f070369

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v3, 0x7f0201f5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_3
    sget-object v3, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->good:Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;

    invoke-virtual {v3}, Lcom/boohee/model/TodayItem$DESCRIPTION_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/boohee/model/MicroNutrientsItem;->desc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/boohee/one/ui/adapter/MicroNutrientsAdapter;->context:Landroid/content/Context;

    const v4, 0x7f07036b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v3, 0x7f0201f0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
