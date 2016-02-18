.class public Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
.super Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.source "SearchAddDietFragment.java"


# instance fields
.field dateTabLayout:Lcom/boohee/widgets/tablayout/BooheeTabLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e035e
    .end annotation
.end field

.field delayRunnable:Ljava/lang/Runnable;

.field dietTabLayout:Lcom/boohee/widgets/tablayout/BooheeTabLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e035f
    .end annotation
.end field

.field diet_keyboard:Lcom/booheee/view/keyboard/DietKeyboard;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e031a
    .end annotation
.end field

.field private mAmount:F

.field private mCalory:F

.field private mCode:Ljava/lang/String;

.field private mDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/widgets/tablayout/TabModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDietTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/widgets/tablayout/TabModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFoodName:Ljava/lang/String;

.field private mFoodUnitId:I

.field private mHandler:Landroid/os/Handler;

.field private mTimeType:I

.field private mUnitName:Ljava/lang/String;

.field private record_on:Ljava/lang/String;

.field private thumb_image_name:Ljava/lang/String;

.field txt_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0688
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$1;-><init>(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->delayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mAmount:F

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCalory:F

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mFoodUnitId:I

    return p1
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mUnitName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mTimeType:I

    return v0
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;Lcom/boohee/model/FoodWithUnit;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    .param p1, "x1"    # Lcom/boohee/model/FoodWithUnit;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->initDietKeyboard(Lcom/boohee/model/FoodWithUnit;)V

    return-void
.end method

.method private createEating()V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->showLoading()V

    .line 208
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->paramsWithFoodRecord()Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$3;-><init>(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->createEating(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 228
    return-void
.end method

.method private generateDateList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/widgets/tablayout/TabModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/widgets/tablayout/TabModel;>;"
    new-instance v5, Ljava/util/Date;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 125
    .local v5, "right":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 126
    .local v3, "left":Ljava/util/Date;
    const-string v6, "yyyy-MM-dd"

    invoke-static {v3, v6}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yyyy-MM-dd"

    invoke-static {v5, v7}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/boohee/utils/DateFormatUtils;->getEveryday(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "date":Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    new-instance v6, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v7, "\u4eca\u5929"

    invoke-direct {v6, v7, v0}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    new-instance v6, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v7, "M-d"

    invoke-static {v0, v7}, Lcom/boohee/utils/DateFormatUtils;->string2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v4
.end method

.method private getFoodShowWithLight(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$4;-><init>(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/boohee/api/FoodApi;->getFoodShowWithLight(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private initDietKeyboard(Lcom/boohee/model/FoodWithUnit;)V
    .locals 6
    .param p1, "food"    # Lcom/boohee/model/FoodWithUnit;

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 174
    iget v2, p1, Lcom/boohee/model/FoodWithUnit;->calory:F

    iput v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCalory:F

    .line 175
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->code:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCode:Ljava/lang/String;

    .line 176
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mFoodName:Ljava/lang/String;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, "units":Ljava/util/List;, "Ljava/util/List<Lcom/booheee/view/keyboard/Unit;>;"
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->units:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->units:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 179
    :cond_0
    new-instance v0, Lcom/booheee/view/keyboard/Unit;

    invoke-direct {v0}, Lcom/booheee/view/keyboard/Unit;-><init>()V

    .line 180
    .local v0, "foodUnit":Lcom/booheee/view/keyboard/Unit;
    const-string v2, "\u514b"

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mUnitName:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mUnitName:Ljava/lang/String;

    iput-object v2, v0, Lcom/booheee/view/keyboard/Unit;->unit_name:Ljava/lang/String;

    .line 182
    const-string v2, "1.0"

    iput-object v2, v0, Lcom/booheee/view/keyboard/Unit;->eat_weight:Ljava/lang/String;

    .line 183
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v0    # "foodUnit":Lcom/booheee/view/keyboard/Unit;
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->diet_keyboard:Lcom/booheee/view/keyboard/DietKeyboard;

    new-instance v3, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$2;

    invoke-direct {v3, p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment$2;-><init>(Lcom/boohee/one/ui/fragment/SearchAddDietFragment;)V

    invoke-virtual {v2, v3}, Lcom/booheee/view/keyboard/DietKeyboard;->setOnResultListener(Lcom/booheee/view/keyboard/OnDietResultListener;)V

    .line 197
    iget-object v3, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->diet_keyboard:Lcom/booheee/view/keyboard/DietKeyboard;

    iget v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCalory:F

    div-float v4, v2, v5

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/booheee/view/keyboard/Unit;

    invoke-virtual {v3, v5, v4, v2, v1}, Lcom/booheee/view/keyboard/DietKeyboard;->init(FFLcom/booheee/view/keyboard/Unit;Ljava/util/List;)V

    .line 198
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->thumb_image_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->thumb_image_name:Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->thumb_image_name:Ljava/lang/String;

    .line 201
    :cond_1
    return-void

    .line 185
    :cond_2
    iget-object v2, p1, Lcom/boohee/model/FoodWithUnit;->units:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private initTab()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    new-instance v1, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v2, "\u65e9\u9910"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    new-instance v1, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v2, "\u5348\u9910"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    new-instance v1, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v2, "\u665a\u9910"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    new-instance v1, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v2, "\u4e0a\u5348\u52a0\u9910"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    new-instance v1, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v2, "\u4e0b\u5348\u52a0\u9910"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    new-instance v1, Lcom/boohee/widgets/tablayout/TabModel;

    const-string v2, "\u665a\u4e0a\u52a0\u9910"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/widgets/tablayout/TabModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->dietTabLayout:Lcom/boohee/widgets/tablayout/BooheeTabLayout;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDietTypeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/tablayout/BooheeTabLayout;->setupChild(Ljava/util/List;)V

    .line 115
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->generateDateList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDateList:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->dateTabLayout:Lcom/boohee/widgets/tablayout/BooheeTabLayout;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/tablayout/BooheeTabLayout;->setupChild(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->delayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u6dfb\u52a0\u996e\u98df"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;-><init>()V

    .line 78
    .local v0, "addDietFragment":Lcom/boohee/one/ui/fragment/SearchAddDietFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCode:Ljava/lang/String;

    .line 79
    return-object v0
.end method

.method private paramsWithFoodRecord()Lcom/boohee/one/http/JsonParams;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 238
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->dietTabLayout:Lcom/boohee/widgets/tablayout/BooheeTabLayout;

    invoke-virtual {v1}, Lcom/boohee/widgets/tablayout/BooheeTabLayout;->getSelected()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mTimeType:I

    .line 239
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->dateTabLayout:Lcom/boohee/widgets/tablayout/BooheeTabLayout;

    invoke-virtual {v1}, Lcom/boohee/widgets/tablayout/BooheeTabLayout;->getSelected()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->record_on:Ljava/lang/String;

    .line 240
    const-string v1, "token"

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "unit_name"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mUnitName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "amount"

    iget v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mAmount:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 244
    const-string v1, "code"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "food_name"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mFoodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "food_unit_id"

    iget v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mFoodUnitId:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 247
    const-string v1, "calory"

    iget v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCalory:F

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 248
    const-string v1, "time_type"

    iget v2, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mTimeType:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 249
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e031b,
            0x7f0e031d
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tool_searchfood_canceladd"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 161
    :pswitch_2
    iget v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 162
    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u96f6"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->createEating()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x7f0e031b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v0, 0x7f0300f1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroyView()V

    .line 277
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->delayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDetach()V

    .line 151
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 100
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->initTitle()V

    .line 101
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->getFoodShowWithLight(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/SearchAddDietFragment;->initTab()V

    .line 103
    return-void
.end method
