.class public Lcom/boohee/food/AddCameraRecordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddCameraRecordActivity.java"


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"

.field private static final KEY_IMG_PATH:Ljava/lang/String; = "key_img_path"

.field private static final KEY_TIME_TYPE:Ljava/lang/String; = "key_time_type"


# instance fields
.field et_calory:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c1
    .end annotation
.end field

.field et_name:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c0
    .end annotation
.end field

.field private isAnalysis:Z

.field iv_photo:Luk/co/senab/photoview/PhotoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00bf
    .end annotation
.end field

.field private mCalory:I

.field private mImagePath:Ljava/lang/String;

.field private mInputCalory:Ljava/lang/String;

.field private mTimeType:I

.field private onUploadListener:Lboohee/lib/uploader/OnUploadListener;

.field private record_on:Ljava/lang/String;

.field toggle_bingo:Landroid/widget/ToggleButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->isAnalysis:Z

    .line 154
    new-instance v0, Lcom/boohee/food/AddCameraRecordActivity$2;

    invoke-direct {v0, p0}, Lcom/boohee/food/AddCameraRecordActivity$2;-><init>(Lcom/boohee/food/AddCameraRecordActivity;)V

    iput-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->onUploadListener:Lboohee/lib/uploader/OnUploadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/AddCameraRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCameraRecordActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mInputCalory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/food/AddCameraRecordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddCameraRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/food/AddCameraRecordActivity;->mInputCalory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/food/AddCameraRecordActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddCameraRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/boohee/food/AddCameraRecordActivity;->postWeight(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/food/AddCameraRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCameraRecordActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mTimeType:I

    return v0
.end method

.method static synthetic access$300(Lcom/boohee/food/AddCameraRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCameraRecordActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->toggle_bingo:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/food/AddCameraRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddCameraRecordActivity$1;-><init>(Lcom/boohee/food/AddCameraRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    return-void
.end method

.method private handleIntent()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "key_time_type"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCameraRecordActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mTimeType:I

    .line 92
    const-string v0, "key_date"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCameraRecordActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->record_on:Ljava/lang/String;

    .line 93
    const-string v0, "key_img_path"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCameraRecordActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mImagePath:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private initBingo()V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/boohee/food/AddCameraRecordActivity;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/AddCameraRecordActivity;->iv_photo:Luk/co/senab/photoview/PhotoView;

    const v3, 0x7f0d012e

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 144
    return-void
.end method

.method private postWeight(Ljava/lang/String;)V
    .locals 9
    .param p1, "qiniu_key"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->et_calory:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "calory":Ljava/lang/String;
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->et_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "name":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mCalory:I

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->toggle_bingo:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->isAnalysis:Z

    .line 202
    invoke-virtual {p0}, Lcom/boohee/food/AddCameraRecordActivity;->showLoading()V

    .line 203
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/food/AddCameraRecordActivity;->mTimeType:I

    iget-object v2, p0, Lcom/boohee/food/AddCameraRecordActivity;->record_on:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/boohee/food/AddCameraRecordActivity;->isAnalysis:Z

    iget v6, p0, Lcom/boohee/food/AddCameraRecordActivity;->mCalory:I

    new-instance v7, Lcom/boohee/food/AddCameraRecordActivity$3;

    iget-object v3, p0, Lcom/boohee/food/AddCameraRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v7, p0, v3}, Lcom/boohee/food/AddCameraRecordActivity$3;-><init>(Lcom/boohee/food/AddCameraRecordActivity;Landroid/content/Context;)V

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/boohee/api/RecordApi;->postDietPhotos(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    .line 221
    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeType"    # I
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/AddCameraRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "key_img_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00c3
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/food/AddCameraRecordActivity;->toggle_bingo:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->toggle_bingo:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00c3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCameraRecordActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 85
    invoke-direct {p0}, Lcom/boohee/food/AddCameraRecordActivity;->handleIntent()V

    .line 86
    invoke-direct {p0}, Lcom/boohee/food/AddCameraRecordActivity;->initBingo()V

    .line 87
    invoke-direct {p0}, Lcom/boohee/food/AddCameraRecordActivity;->addListener()V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 100
    invoke-virtual {p0}, Lcom/boohee/food/AddCameraRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/boohee/food/AddCameraRecordActivity;->uploadPhoto()V

    .line 113
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u98df\u7269\u56fe\u7247"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07c4
        :pswitch_0
    .end packed-switch
.end method

.method public uploadPhoto()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity;->mImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/food/AddCameraRecordActivity;->onUploadListener:Lboohee/lib/uploader/OnUploadListener;

    invoke-static {v0, v1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    .line 151
    return-void
.end method
