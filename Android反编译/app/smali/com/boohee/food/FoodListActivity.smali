.class public Lcom/boohee/food/FoodListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "FoodListActivity.java"


# static fields
.field private static final KEY_RECORD_FOOD_LIST:Ljava/lang/String; = "key_record_food_list"

.field private static final KEY_RECORD_PHOTO_LIST:Ljava/lang/String; = "key_record_photo_list"

.field private static final KEY_TIME_TYPE:Ljava/lang/String; = "key_time_type"

.field static final TAG:Ljava/lang/String;


# instance fields
.field ll_food_list:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0146
    .end annotation
.end field

.field private mRecordFoods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeType:I

.field tv_total:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0145
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/boohee/food/FoodListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/food/FoodListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/food/FoodListActivity;->mTimeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/FoodListActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/boohee/food/FoodListActivity;->deleteEating(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/food/FoodListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/food/FoodListActivity;Lcom/boohee/model/RecordPhoto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;
    .param p1, "x1"    # Lcom/boohee/model/RecordPhoto;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/boohee/food/FoodListActivity;->deletePhotoEating(Lcom/boohee/model/RecordPhoto;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/food/FoodListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/food/FoodListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/boohee/food/FoodListActivity;->initView()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/food/FoodListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/boohee/food/FoodListActivity;->refreshTotal()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/food/FoodListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/food/FoodListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/FoodListActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/boohee/food/FoodListActivity;->mTimeType:I

    return v0
.end method

.method private deleteEating(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "position"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/boohee/food/FoodListActivity;->showLoading()V

    .line 183
    new-instance v0, Lcom/boohee/food/FoodListActivity$4;

    invoke-direct {v0, p0, p0, p2}, Lcom/boohee/food/FoodListActivity$4;-><init>(Lcom/boohee/food/FoodListActivity;Landroid/content/Context;I)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/RecordApi;->deleteEating(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 199
    return-void
.end method

.method private deletePhotoEating(Lcom/boohee/model/RecordPhoto;I)V
    .locals 4
    .param p1, "recordPhoto"    # Lcom/boohee/model/RecordPhoto;
    .param p2, "index"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/boohee/food/FoodListActivity;->showLoading()V

    .line 158
    iget-object v0, p0, Lcom/boohee/food/FoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p1, Lcom/boohee/model/RecordPhoto;->id:I

    new-instance v2, Lcom/boohee/food/FoodListActivity$3;

    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/boohee/food/FoodListActivity$3;-><init>(Lcom/boohee/food/FoodListActivity;Landroid/content/Context;Lcom/boohee/model/RecordPhoto;I)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->deleteDietPhotos(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 175
    return-void
.end method

.method private getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;)Landroid/view/View;
    .locals 6
    .param p1, "index"    # I
    .param p2, "recordPhoto"    # Lcom/boohee/model/RecordPhoto;

    .prologue
    const/4 v0, 0x0

    .line 124
    if-nez p2, :cond_0

    .line 150
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03014b

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "itemView":Landroid/view/View;
    const v4, 0x7f0e03eb

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 127
    .local v1, "rl_del":Landroid/widget/RelativeLayout;
    const v4, 0x7f0e00d3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "tv_name":Landroid/widget/TextView;
    const v4, 0x7f0e00d6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    .local v2, "tv_calory":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    iget-object v4, p2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    iget v4, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 135
    const-string v4, "\u6b63\u5728\u4f30\u7b97"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1
    :goto_2
    new-instance v4, Lcom/boohee/food/FoodListActivity$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/boohee/food/FoodListActivity$2;-><init>(Lcom/boohee/food/FoodListActivity;Lcom/boohee/model/RecordPhoto;I)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 132
    :cond_2
    const-string v4, "\u62cd\u7167\u8bb0\u5f55"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    :cond_3
    iget v4, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    iget v4, p2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 137
    :cond_4
    iget v4, p2, Lcom/boohee/model/RecordPhoto;->calory:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/boohee/model/RecordPhoto;->calory:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5343\u5361"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v4, ""

    goto :goto_3
.end method

.method private getRecordView(ILcom/boohee/model/RecordFood;)Landroid/view/View;
    .locals 7
    .param p1, "index"    # I
    .param p2, "food"    # Lcom/boohee/model/RecordFood;

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p2, :cond_0

    .line 119
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030134

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "itemView":Landroid/view/View;
    const v5, 0x7f0e03eb

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 102
    .local v1, "rl_del":Landroid/widget/RelativeLayout;
    const v5, 0x7f0e00d3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    .local v4, "tv_name":Landroid/widget/TextView;
    const v5, 0x7f0e00d6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    .local v2, "tv_calory":Landroid/widget/TextView;
    const v5, 0x7f0e03ed

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    .local v3, "tv_count":Landroid/widget/TextView;
    iget-object v5, p2, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/boohee/model/RecordFood;->calory:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5343\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p2, Lcom/boohee/model/RecordFood;->amount:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v5, Lcom/boohee/food/FoodListActivity$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/boohee/food/FoodListActivity$1;-><init>(Lcom/boohee/food/FoodListActivity;Lcom/boohee/model/RecordFood;I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/boohee/food/FoodListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_record_food_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Lcom/boohee/food/FoodListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_record_photo_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    .line 70
    const-string v0, "key_time_type"

    invoke-virtual {p0, v0}, Lcom/boohee/food/FoodListActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/FoodListActivity;->mTimeType:I

    .line 71
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->ll_food_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 75
    iget v2, p0, Lcom/boohee/food/FoodListActivity;->mTimeType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 76
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->ctx:Landroid/content/Context;

    iget v3, p0, Lcom/boohee/food/FoodListActivity;->mTimeType:I

    invoke-static {v2, v3}, Lcom/boohee/utils/FoodUtils;->getDietName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/boohee/food/FoodListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordFood;

    invoke-direct {p0, v0, v2}, Lcom/boohee/food/FoodListActivity;->getRecordView(ILcom/boohee/model/RecordFood;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 82
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->ll_food_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 88
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordPhoto;

    invoke-direct {p0, v0, v2}, Lcom/boohee/food/FoodListActivity;->getPhotoDietItemView(ILcom/boohee/model/RecordPhoto;)Landroid/view/View;

    move-result-object v1

    .line 90
    .restart local v1    # "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 91
    iget-object v2, p0, Lcom/boohee/food/FoodListActivity;->ll_food_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private refreshTotal()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, "total":F
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v4

    :goto_1
    and-int/2addr v3, v6

    if-eqz v3, :cond_2

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->mRecordFoods:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/RecordFood;

    iget v3, v3, Lcom/boohee/model/RecordFood;->calory:F

    add-float/2addr v2, v3

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_0
    move v3, v5

    .line 203
    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    iget-object v6, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    move v6, v4

    :goto_4
    and-int/2addr v3, v6

    if-eqz v3, :cond_6

    .line 210
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 211
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->mRecordPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/RecordPhoto;

    .line 212
    .local v1, "recordPhoto":Lcom/boohee/model/RecordPhoto;
    iget v3, v1, Lcom/boohee/model/RecordPhoto;->status:I

    if-eq v3, v4, :cond_3

    .line 213
    iget v3, v1, Lcom/boohee/model/RecordPhoto;->calory:F

    add-float/2addr v2, v3

    .line 215
    :cond_3
    iget v3, v1, Lcom/boohee/model/RecordPhoto;->calory:F

    add-float/2addr v2, v3

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "recordPhoto":Lcom/boohee/model/RecordPhoto;
    :cond_4
    move v3, v5

    .line 209
    goto :goto_3

    :cond_5
    move v6, v5

    goto :goto_4

    .line 218
    :cond_6
    iget-object v3, p0, Lcom/boohee/food/FoodListActivity;->tv_total:Landroid/widget/TextView;

    const-string v6, "\u5c0f\u8ba1: %d\u5343\u5361"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "recordFoods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p3, "recordPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/FoodListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_record_food_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 51
    const-string v1, "key_record_photo_list"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 52
    const-string v1, "key_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/boohee/food/FoodListActivity;->setContentView(I)V

    .line 60
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 62
    invoke-direct {p0}, Lcom/boohee/food/FoodListActivity;->handleIntent()V

    .line 63
    invoke-direct {p0}, Lcom/boohee/food/FoodListActivity;->initView()V

    .line 64
    invoke-direct {p0}, Lcom/boohee/food/FoodListActivity;->refreshTotal()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 224
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 230
    return-void
.end method
