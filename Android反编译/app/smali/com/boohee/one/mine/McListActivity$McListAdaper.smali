.class public Lcom/boohee/one/mine/McListActivity$McListAdaper;
.super Landroid/widget/BaseAdapter;
.source "McListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/mine/McListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "McListAdaper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/mine/McListActivity$McListAdaper$removeMcListener;,
        Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;
    }
.end annotation


# instance fields
.field edit:Z

.field mcPeriodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/mine/McPeriod;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/boohee/one/mine/McListActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/mine/McListActivity;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "edit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/mine/McPeriod;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "mcPeriodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/mine/McPeriod;>;"
    iput-object p1, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->this$0:Lcom/boohee/one/mine/McListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->edit:Z

    .line 90
    iput-object p2, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->mcPeriodList:Ljava/util/ArrayList;

    .line 91
    iput-boolean p3, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->edit:Z

    .line 92
    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/mine/McListActivity$McListAdaper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/mine/McListActivity$McListAdaper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/boohee/one/mine/McListActivity$McListAdaper;->removeMc(Ljava/lang/String;)V

    return-void
.end method

.method private removeMc(Ljava/lang/String;)V
    .locals 3
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/one/mine/McListActivity;->access$1200(Lcom/boohee/one/mine/McListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/mine/McListActivity$McListAdaper$1;

    iget-object v2, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/one/mine/McListActivity;->access$1300(Lcom/boohee/one/mine/McListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/boohee/one/mine/McListActivity$McListAdaper$1;-><init>(Lcom/boohee/one/mine/McListActivity$McListAdaper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/boohee/api/OneApi;->deleteMc(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 181
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->mcPeriodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/boohee/model/mine/McPeriod;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->mcPeriodList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/mine/McPeriod;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/boohee/one/mine/McListActivity$McListAdaper;->getItem(I)Lcom/boohee/model/mine/McPeriod;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "holder":Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;
    if-nez p2, :cond_1

    .line 116
    new-instance v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;
    invoke-direct {v0, p0}, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;-><init>(Lcom/boohee/one/mine/McListActivity$McListAdaper;)V

    .line 117
    .restart local v0    # "holder":Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;
    iget-object v2, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/one/mine/McListActivity;->access$400(Lcom/boohee/one/mine/McListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030192

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    const v2, 0x7f0e04e9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->startDate:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f0e04e4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->Mcday:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f0e04e6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->McCircle:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0e04e8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->editBtn:Landroid/widget/Button;

    .line 122
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->mcPeriodList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 127
    iget-boolean v2, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->edit:Z

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->editBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    :goto_1
    invoke-virtual {p0, p1}, Lcom/boohee/one/mine/McListActivity$McListAdaper;->getItem(I)Lcom/boohee/model/mine/McPeriod;

    move-result-object v1

    .line 133
    .local v1, "mcPeriod":Lcom/boohee/model/mine/McPeriod;
    iget-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->editBtn:Landroid/widget/Button;

    new-instance v3, Lcom/boohee/one/mine/McListActivity$McListAdaper$removeMcListener;

    iget-object v4, v1, Lcom/boohee/model/mine/McPeriod;->start_on:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/boohee/one/mine/McListActivity$McListAdaper$removeMcListener;-><init>(Lcom/boohee/one/mine/McListActivity$McListAdaper;Ljava/lang/String;Lcom/boohee/one/mine/McListActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->startDate:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/boohee/model/mine/McPeriod;->start_on:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->Mcday:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/boohee/model/mine/McPeriod;->duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->McCircle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/boohee/model/mine/McPeriod;->cycle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v1    # "mcPeriod":Lcom/boohee/model/mine/McPeriod;
    :cond_0
    return-object p2

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;
    check-cast v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;
    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, v0, Lcom/boohee/one/mine/McListActivity$McListAdaper$ViewHolder;->editBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public setEdit(Z)V
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/boohee/one/mine/McListActivity$McListAdaper;->edit:Z

    .line 96
    return-void
.end method
