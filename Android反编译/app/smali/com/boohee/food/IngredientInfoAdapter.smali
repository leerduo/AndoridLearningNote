.class public Lcom/boohee/food/IngredientInfoAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "IngredientInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/IngredientInfo;",
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
            "Lcom/boohee/model/IngredientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f03013e

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/IngredientInfo;>.ViewHolder;"
    invoke-virtual {p0, p1}, Lcom/boohee/food/IngredientInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/IngredientInfo;

    .line 35
    .local v0, "info":Lcom/boohee/model/IngredientInfo;
    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-object p2

    .line 38
    :cond_0
    const v2, 0x7f0e00d3

    invoke-virtual {p3, v2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/IngredientInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v2, 0x7f0e040b

    invoke-virtual {p3, v2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, "tvValue":Landroid/widget/TextView;
    const-string v2, "--"

    iget-object v3, v0, Lcom/boohee/model/IngredientInfo;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, v0, Lcom/boohee/model/IngredientInfo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_1
    const v2, 0x7f0e040c

    invoke-virtual {p3, v2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/boohee/model/IngredientInfo;->memo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/boohee/model/IngredientInfo;->value:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
