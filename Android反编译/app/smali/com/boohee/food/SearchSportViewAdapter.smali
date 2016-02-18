.class public Lcom/boohee/food/SearchSportViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchSportViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private lastestWeight:F

.field private mContext:Landroid/content/Context;

.field private sports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Sport;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/boohee/model/Sport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Sport;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/boohee/food/SearchSportViewAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    .line 24
    invoke-direct {p0}, Lcom/boohee/food/SearchSportViewAdapter;->getLastestWeight()F

    move-result v0

    iput v0, p0, Lcom/boohee/food/SearchSportViewAdapter;->lastestWeight:F

    .line 25
    return-void
.end method

.method private getLastestWeight()F
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/boohee/modeldao/WeightRecordDao;

    iget-object v2, p0, Lcom/boohee/food/SearchSportViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "dao":Lcom/boohee/modeldao/WeightRecordDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v1

    .line 31
    .local v1, "weight":F
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "holder":Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;-><init>(Lcom/boohee/food/SearchSportViewAdapter;)V

    .line 57
    .restart local v0    # "holder":Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;
    iget-object v1, p0, Lcom/boohee/food/SearchSportViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v1, 0x7f0e0559

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0e055a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;->calory:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v2, v0, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Sport;

    iget-object v1, v1, Lcom/boohee/model/Sport;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v0, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;->calory:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/food/SearchSportViewAdapter;->sports:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Sport;

    iget v4, p0, Lcom/boohee/food/SearchSportViewAdapter;->lastestWeight:F

    invoke-virtual {v1, v4}, Lcom/boohee/model/Sport;->calcCalory(F)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u5343\u5361/60\u5206\u949f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object p2

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/food/SearchSportViewAdapter$ViewHolder;
    goto :goto_0
.end method
