.class public Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
.super Landroid/widget/BaseAdapter;
.source "SortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private mCityId:I

.field private mContext:Landroid/content/Context;

.field public onCitySelectedListener:Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "city_id"    # I
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
    .line 27
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/City;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    .line 30
    iput p2, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->mCityId:I

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->mCityId:I

    return p1
.end method

.method private getAlpha(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "sortStr":Ljava/lang/String;
    const-string v1, "[A-Z]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    .end local v0    # "sortStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "sortStr":Ljava/lang/String;
    :cond_0
    const-string v0, "\u70ed\u95e8"

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "section"    # I

    .prologue
    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/onekey/model/City;

    iget-object v2, v3, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    .line 122
    .local v2, "sortStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    .local v0, "firstChar":C
    if-ne v0, p1, :cond_0

    .line 128
    .end local v0    # "firstChar":C
    .end local v1    # "i":I
    .end local v2    # "sortStr":Ljava/lang/String;
    :goto_1
    return v1

    .line 120
    .restart local v0    # "firstChar":C
    .restart local v1    # "i":I
    .restart local v2    # "sortStr":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "firstChar":C
    .end local v2    # "sortStr":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/City;

    iget-object v0, v0, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "viewHolder":Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;
    iget-object v3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/City;

    .line 58
    .local v0, "city":Lcom/boohee/one/onekey/model/City;
    if-nez p2, :cond_0

    .line 59
    new-instance v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;

    .end local v2    # "viewHolder":Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;-><init>()V

    .line 60
    .restart local v2    # "viewHolder":Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;
    iget-object v3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030141

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v3, 0x7f0e0266

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0e01a9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->view_divide:Landroid/view/View;

    .line 63
    const v3, 0x7f0e0416

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f0e0417

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->rl_title:Landroid/widget/RelativeLayout;

    .line 65
    const v3, 0x7f0e0418

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->view_selected:Landroid/view/View;

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 73
    .local v1, "section":I
    invoke-virtual {p0, v1}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->getPositionForSection(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 74
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->view_divide:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/boohee/one/onekey/model/City;->sortLetters:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    iget-object v4, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/onekey/model/City;

    iget-object v3, v3, Lcom/boohee/one/onekey/model/City;->city_name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget v3, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->mCityId:I

    iget v4, v0, Lcom/boohee/one/onekey/model/City;->city_id:I

    if-ne v3, v4, :cond_2

    .line 83
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->view_selected:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_2
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->rl_title:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$1;-><init>(Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;Lcom/boohee/one/onekey/model/City;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object p2

    .line 68
    .end local v1    # "section":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolder":Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;
    check-cast v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;
    goto :goto_0

    .line 78
    .restart local v1    # "section":I
    :cond_1
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->view_divide:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object v3, v2, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter$ViewHolder;->view_selected:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setOnCitySelectedListener(Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;)V
    .locals 0
    .param p1, "onCitySelectedListener"    # Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->onCitySelectedListener:Lcom/boohee/one/onekey/widget/sortlistview/OnCitySelectedListener;

    .line 156
    return-void
.end method

.method public updateListView(I)V
    .locals 0
    .param p1, "city_id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->mCityId:I

    .line 40
    invoke-virtual {p0}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method
