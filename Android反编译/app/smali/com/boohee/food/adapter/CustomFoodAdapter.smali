.class public Lcom/boohee/food/adapter/CustomFoodAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "CustomFoodAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/CustomFood;",
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
            "Lcom/boohee/model/CustomFood;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/CustomFood;>;"
    .local p3, "dataSelect":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    iput-object p3, p0, Lcom/boohee/food/adapter/CustomFoodAdapter;->mDataSelect:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/adapter/CustomFoodAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/adapter/CustomFoodAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/boohee/food/adapter/CustomFoodAdapter;->mDataSelect:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f03012d

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
            "Lcom/boohee/model/CustomFood;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/CustomFood;>.ViewHolder;"
    const/4 v9, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/boohee/food/adapter/CustomFoodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/CustomFood;

    .line 42
    .local v1, "food":Lcom/boohee/model/CustomFood;
    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-object p2

    .line 46
    :cond_0
    const v5, 0x7f0e00d3

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    .local v3, "tvName":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/boohee/model/CustomFood;->food_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v5, 0x7f0e00d6

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "tvCalory":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/boohee/model/CustomFood;->calory:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/boohee/utils/FoodUtils;->showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v5, 0x7f0e00c2

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, "tvUnit":Landroid/widget/TextView;
    const-string v5, " \u5927\u5361/%1$s%2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/boohee/model/CustomFood;->amount:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/boohee/model/CustomFood;->unit_name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v5, 0x7f0e03cf

    invoke-virtual {p3, v5}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 56
    .local v0, "cbSelect":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/boohee/food/adapter/CustomFoodAdapter;->mDataSelect:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-boolean v5, p0, Lcom/boohee/food/adapter/CustomFoodAdapter;->isEdit:Z

    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 60
    new-instance v5, Lcom/boohee/food/adapter/CustomFoodAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/boohee/food/adapter/CustomFoodAdapter$1;-><init>(Lcom/boohee/food/adapter/CustomFoodAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 67
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/boohee/food/adapter/CustomFoodAdapter;->isEdit:Z

    .line 74
    invoke-virtual {p0}, Lcom/boohee/food/adapter/CustomFoodAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
