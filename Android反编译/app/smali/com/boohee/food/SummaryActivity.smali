.class public Lcom/boohee/food/SummaryActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SummaryActivity.java"


# static fields
.field public static final KEY_BREAKFAST:Ljava/lang/String; = "KEY_BREAKFAST"

.field public static final KEY_BREAKFAST_PHOTO:Ljava/lang/String; = "KEY_BREAKFAST_PHOTO"

.field private static final KEY_DATE:Ljava/lang/String; = "KEY_DATE"

.field public static final KEY_DINNER:Ljava/lang/String; = "KEY_DINNER"

.field public static final KEY_DINNER_PHOTO:Ljava/lang/String; = "KEY_DINNER_PHOTO"

.field public static final KEY_LUNCH:Ljava/lang/String; = "KEY_LUNCH"

.field public static final KEY_LUNCH_PHOTO:Ljava/lang/String; = "KEY_LUNCH_PHOTO"

.field public static final KEY_SNACKS_BREAKFAST:Ljava/lang/String; = "KEY_SNACKS_BREAKFAST"

.field public static final KEY_SNACKS_BREAKFAST_PHOTO:Ljava/lang/String; = "KEY_SNACKS_BREAKFAST_PHOTO"

.field public static final KEY_SNACKS_DINNER:Ljava/lang/String; = "KEY_SNACKS_DINNER"

.field public static final KEY_SNACKS_DINNER_PHOTO:Ljava/lang/String; = "KEY_SNACKS_DINNER_PHOTO"

.field public static final KEY_SNACKS_LUNCH:Ljava/lang/String; = "KEY_SNACKS_LUNCH"

.field public static final KEY_SNACKS_LUNCH_PHOTO:Ljava/lang/String; = "KEY_SNACKS_LUNCH_PHOTO"

.field public static final KEY_SPORT:Ljava/lang/String; = "KEY_SPORT"

.field public static final TIME_TYPE_BREAKFAST:I = 0x1

.field public static final TIME_TYPE_DINNER:I = 0x3

.field public static final TIME_TYPE_LUNCH:I = 0x2

.field public static final TIME_TYPE_SNACKS_BREAKFAST:I = 0x6

.field public static final TIME_TYPE_SNACKS_DINNER:I = 0x8

.field public static final TIME_TYPE_SNACKS_LUNCH:I = 0x7


# instance fields
.field private breakfastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private breakfastPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private dinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private dinnerPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field ll_card_breakfast:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0100
    .end annotation
.end field

.field ll_card_dinner:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0104
    .end annotation
.end field

.field ll_card_lunch:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0102
    .end annotation
.end field

.field ll_card_snacks_breakfast:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0101
    .end annotation
.end field

.field ll_card_snacks_dinner:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0105
    .end annotation
.end field

.field ll_card_snacks_lunch:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0103
    .end annotation
.end field

.field ll_card_sport:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0106
    .end annotation
.end field

.field private lunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private lunchPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private record_on:Ljava/lang/String;

.field private snacksBreakfastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private snacksBreakfastPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private snacksDinnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private snacksDinnerPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private snacksLunchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field

.field private snacksLunchPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private sportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation
.end field

.field sv_main:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e023d
    .end annotation
.end field

.field private totalDietCalory:F

.field private totalSportCalory:F

.field tv_date:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e023e
    .end annotation
.end field

.field tv_diet_calory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0777
    .end annotation
.end field

.field tv_sport_calory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e077a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "KEY_DATE"

    invoke-virtual {p0, v0}, Lcom/boohee/food/SummaryActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->record_on:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_BREAKFAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->breakfastList:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_LUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->lunchList:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_DINNER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->dinnerList:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SNACKS_BREAKFAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SNACKS_LUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksLunchList:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SNACKS_DINNER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksDinnerList:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->sportList:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_BREAKFAST_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_LUNCH_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->lunchPhotoList:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_DINNER_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SNACKS_BREAKFAST_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SNACKS_LUNCH_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_SNACKS_DINNER_PHOTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method private initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 10
    .param p1, "time_type"    # I
    .param p4, "ll_card"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "foodRcordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p3, "recordPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 218
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    const v6, 0x7f0e06b8

    invoke-virtual {p4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 220
    .local v5, "tv_time_type":Landroid/widget/TextView;
    const v6, 0x7f0e0381

    invoke-virtual {p4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 221
    .local v4, "tv_des":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/boohee/food/SummaryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v6, p1}, Lcom/boohee/utils/FoodUtils;->getDietName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 224
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/RecordFood;

    .line 225
    .local v0, "food":Lcom/boohee/model/RecordFood;
    const-string v6, "%1$s%2$s%3$s, "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v0, Lcom/boohee/model/RecordFood;->amount:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    iget v6, p0, Lcom/boohee/food/SummaryActivity;->totalDietCalory:F

    iget v7, v0, Lcom/boohee/model/RecordFood;->calory:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/boohee/food/SummaryActivity;->totalDietCalory:F

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "food":Lcom/boohee/model/RecordFood;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 230
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordPhoto;

    .line 231
    .local v2, "photo":Lcom/boohee/model/RecordPhoto;
    const-string v7, "%1$s, "

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v6, v2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "\u62cd\u7167\u8bb0\u5f55"

    :goto_2
    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    iget v6, v2, Lcom/boohee/model/RecordPhoto;->status:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 233
    iget v6, p0, Lcom/boohee/food/SummaryActivity;->totalDietCalory:F

    iget v7, v2, Lcom/boohee/model/RecordPhoto;->calory:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/boohee/food/SummaryActivity;->totalDietCalory:F

    .line 229
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    :cond_4
    iget-object v6, v2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    goto :goto_2

    .line 236
    .end local v2    # "photo":Lcom/boohee/model/RecordPhoto;
    :cond_5
    const/4 v6, 0x0

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .end local v1    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "tv_des":Landroid/widget/TextView;
    .end local v5    # "tv_time_type":Landroid/widget/TextView;
    :goto_3
    return-void

    .line 238
    :cond_6
    const/16 v6, 0x8

    invoke-virtual {p4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method private initSportCart(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 10
    .param p2, "ll_card"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    const/4 v9, 0x0

    .line 249
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 250
    invoke-virtual {p2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    const v5, 0x7f0e06b8

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 252
    .local v4, "tv_time_type":Landroid/widget/TextView;
    const v5, 0x7f0e0381

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 253
    .local v3, "tv_des":Landroid/widget/TextView;
    const v5, 0x7f0704df

    invoke-virtual {p0, v5}, Lcom/boohee/food/SummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    .line 257
    .local v2, "sport":Lcom/boohee/model/RecordSport;
    const-string v5, "%1$s%2$.1f%3$s, "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget v8, v2, Lcom/boohee/model/RecordSport;->duration:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v2, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    iget v5, p0, Lcom/boohee/food/SummaryActivity;->totalSportCalory:F

    iget v6, v2, Lcom/boohee/model/RecordSport;->calory:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/boohee/food/SummaryActivity;->totalSportCalory:F

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "sport":Lcom/boohee/model/RecordSport;
    :cond_0
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v9, v5}, Ljava/lang/StringBuffer;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "tv_des":Landroid/widget/TextView;
    .end local v4    # "tv_time_type":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 262
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private share()V
    .locals 10

    .prologue
    .line 191
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03026b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 192
    .local v4, "view_share_summary":Landroid/view/View;
    const v5, 0x7f0e020b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 193
    .local v3, "iv_content":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/boohee/food/SummaryActivity;->sv_main:Landroid/widget/ScrollView;

    invoke-static {v5}, Lcom/boohee/utils/BitmapUtil;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, "bitmap_main":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    invoke-static {v4}, Lcom/boohee/utils/BitmapUtil;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, "bitmap_share":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/boohee/food/SummaryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-nez v1, :cond_3

    move-object v5, v0

    :goto_0
    const-string v7, "SHARE_4_LINECHART"

    invoke-static {v6, v5, v7}, Lcom/boohee/utils/FileUtil;->getPNGImagePath(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    iget-object v5, p0, Lcom/boohee/food/SummaryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v6, "\u5206\u4eab"

    const-string v7, ""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v5, v6, v7, v8}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    :cond_2
    return-void

    .end local v2    # "filePath":Ljava/lang/String;
    :cond_3
    move-object v5, v1

    .line 196
    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "breakfastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p3, "lunchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p4, "dinnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p5, "snacksBreakfastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p6, "snacksLunchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p7, "snacksDinnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordFood;>;"
    .local p8, "sportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    .local p9, "breakfastPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    .local p10, "lunchPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    .local p11, "dinnerPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    .local p12, "snacksBreakfastPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    .local p13, "snacksLunchPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    .local p14, "snacksDinnerPhotoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/RecordPhoto;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/food/SummaryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v1, "starter":Landroid/content/Intent;
    const-string v2, "KEY_DATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "KEY_BREAKFAST"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 117
    const-string v2, "KEY_LUNCH"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    const-string v2, "KEY_DINNER"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    const-string v2, "KEY_SNACKS_BREAKFAST"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 120
    const-string v2, "KEY_SNACKS_LUNCH"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    const-string v2, "KEY_SNACKS_DINNER"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 122
    const-string v2, "KEY_SPORT"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    const-string v2, "KEY_BREAKFAST_PHOTO"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    const-string v2, "KEY_LUNCH_PHOTO"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    const-string v2, "KEY_DINNER_PHOTO"

    invoke-virtual {v1, v2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    const-string v2, "KEY_SNACKS_BREAKFAST_PHOTO"

    invoke-virtual {v1, v2, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    const-string v2, "KEY_SNACKS_LUNCH_PHOTO"

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    const-string v2, "KEY_SNACKS_DINNER_PHOTO"

    move-object/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Lcom/boohee/food/SummaryActivity;->setContentView(I)V

    .line 136
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 137
    invoke-direct {p0}, Lcom/boohee/food/SummaryActivity;->handleIntent()V

    .line 138
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->tv_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->breakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/food/SummaryActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/food/SummaryActivity;->ll_card_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/SummaryActivity;->initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 140
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->lunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/food/SummaryActivity;->lunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/food/SummaryActivity;->ll_card_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/SummaryActivity;->initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 141
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->dinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/food/SummaryActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/food/SummaryActivity;->ll_card_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/SummaryActivity;->initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 142
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/food/SummaryActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/food/SummaryActivity;->ll_card_snacks_breakfast:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/SummaryActivity;->initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 143
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->snacksLunchList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/food/SummaryActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/food/SummaryActivity;->ll_card_snacks_lunch:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/SummaryActivity;->initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 144
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->snacksDinnerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/food/SummaryActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/food/SummaryActivity;->ll_card_snacks_dinner:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/SummaryActivity;->initDietCart(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 145
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->sportList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/boohee/food/SummaryActivity;->ll_card_sport:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/boohee/food/SummaryActivity;->initSportCart(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    .line 146
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->tv_diet_calory:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/food/SummaryActivity;->totalDietCalory:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->tv_sport_calory:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/food/SummaryActivity;->totalSportCalory:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 171
    invoke-virtual {p0}, Lcom/boohee/food/SummaryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0018

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 269
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->breakfastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->lunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->dinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksBreakfastList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksLunchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksDinnerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->sportList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->breakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->lunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->dinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksBreakfastPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksLunchPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->snacksDinnerPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/food/SummaryActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "tool_foodandsport_abstractshare"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/boohee/food/SummaryActivity;->share()V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x7f0e07c7
        :pswitch_0
    .end packed-switch
.end method
