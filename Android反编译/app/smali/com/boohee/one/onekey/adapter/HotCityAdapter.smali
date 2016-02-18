.class public Lcom/boohee/one/onekey/adapter/HotCityAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "HotCityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/one/onekey/model/City;",
        ">;"
    }
.end annotation


# instance fields
.field private mCityId:I

.field public onCitySelectedListener:Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cityId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    invoke-direct {p0, p1, p3}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 24
    iput p2, p0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->mCityId:I

    .line 25
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/onekey/adapter/HotCityAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/adapter/HotCityAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->mCityId:I

    return p1
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0301ce

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/one/onekey/model/City;>.ViewHolder;"
    iget-object v2, p0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/City;

    .line 45
    .local v0, "city":Lcom/boohee/one/onekey/model/City;
    const v2, 0x7f0e057f

    invoke-virtual {p3, v2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 46
    .local v1, "viewCity":Landroid/widget/CheckBox;
    iget v2, v0, Lcom/boohee/one/onekey/model/City;->city_id:I

    iget v3, p0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->mCityId:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v2, v0, Lcom/boohee/one/onekey/model/City;->city_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v2, Lcom/boohee/one/onekey/adapter/HotCityAdapter$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/boohee/one/onekey/adapter/HotCityAdapter$1;-><init>(Lcom/boohee/one/onekey/adapter/HotCityAdapter;Landroid/widget/CheckBox;Lcom/boohee/one/onekey/model/City;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-object p2

    .line 46
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setOnCitySelectedListener(Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;)V
    .locals 0
    .param p1, "onCitySelectedListener"    # Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->onCitySelectedListener:Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;

    .line 64
    return-void
.end method

.method public updateListView(I)V
    .locals 0
    .param p1, "city_id"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->mCityId:I

    .line 34
    invoke-virtual {p0}, Lcom/boohee/one/onekey/adapter/HotCityAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method
