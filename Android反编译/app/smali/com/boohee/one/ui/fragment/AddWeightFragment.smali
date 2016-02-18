.class public Lcom/boohee/one/ui/fragment/AddWeightFragment;
.super Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.source "AddWeightFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;,
        Lcom/boohee/one/ui/fragment/AddWeightFragment$OnWeightDecimalWheelChangedListener;,
        Lcom/boohee/one/ui/fragment/AddWeightFragment$OnWeightIntegerWheelChangedListener;
    }
.end annotation


# static fields
.field private static final REQUEST_IMAGE:I = 0x0

.field private static final URL_PHOTOS_DELETE:Ljava/lang/String; = "/api/v2/photos/delete"

.field private static final URL_WEIGHTS_LATEST:Ljava/lang/String; = "/api/v2/weights/latest?token=%s"

.field private static final URL_WEIGHT_DATE:Ljava/lang/String; = "/api/v2/weights/date?record_on=%s&token=%s"

.field private static final URL_WEIGHT_DELETE:Ljava/lang/String; = "/api/v2/weights/delete"


# instance fields
.field private isLastest:Z

.field private isRefresh:Z

.field private iv_delete_camera:Landroid/widget/ImageView;

.field private iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mImagePath:Ljava/lang/String;

.field private onUploadListener:Lboohee/lib/uploader/OnUploadListener;

.field private photo_url:Ljava/lang/String;

.field private record_on:Ljava/lang/String;

.field private rl_left:Landroid/widget/RelativeLayout;

.field private rl_right:Landroid/widget/RelativeLayout;

.field private txt_cancel:Landroid/widget/TextView;

.field private txt_commit:Landroid/widget/TextView;

.field private txt_date:Landroid/widget/TextView;

.field private txt_del:Landroid/widget/TextView;

.field private txt_des:Landroid/widget/TextView;

.field private txt_is_add_des:Landroid/widget/TextView;

.field private txt_right:Landroid/widget/TextView;

.field private weight:Ljava/lang/String;

.field private wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

.field private wheel_weight_integer:Lkankan/wheel/widget/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isLastest:Z

    .line 193
    new-instance v0, Lcom/boohee/one/ui/fragment/AddWeightFragment$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment$1;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;)V

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->onUploadListener:Lboohee/lib/uploader/OnUploadListener;

    .line 232
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Lkankan/wheel/widget/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/fragment/AddWeightFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->showTakePhotoDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->photo_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/model/mine/WeightRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .param p1, "x1"    # Lcom/boohee/model/mine/WeightRecord;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->refreshWeight(Lcom/boohee/model/mine/WeightRecord;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/boohee/one/ui/fragment/AddWeightFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->deleteLocalWeightRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Lde/hdodenhof/circleimageview/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Lkankan/wheel/widget/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/fragment/AddWeightFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/fragment/AddWeightFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->finishCommitWeight()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isRefresh:Z

    return v0
.end method

.method static synthetic access$502(Lcom/boohee/one/ui/fragment/AddWeightFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isRefresh:Z

    return p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/boohee/one/ui/fragment/AddWeightFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mImagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_right:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/fragment/AddWeightFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->requestWeight()V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/fragment/AddWeightFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    return-object v0
.end method

.method private deleteLocalWeightRecord(Ljava/lang/String;)V
    .locals 4
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "latest_weight"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 546
    .local v0, "object":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    const-class v2, Lcom/boohee/model/LocalWeightRecord;

    invoke-static {v0, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/LocalWeightRecord;

    .line 548
    .local v1, "weightRecord":Lcom/boohee/model/LocalWeightRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/boohee/model/LocalWeightRecord;->record_on:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v3, "latest_weight"

    invoke-virtual {v2, v3}, Lcom/boohee/one/cache/FileCache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private finishCommitWeight()V
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getWeight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->dismissAllowingStateLoss()V

    .line 518
    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->changeListener:Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->changeListener:Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;

    invoke-interface {v0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;->onFinish()V

    .line 522
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setLatestWeight(F)V

    .line 524
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->saveWeightRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/LatestWeightEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/LatestWeightEvent;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/LatestWeightEvent;->setLatestWeight(F)Lcom/boohee/one/event/LatestWeightEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static newInstance()Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;-><init>()V

    .line 95
    .local v0, "addWeightFragment":Lcom/boohee/one/ui/fragment/AddWeightFragment;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isLastest:Z

    .line 96
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .locals 1
    .param p0, "record_date"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;-><init>()V

    .line 101
    .local v0, "addWeightFragment":Lcom/boohee/one/ui/fragment/AddWeightFragment;
    iput-object p0, v0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    .line 102
    return-object v0
.end method

.method private refreshWeight(Lcom/boohee/model/mine/WeightRecord;)V
    .locals 7
    .param p1, "weightRecord"    # Lcom/boohee/model/mine/WeightRecord;

    .prologue
    const v4, 0x7f020349

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 386
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 388
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1, v5}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 389
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_del:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_is_add_des:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    :cond_2
    :goto_0
    return-void

    .line 397
    :cond_3
    iget-object v1, p1, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 399
    .local v0, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/WeightPhoto;>;"
    iget-boolean v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isLastest:Z

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 400
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_del:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_is_add_des:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isLastest:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isLastest:Z

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/WeightPhoto;

    iget-object v1, v1, Lcom/boohee/model/mine/WeightPhoto;->photo_url:Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->photo_url:Ljava/lang/String;

    .line 408
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/WeightPhoto;

    iget-object v1, v1, Lcom/boohee/model/mine/WeightPhoto;->thumb_photo_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 409
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 411
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    :cond_5
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    const-string v2, "\u67e5\u770b\u5927\u56fe"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_del:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_is_add_des:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    :goto_2
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1e

    const/16 v4, 0x32

    invoke-static {v1, v2, v3, v4}, Lcom/boohee/utils/WheelUtils;->setCurrentItem(Lkankan/wheel/widget/WheelView;III)V

    .line 427
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->weight:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v5, v5}, Lcom/boohee/utils/WheelUtils;->setCurrentItem(Lkankan/wheel/widget/WheelView;III)V

    goto/16 :goto_0

    .line 403
    :cond_6
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_del:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_is_add_des:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 418
    :cond_7
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 419
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    :cond_8
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private requestLatestWeight()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_date:Landroid/widget/TextView;

    const-string v1, "\u4eca\u5929"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_right:Landroid/widget/TextView;

    const v1, 0x7f0201ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 345
    const-string v0, "/api/v2/weights/latest?token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$2;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$2;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 356
    return-void
.end method

.method private requestWeight()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_date:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4eca\u5929"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const-string v0, "/api/v2/weights/date?record_on=%s&token=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$3;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    goto :goto_1

    .line 378
    :cond_2
    new-instance v0, Lcom/boohee/modeldao/WeightRecordDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/WeightRecordDao;->select(Ljava/lang/String;)Lcom/boohee/model/mine/WeightRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->refreshWeight(Lcom/boohee/model/mine/WeightRecord;)V

    goto :goto_0
.end method

.method private saveWeightRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "weight"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {p2}, Lcom/boohee/utils/DateFormatUtils;->isToday(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    new-instance v0, Lcom/boohee/model/LocalWeightRecord;

    invoke-direct {v0, p1, p2}, Lcom/boohee/model/LocalWeightRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .local v0, "weightRecord":Lcom/boohee/model/LocalWeightRecord;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mCache:Lcom/boohee/one/cache/FileCache;

    const-string v2, "latest_weight"

    invoke-static {v0}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .end local v0    # "weightRecord":Lcom/boohee/model/LocalWeightRecord;
    :cond_0
    return-void
.end method

.method private showTakePhotoDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_camera"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v1, "max_select_count"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v1, "select_count_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    return-void
.end method


# virtual methods
.method public deletePhoto()V
    .locals 4

    .prologue
    .line 482
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 484
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->showLoading()V

    .line 487
    const-string v1, "/api/v2/photos/delete"

    new-instance v2, Lcom/boohee/one/ui/fragment/AddWeightFragment$5;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment$5;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public deleteWeight()V
    .locals 4

    .prologue
    .line 446
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 450
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "token"

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->showLoading()V

    .line 453
    const-string v1, "/api/v2/weights/delete"

    new-instance v2, Lcom/boohee/one/ui/fragment/AddWeightFragment$4;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment$4;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/one/http/client/RecordClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 471
    .end local v0    # "params":Lcom/boohee/one/http/JsonParams;
    :cond_1
    new-instance v1, Lcom/boohee/modeldao/WeightRecordDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/WeightRecordDao;->delete(Ljava/lang/String;)Z

    .line 472
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->dismissAllowingStateLoss()V

    .line 473
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/RefreshWeightEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/RefreshWeightEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    iget-boolean v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->isLastest:Z

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->record_on:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->requestLatestWeight()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->requestWeight()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 328
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 329
    if-nez p3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v1, "select_result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 331
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mImagePath:Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mImagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 334
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 115
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 116
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const v0, 0x7f0300d3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroy()V

    .line 557
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 558
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 562
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f0e031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_cancel:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0e031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_date:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0e031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_commit:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0e0333

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_del:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0e0311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0e0334

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_is_add_des:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0e06b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_right:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0e0328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/WheelView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    .line 136
    const v0, 0x7f0e0329

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lkankan/wheel/widget/WheelView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    .line 137
    const v0, 0x7f0e06b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->rl_left:Landroid/widget/RelativeLayout;

    .line 138
    const v0, 0x7f0e06b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->rl_right:Landroid/widget/RelativeLayout;

    .line 140
    const v0, 0x7f0e026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 141
    const v0, 0x7f0e032d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_del:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_commit:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->rl_left:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->rl_right:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_weight:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->iv_delete_camera:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->txt_des:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment$ClickListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;Lcom/boohee/one/ui/fragment/AddWeightFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x1e

    const/16 v3, 0x95

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/WheelUtils;->setWheelNumericText(Lkankan/wheel/widget/WheelView;Landroid/content/Context;II)V

    .line 153
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/boohee/utils/WheelUtils;->getWeightDecimal()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/boohee/utils/WheelUtils;->setWheelArrayText(Lkankan/wheel/widget/WheelView;Landroid/content/Context;[Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_integer:Lkankan/wheel/widget/WheelView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$OnWeightIntegerWheelChangedListener;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment$OnWeightIntegerWheelChangedListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;)V

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 156
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->wheel_weight_decimal:Lkankan/wheel/widget/WheelView;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddWeightFragment$OnWeightDecimalWheelChangedListener;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/AddWeightFragment$OnWeightDecimalWheelChangedListener;-><init>(Lcom/boohee/one/ui/fragment/AddWeightFragment;)V

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V

    .line 157
    return-void
.end method

.method public uploadPhoto()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->mImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddWeightFragment;->onUploadListener:Lboohee/lib/uploader/OnUploadListener;

    invoke-static {v0, v1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    .line 439
    return-void
.end method
