.class public Lcom/boohee/calendar/PeriodCalendarAdapter;
.super Lcom/boohee/calendar/BaseCalendarAdapter;
.source "PeriodCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<+",
            "Lcom/boohee/calendar/CountDate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "records":Ljava/util/List;, "Ljava/util/List<+Lcom/boohee/calendar/CountDate;>;"
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/boohee/calendar/BaseCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;Ljava/util/Date;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0d00c8

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "holder":Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 32
    new-instance v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;-><init>(Lcom/boohee/calendar/PeriodCalendarAdapter;)V

    .line 33
    .restart local v0    # "holder":Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;
    iget-object v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300a3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    const v3, 0x7f0e02a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 35
    const v3, 0x7f0e02a6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->lineView:Landroid/view/View;

    .line 36
    const v3, 0x7f0e02a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 37
    const v3, 0x7f0e0127

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->ll_content:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :goto_0
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->currentFlag:I

    if-ne v3, p1, :cond_2

    .line 45
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    const v4, 0x7f020486

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d012e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    :goto_1
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->recordTagFlag:[I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->recordTagFlag:[I

    array-length v3, v3

    if-lez v3, :cond_7

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->recordTagFlag:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 56
    iget-object v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->recordTagFlag:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 57
    iget-object v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->records:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/PeriodRecord;

    .line 58
    .local v2, "record":Lcom/boohee/model/PeriodRecord;
    const-string v3, "mc"

    iget-object v4, v2, Lcom/boohee/model/PeriodRecord;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->lineView:Landroid/view/View;

    const v4, 0x7f0d008a

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .end local v2    # "record":Lcom/boohee/model/PeriodRecord;
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 40
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;
    goto :goto_0

    .line 47
    :cond_2
    iget v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->daysOfMonth:I

    iget v4, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->dayOfWeek:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_3

    iget v3, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->dayOfWeek:I

    if-lt p1, v3, :cond_3

    .line 48
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 50
    :cond_3
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/calendar/PeriodCalendarAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 60
    .restart local v1    # "i":I
    .restart local v2    # "record":Lcom/boohee/model/PeriodRecord;
    :cond_4
    const-string v3, "prediction"

    iget-object v4, v2, Lcom/boohee/model/PeriodRecord;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 61
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->lineView:Landroid/view/View;

    const v4, 0x7f0d00c7

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 62
    :cond_5
    const-string v3, "pregnancy"

    iget-object v4, v2, Lcom/boohee/model/PeriodRecord;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 63
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->lineView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 64
    :cond_6
    const-string v3, "oviposit_day"

    iget-object v4, v2, Lcom/boohee/model/PeriodRecord;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v3, v0, Lcom/boohee/calendar/PeriodCalendarAdapter$ViewHolder;->lineView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 71
    .end local v1    # "i":I
    .end local v2    # "record":Lcom/boohee/model/PeriodRecord;
    :cond_7
    return-object p2
.end method
