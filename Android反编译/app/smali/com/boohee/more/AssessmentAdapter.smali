.class public Lcom/boohee/more/AssessmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "AssessmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/AssessmentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field final names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7c73\u996d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u7ca5\u7c7b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u9762\u6761"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u997c\u7c7b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u83dc\u80b4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u6c64\u7c7b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u996e\u6599"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/more/AssessmentAdapter;->names:[Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/boohee/more/AssessmentAdapter;->ctx:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/boohee/more/AssessmentAdapter;->names:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/boohee/more/AssessmentAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/more/AssessmentAdapter;->names:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "holder":Lcom/boohee/more/AssessmentAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 40
    new-instance v0, Lcom/boohee/more/AssessmentAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/more/AssessmentAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/boohee/more/AssessmentAdapter$ViewHolder;-><init>(Lcom/boohee/more/AssessmentAdapter;)V

    .line 41
    .restart local v0    # "holder":Lcom/boohee/more/AssessmentAdapter$ViewHolder;
    iget-object v1, p0, Lcom/boohee/more/AssessmentAdapter;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 42
    const v1, 0x7f0e0283

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/boohee/more/AssessmentAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    iget-object v1, v0, Lcom/boohee/more/AssessmentAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/more/AssessmentAdapter;->names:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-object p2

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/more/AssessmentAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/more/AssessmentAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/more/AssessmentAdapter$ViewHolder;
    goto :goto_0
.end method
