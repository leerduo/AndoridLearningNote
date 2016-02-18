.class public Lcom/boohee/one/video/adapter/SportPlanAdapter;
.super Landroid/widget/BaseAdapter;
.source "SportPlanAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private plans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/one/video/entity/Plan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/one/video/entity/Plan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "plans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/one/video/entity/Plan;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->plans:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/adapter/SportPlanAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SportPlanAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->plans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SportPlanAdapter;
    .param p1, "x1"    # Lcom/boohee/one/video/entity/Plan;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter;->showTestDialog(Lcom/boohee/one/video/entity/Plan;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SportPlanAdapter;
    .param p1, "x1"    # Lcom/boohee/one/video/entity/Plan;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter;->showDialog(Lcom/boohee/one/video/entity/Plan;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/video/adapter/SportPlanAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SportPlanAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter;->setCompletedLesson(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/one/video/adapter/SportPlanAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SportPlanAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/video/adapter/SportPlanAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/adapter/SportPlanAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter;->setAgainLesson(I)V

    return-void
.end method

.method private setAgainLesson(I)V
    .locals 3
    .param p1, "lesson_id"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcom/boohee/one/video/adapter/SportPlanAdapter$6;

    iget-object v2, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/adapter/SportPlanAdapter$6;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/boohee/one/video/api/SportApi;->postLessonAgain(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 167
    return-void
.end method

.method private setCompletedLesson(I)V
    .locals 3
    .param p1, "lesson_id"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcom/boohee/one/video/adapter/SportPlanAdapter$7;

    iget-object v2, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/video/adapter/SportPlanAdapter$7;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/boohee/one/video/api/SportApi;->postLessonCompleted(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 177
    return-void
.end method

.method private showDialog(Lcom/boohee/one/video/entity/Plan;)V
    .locals 3
    .param p1, "plan"    # Lcom/boohee/one/video/entity/Plan;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0704eb

    invoke-static {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0704e7

    new-instance v2, Lcom/boohee/one/video/adapter/SportPlanAdapter$5;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter$5;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0704e8

    new-instance v2, Lcom/boohee/one/video/adapter/SportPlanAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter$4;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 157
    return-void
.end method

.method private showTestDialog(Lcom/boohee/one/video/entity/Plan;)V
    .locals 3
    .param p1, "plan"    # Lcom/boohee/one/video/entity/Plan;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0704e0

    invoke-static {v0, v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0704e7

    new-instance v2, Lcom/boohee/one/video/adapter/SportPlanAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter$3;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0704e5

    new-instance v2, Lcom/boohee/one/video/adapter/SportPlanAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/video/adapter/SportPlanAdapter$2;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 138
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->plans:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->plans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->plans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x2ee

    const/16 v10, 0x226

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "holder":Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 73
    iget-object v4, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030154

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;-><init>()V

    .line 75
    .restart local v0    # "holder":Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;
    const v4, 0x7f0e0443

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->bgImage:Landroid/widget/ImageView;

    .line 76
    const v4, 0x7f0e0444

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->tvProgress:Landroid/widget/TextView;

    .line 77
    const v4, 0x7f0e0445

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->completedImg:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_2

    .line 84
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v11, v10}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;II)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 86
    .local v1, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .end local v1    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1
    iget-object v4, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->plans:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/one/video/entity/Plan;

    .line 92
    .local v2, "plan":Lcom/boohee/one/video/entity/Plan;
    new-instance v3, Landroid/text/SpannableString;

    const-string v4, "\u7b2c%d/%d\u5929"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v2, Lcom/boohee/one/video/entity/Plan;->progress:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v2, Lcom/boohee/one/video/entity/Plan;->total_progress:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v3, "styledText":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    const v6, 0x7f0a00e0

    invoke-direct {v4, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v7, v9, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    iget-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->tvProgress:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 96
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lcom/boohee/one/video/entity/Plan;->pic_url:Ljava/lang/String;

    iget-object v6, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->bgImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 97
    iget-boolean v4, v2, Lcom/boohee/one/video/entity/Plan;->is_complete:Z

    if-eqz v4, :cond_3

    .line 98
    iget-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->completedImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :goto_2
    iget-boolean v4, v2, Lcom/boohee/one/video/entity/Plan;->is_complete:Z

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/boohee/one/video/entity/Plan;->progress:I

    iget v5, v2, Lcom/boohee/one/video/entity/Plan;->total_progress:I

    if-ne v4, v5, :cond_0

    .line 103
    iget-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->bgImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/boohee/one/video/adapter/SportPlanAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/boohee/one/video/adapter/SportPlanAdapter$1;-><init>(Lcom/boohee/one/video/adapter/SportPlanAdapter;Lcom/boohee/one/video/entity/Plan;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    return-object p2

    .line 80
    .end local v2    # "plan":Lcom/boohee/one/video/entity/Plan;
    .end local v3    # "styledText":Landroid/text/SpannableString;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;
    goto/16 :goto_0

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/video/adapter/SportPlanAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v11, v10}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;II)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 100
    .restart local v2    # "plan":Lcom/boohee/one/video/entity/Plan;
    .restart local v3    # "styledText":Landroid/text/SpannableString;
    :cond_3
    iget-object v4, v0, Lcom/boohee/one/video/adapter/SportPlanAdapter$ViewHolder;->completedImg:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
