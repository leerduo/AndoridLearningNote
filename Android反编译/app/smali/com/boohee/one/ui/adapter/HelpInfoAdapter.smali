.class public Lcom/boohee/one/ui/adapter/HelpInfoAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "HelpInfoAdapter.java"


# instance fields
.field private li:Landroid/view/LayoutInflater;

.field private mChildDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeaderDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "headerDatas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "childDatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->li:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mChildDatas:Ljava/util/Map;

    .line 30
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mChildDatas:Ljava/util/Map;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 59
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "childTextView":Landroid/widget/TextView;
    if-nez p4, :cond_0

    .line 87
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->li:Landroid/view/LayoutInflater;

    const v2, 0x7f030040

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 88
    const v1, 0x7f0e014b

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "childTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 89
    .restart local v0    # "childTextView":Landroid/widget/TextView;
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mChildDatas:Ljava/util/Map;

    iget-object v2, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-object p4

    .line 91
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "childTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "childTextView":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mChildDatas:Ljava/util/Map;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "headerText":Landroid/widget/TextView;
    if-nez p3, :cond_0

    .line 72
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->li:Landroid/view/LayoutInflater;

    const v2, 0x7f030041

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 73
    const v1, 0x7f0e014c

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "headerText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .restart local v0    # "headerText":Landroid/widget/TextView;
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HelpInfoAdapter;->mHeaderDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-object p3

    .line 76
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "headerText":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "headerText":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
