.class public Lcom/boohee/food/SearchViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/food/SearchViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private foods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FoodWithUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


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
            "Lcom/boohee/model/FoodWithUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/FoodWithUnit;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/boohee/food/SearchViewAdapter;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "holder":Lcom/boohee/food/SearchViewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 46
    new-instance v1, Lcom/boohee/food/SearchViewAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/boohee/food/SearchViewAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/boohee/food/SearchViewAdapter$ViewHolder;-><init>(Lcom/boohee/food/SearchViewAdapter;)V

    .line 47
    .restart local v1    # "holder":Lcom/boohee/food/SearchViewAdapter$ViewHolder;
    iget-object v2, p0, Lcom/boohee/food/SearchViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301b9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    const v2, 0x7f0e0559

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/boohee/food/SearchViewAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f0e055a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/boohee/food/SearchViewAdapter$ViewHolder;->calory:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v3, v1, Lcom/boohee/food/SearchViewAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/FoodWithUnit;

    iget-object v2, v2, Lcom/boohee/model/FoodWithUnit;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, Lcom/boohee/food/SearchViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "format":Ljava/lang/String;
    iget-object v3, v1, Lcom/boohee/food/SearchViewAdapter$ViewHolder;->calory:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/boohee/food/SearchViewAdapter;->foods:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/FoodWithUnit;

    iget v2, v2, Lcom/boohee/model/FoodWithUnit;->calory:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 52
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/boohee/food/SearchViewAdapter$ViewHolder;
    check-cast v1, Lcom/boohee/food/SearchViewAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/boohee/food/SearchViewAdapter$ViewHolder;
    goto :goto_0
.end method
