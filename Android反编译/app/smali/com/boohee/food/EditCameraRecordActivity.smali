.class public Lcom/boohee/food/EditCameraRecordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "EditCameraRecordActivity.java"


# static fields
.field private static final KEY_INDEX:Ljava/lang/String; = "key_index"

.field private static final KEY_RECORDPHOTO:Ljava/lang/String; = "key_recordphoto"


# instance fields
.field iv_photo:Luk/co/senab/photoview/PhotoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00bf
    .end annotation
.end field

.field ll_bingo_estimate:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d5
    .end annotation
.end field

.field private mIndex:I

.field private mRecordPhoto:Lcom/boohee/model/RecordPhoto;

.field tv_calory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d6
    .end annotation
.end field

.field tv_message:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d8
    .end annotation
.end field

.field tv_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d3
    .end annotation
.end field

.field tv_unit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c2
    .end annotation
.end field

.field view_divide_estimate:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d7
    .end annotation
.end field

.field view_divide_messsage:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d9
    .end annotation
.end field

.field view_divide_name:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/EditCameraRecordActivity;)Lcom/boohee/model/RecordPhoto;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/EditCameraRecordActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/food/EditCameraRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/EditCameraRecordActivity;

    .prologue
    .line 39
    iget v0, p0, Lcom/boohee/food/EditCameraRecordActivity;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/food/EditCameraRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/EditCameraRecordActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/boohee/food/EditCameraRecordActivity;->deletePhotoEating()V

    return-void
.end method

.method private deletePhotoEating()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/food/EditCameraRecordActivity;->showLoading()V

    .line 142
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v1, v1, Lcom/boohee/model/RecordPhoto;->id:I

    new-instance v2, Lcom/boohee/food/EditCameraRecordActivity$1;

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/EditCameraRecordActivity$1;-><init>(Lcom/boohee/food/EditCameraRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->deleteDietPhotos(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/boohee/food/EditCameraRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_recordphoto"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/RecordPhoto;

    iput-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    .line 83
    const-string v0, "key_index"

    invoke-virtual {p0, v0}, Lcom/boohee/food/EditCameraRecordActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/EditCameraRecordActivity;->mIndex:I

    .line 84
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 87
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v2, v2, Lcom/boohee/model/RecordPhoto;->photo_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->iv_photo:Luk/co/senab/photoview/PhotoView;

    const v4, 0x7f0d012e

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 89
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v1, v1, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v2, v2, Lcom/boohee/model/RecordPhoto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v0, v1, Lcom/boohee/model/RecordPhoto;->status:I

    .line 96
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u7b49\u5f85\u987e\u95ee\u4f30\u7b97\u70ed\u91cf..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->view_divide_messsage:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 92
    .end local v0    # "status":I
    :cond_2
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->view_divide_name:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 100
    .restart local v0    # "status":I
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 101
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v1, v1, Lcom/boohee/model/RecordPhoto;->calory:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->ll_bingo_estimate:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_calory:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v3, v3, Lcom/boohee/model/RecordPhoto;->calory:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5343\u5361"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v1, v1, Lcom/boohee/model/RecordPhoto;->consultor_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_unit:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7531"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v3, v3, Lcom/boohee/model/RecordPhoto;->consultor_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u987e\u95ee\u4f30\u7b97"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_4
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->view_divide_messsage:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v1, v1, Lcom/boohee/model/RecordPhoto;->comment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v1, v1, Lcom/boohee/model/RecordPhoto;->comment:Ljava/lang/String;

    goto :goto_2

    .line 111
    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 112
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->ll_bingo_estimate:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    const-string v2, "\u60a8\u9009\u62e9\u7684\u7167\u7247\u6709\u8bef\uff0c\u65e0\u6cd5\u4f30\u7b97"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_calory:Landroid/widget/TextView;

    const-string v2, "0\u5343\u5361"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v1, v1, Lcom/boohee/model/RecordPhoto;->consultor_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_unit:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7531"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v3, v3, Lcom/boohee/model/RecordPhoto;->consultor_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u987e\u95ee\u4f30\u7b97"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v1, v1, Lcom/boohee/model/RecordPhoto;->calory:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_9

    .line 121
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->ll_bingo_estimate:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->view_divide_estimate:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_calory:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget v3, v3, Lcom/boohee/model/RecordPhoto;->calory:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5343\u5361"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v1, v1, Lcom/boohee/model/RecordPhoto;->consultor_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utils/TextUtil;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 125
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_unit:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7531"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/food/EditCameraRecordActivity;->mRecordPhoto:Lcom/boohee/model/RecordPhoto;

    iget-object v3, v3, Lcom/boohee/model/RecordPhoto;->consultor_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u987e\u95ee\u4f30\u7b97"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->tv_message:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->view_divide_messsage:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 128
    :cond_9
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->view_divide_estimate:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->ll_bingo_estimate:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public static start(Landroid/content/Context;Lcom/boohee/model/RecordPhoto;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recordPhoto"    # Lcom/boohee/model/RecordPhoto;
    .param p2, "index"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/EditCameraRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_recordphoto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    const-string v1, "key_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00da
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 165
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/boohee/food/EditCameraRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/boohee/food/EditCameraRecordActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/food/EditCameraRecordActivity$2;-><init>(Lcom/boohee/food/EditCameraRecordActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00da
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/boohee/food/EditCameraRecordActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 77
    invoke-direct {p0}, Lcom/boohee/food/EditCameraRecordActivity;->handleIntent()V

    .line 78
    invoke-direct {p0}, Lcom/boohee/food/EditCameraRecordActivity;->initView()V

    .line 79
    return-void
.end method
