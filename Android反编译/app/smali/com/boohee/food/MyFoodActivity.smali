.class public Lcom/boohee/food/MyFoodActivity;
.super Lcom/boohee/main/GestureActivity;
.source "MyFoodActivity.java"


# instance fields
.field CollectNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01bb
    .end annotation
.end field

.field CustomNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01bd
    .end annotation
.end field

.field UploadNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01bf
    .end annotation
.end field

.field private collectCount:I

.field private customCount:I

.field private uploadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/MyFoodActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/MyFoodActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/food/MyFoodActivity;->uploadCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/food/MyFoodActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/MyFoodActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/boohee/food/MyFoodActivity;->uploadCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/food/MyFoodActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/MyFoodActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/food/MyFoodActivity;->customCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/food/MyFoodActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/MyFoodActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/boohee/food/MyFoodActivity;->customCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/food/MyFoodActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/MyFoodActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/boohee/food/MyFoodActivity;->collectCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/food/MyFoodActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/MyFoodActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/boohee/food/MyFoodActivity;->collectCount:I

    return p1
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/MyFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private refreshCount()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshFoodFavoriteCount()V

    .line 62
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshCustomFoodCount()V

    .line 63
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshUploadFoodCount()V

    .line 64
    return-void
.end method

.method private refreshCustomFoodCount()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/MyFoodActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/food/MyFoodActivity$2;-><init>(Lcom/boohee/food/MyFoodActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/FoodApi;->getCustomFoodCount(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 94
    return-void
.end method

.method private refreshFoodFavoriteCount()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/MyFoodActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/boohee/food/MyFoodActivity$3;-><init>(Lcom/boohee/food/MyFoodActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/FoodApi;->getFoodFavoriteCount(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 109
    return-void
.end method

.method private refreshUploadFoodCount()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/food/MyFoodActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/food/MyFoodActivity$1;-><init>(Lcom/boohee/food/MyFoodActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/FoodApi;->getUploadFoodCount(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ba,
            0x7f0e01bc,
            0x7f0e01be,
            0x7f0e01c0
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_myfood_myfavorite"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/boohee/food/MyFoodActivity;->collectCount:I

    if-lez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/food/CollectionActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    :cond_0
    const v0, 0x7f070175

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_myfood_mycustom"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/boohee/food/MyFoodActivity;->customCount:I

    if-lez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/food/CustomFoodListActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 129
    :cond_1
    const v0, 0x7f0701b1

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_myfood_myupload"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/boohee/food/MyFoodActivity;->uploadCount:I

    if-lez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/food/ListUploadActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 138
    :cond_2
    const v0, 0x7f0705fc

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_myfood_upload"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/boohee/food/MyFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/food/UploadFoodActivity;->comeOnBaby(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01ba
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/boohee/food/MyFoodActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 50
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshCount()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 57
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/MyFoodEvent;)V
    .locals 1
    .param p1, "myFoodEvent"    # Lcom/boohee/one/event/MyFoodEvent;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/boohee/one/event/MyFoodEvent;->getFlag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshFoodFavoriteCount()V

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshCustomFoodCount()V

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-direct {p0}, Lcom/boohee/food/MyFoodActivity;->refreshUploadFoodCount()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
