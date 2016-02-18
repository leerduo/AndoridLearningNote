.class public Lcom/boohee/one/ui/fragment/AddSportFragment;
.super Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.source "AddSportFragment.java"


# static fields
.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_EDIT:I = 0x1


# instance fields
.field iv_sport:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0330
    .end annotation
.end field

.field private mIndex:I

.field private mRecordSport:Lcom/boohee/model/RecordSport;

.field private mType:I

.field sport_keyboard:Lcom/booheee/view/keyboard/SportKeyboard;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0331
    .end annotation
.end field

.field txt_calory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e030a
    .end annotation
.end field

.field txt_delete:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e030c
    .end annotation
.end field

.field txt_name:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0309
    .end annotation
.end field

.field txt_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0688
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/fragment/AddSportFragment;)Lcom/boohee/model/RecordSport;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddSportFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/fragment/AddSportFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddSportFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->deleteActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/fragment/AddSportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/fragment/AddSportFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mIndex:I

    return v0
.end method

.method private createActivity()V
    .locals 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/boohee/modeldao/SportRecordDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/boohee/modeldao/SportRecordDao;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "dao":Lcom/boohee/modeldao/SportRecordDao;
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    invoke-virtual {v0, v2}, Lcom/boohee/modeldao/SportRecordDao;->add(Lcom/boohee/model/RecordSport;)Lcom/boohee/model/RecordSport;

    move-result-object v1

    .line 169
    .local v1, "record":Lcom/boohee/model/RecordSport;
    if-eqz v1, :cond_1

    .line 170
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/event/SportEvent;

    invoke-direct {v3}, Lcom/boohee/one/event/SportEvent;-><init>()V

    invoke-virtual {v3, v1}, Lcom/boohee/one/event/SportEvent;->setRecordSport(Lcom/boohee/model/RecordSport;)Lcom/boohee/one/event/SportEvent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/boohee/one/event/SportEvent;->setEditType(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    if-eqz v2, :cond_2

    .line 173
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/event/AddFinishAnimEvent;

    invoke-direct {v3}, Lcom/boohee/one/event/AddFinishAnimEvent;-><init>()V

    iget-object v4, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget-object v4, v4, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/boohee/one/event/AddFinishAnimEvent;->setThumb_image_name(Ljava/lang/String;)Lcom/boohee/one/event/AddFinishAnimEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private deleteActivity()V
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->showLoading()V

    .line 199
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget v0, v0, Lcom/boohee/model/RecordSport;->id:I

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/ui/fragment/AddSportFragment$3;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/fragment/AddSportFragment$3;-><init>(Lcom/boohee/one/ui/fragment/AddSportFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->deleteActivity(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/boohee/modeldao/SportRecordDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/SportRecordDao;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/SportRecordDao;->delete(Lcom/boohee/model/RecordSport;)Z

    .line 215
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->dismissAllowingStateLoss()V

    .line 216
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/SportEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/SportEvent;-><init>()V

    iget v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/SportEvent;->setIndex(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/SportEvent;->setEditType(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getlatestWeight()F
    .locals 3

    .prologue
    .line 107
    const/high16 v0, 0x425c0000    # 55.0f

    .line 108
    .local v0, "weight":F
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 109
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v0

    .line 111
    :cond_0
    return v0
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 119
    iget v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mType:I

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u6dfb\u52a0\u8fd0\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->txt_delete:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget-object v1, v1, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->iv_sport:Landroid/widget/ImageView;

    const v3, 0x7f02032d

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->txt_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget-object v1, v1, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getlatestWeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boohee/model/RecordSport;->calcCalory(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/boohee/model/RecordSport;->calory:F

    .line 129
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->txt_calory:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getlatestWeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/boohee/model/RecordSport;->calcCalory(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void

    .line 122
    :cond_1
    iget v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u8fd0\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->txt_delete:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newInstance(IILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddSportFragment;
    .locals 1
    .param p0, "type"    # I
    .param p1, "index"    # I
    .param p2, "recordSport"    # Lcom/boohee/model/RecordSport;

    .prologue
    .line 65
    new-instance v0, Lcom/boohee/one/ui/fragment/AddSportFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/AddSportFragment;-><init>()V

    .line 66
    .local v0, "addSportFragment":Lcom/boohee/one/ui/fragment/AddSportFragment;
    iput p0, v0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mType:I

    .line 67
    iput p1, v0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mIndex:I

    .line 68
    iput-object p2, v0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    .line 69
    return-object v0
.end method

.method public static newInstance(ILcom/boohee/model/RecordSport;)Lcom/boohee/one/ui/fragment/AddSportFragment;
    .locals 1
    .param p0, "type"    # I
    .param p1, "recordSport"    # Lcom/boohee/model/RecordSport;

    .prologue
    .line 73
    new-instance v0, Lcom/boohee/one/ui/fragment/AddSportFragment;

    invoke-direct {v0}, Lcom/boohee/one/ui/fragment/AddSportFragment;-><init>()V

    .line 74
    .local v0, "addSportFragment":Lcom/boohee/one/ui/fragment/AddSportFragment;
    iput p0, v0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mType:I

    .line 75
    iput-object p1, v0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    .line 76
    return-object v0
.end method

.method private updateActivity()V
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    if-nez v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/boohee/modeldao/SportRecordDao;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/SportRecordDao;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "dao":Lcom/boohee/modeldao/SportRecordDao;
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/SportRecordDao;->update(Lcom/boohee/model/RecordSport;)Z

    .line 186
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    if-eqz v1, :cond_1

    .line 187
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/SportEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/SportEvent;-><init>()V

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/SportEvent;->setRecordSport(Lcom/boohee/model/RecordSport;)Lcom/boohee/one/event/SportEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/SportEvent;->setEditType(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/event/AddFinishAnimEvent;

    invoke-direct {v2}, Lcom/boohee/one/event/AddFinishAnimEvent;-><init>()V

    iget-object v3, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget-object v3, v3, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/boohee/one/event/AddFinishAnimEvent;->setThumb_image_name(Ljava/lang/String;)Lcom/boohee/one/event/AddFinishAnimEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e031b,
            0x7f0e031d,
            0x7f0e030c
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 136
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 139
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget v0, v0, Lcom/boohee/model/RecordSport;->duration:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 140
    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u96f6"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tool_foodandsport_sport"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mType:I

    if-nez v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->createActivity()V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->updateActivity()V

    goto :goto_0

    .line 151
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/boohee/one/ui/fragment/AddSportFragment$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/fragment/AddSportFragment$2;-><init>(Lcom/boohee/one/ui/fragment/AddSportFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e030c -> :sswitch_2
        0x7f0e031b -> :sswitch_0
        0x7f0e031d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const v0, 0x7f0300d2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroy()V

    .line 229
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroyView()V

    .line 223
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public onEventMainThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->initTitle()V

    .line 96
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->sport_keyboard:Lcom/booheee/view/keyboard/SportKeyboard;

    new-instance v1, Lcom/boohee/one/ui/fragment/AddSportFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/fragment/AddSportFragment$1;-><init>(Lcom/boohee/one/ui/fragment/AddSportFragment;)V

    invoke-virtual {v0, v1}, Lcom/booheee/view/keyboard/SportKeyboard;->setOnResultListener(Lcom/booheee/view/keyboard/OnSportResultListener;)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->sport_keyboard:Lcom/booheee/view/keyboard/SportKeyboard;

    iget-object v1, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget v1, v1, Lcom/boohee/model/RecordSport;->duration:F

    iget-object v2, p0, Lcom/boohee/one/ui/fragment/AddSportFragment;->mRecordSport:Lcom/boohee/model/RecordSport;

    iget v2, v2, Lcom/boohee/model/RecordSport;->mets:F

    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/AddSportFragment;->getlatestWeight()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/booheee/view/keyboard/SportKeyboard;->init(FFF)V

    .line 104
    return-void
.end method
