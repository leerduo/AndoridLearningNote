.class public Lcom/boohee/one/video/ui/NewLessonDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "NewLessonDetailActivity.java"


# static fields
.field public static final LESSON_ID:Ljava/lang/String; = "LESSON_ID"


# instance fields
.field private final DOWN_LOAD_RETRY:I

.field private audioUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bottomLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0180
    .end annotation
.end field

.field private downloadRetry:I

.field private fileCache:Lcom/boohee/one/cache/FileCache;

.field private index:I

.field private isDownloaded:Z

.field ivQuestion:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0701
    .end annotation
.end field

.field ivTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0179
    .end annotation
.end field

.field layout:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00db
    .end annotation
.end field

.field private lesson:Lcom/boohee/one/video/entity/Lesson;

.field private lessonId:I

.field llLessonNumber:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0703
    .end annotation
.end field

.field llLessonTime:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e06ff
    .end annotation
.end field

.field private mentions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;"
        }
    .end annotation
.end field

.field progressBarDownload:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0182
    .end annotation
.end field

.field recyclerViewTrain:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0513
    .end annotation
.end field

.field recyclerViewWarmUp:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0511
    .end annotation
.end field

.field private trainAdapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

.field tvDownloadStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0183
    .end annotation
.end field

.field tvLessonCalory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0702
    .end annotation
.end field

.field tvLessonNumber:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0700
    .end annotation
.end field

.field tvLessonTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0704
    .end annotation
.end field

.field tvMentionDes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017f
    .end annotation
.end field

.field tvStart:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0181
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0266
    .end annotation
.end field

.field tvTrain:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0512
    .end annotation
.end field

.field tvWarmUp:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0510
    .end annotation
.end field

.field private videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

.field private videoUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private warmUpAdapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoUrls:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->audioUrls:Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadRetry:I

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->DOWN_LOAD_RETRY:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isDownloaded:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->mentions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->performDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadFinish()V

    return-void
.end method

.method static synthetic access$402(Lcom/boohee/one/video/ui/NewLessonDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadRetry:I

    return p1
.end method

.method static synthetic access$404(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadRetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->download()V

    return-void
.end method

.method private checkDownloadEnv()V
    .locals 6

    .prologue
    .line 260
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isDownloaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/utils/HttpUtils;->isWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->performDownload()V

    .line 278
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f0701ee

    invoke-virtual {p0, v2}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v5, v5, Lcom/boohee/one/video/entity/Lesson;->stream:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 265
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const v1, 0x7f07001c

    new-instance v2, Lcom/boohee/one/video/ui/NewLessonDetailActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity$2;-><init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Lcom/boohee/widgets/LightAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 271
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/boohee/one/video/ui/NewLessonDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity$3;-><init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 277
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    goto :goto_0
.end method

.method public static comeOn(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lessonId"    # I

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/NewLessonDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LESSON_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method private download()V
    .locals 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;

    invoke-direct {v4, p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity$4;-><init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFiles(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    .line 316
    return-void
.end method

.method private downloadFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/api/SportApi;->postLessonProgress(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 321
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 322
    iput-boolean v3, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isDownloaded:Z

    .line 323
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;)V

    .line 328
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->finish()V

    .line 330
    :cond_0
    return-void
.end method

.method private getLessonData()V
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lessonId:I

    if-gez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->showLoading()V

    .line 151
    iget v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lessonId:I

    new-instance v1, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity$1;-><init>(Lcom/boohee/one/video/ui/NewLessonDetailActivity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/boohee/one/video/api/SportApi;->getExerciseDetail(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 177
    :try_start_0
    const-class v1, Lcom/boohee/one/video/entity/Lesson;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/video/entity/Lesson;

    iput-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    .line 178
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->mentions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 179
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->mentions:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->mentions_warm:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->mentions:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->mentions_train:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->mentions:Ljava/util/List;

    iput-object v2, v1, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    .line 182
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->parseDownloadPath()V

    .line 183
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->refreshView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LESSON_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lessonId:I

    .line 144
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->layout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewWarmUp:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 127
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 128
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewWarmUp:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewWarmUp:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 131
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 132
    .local v1, "manager2":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewTrain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 133
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewTrain:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 134
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewTrain:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 136
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v6}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 137
    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 138
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseDownloadPath()V
    .locals 6

    .prologue
    .line 190
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    if-nez v4, :cond_1

    .line 211
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget v2, v4, Lcom/boohee/one/video/entity/Mention;->id:I

    .line 195
    .local v2, "mentionId":I
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v4, Lcom/boohee/one/video/entity/Mention;->video_url:Ljava/lang/String;

    .line 196
    .local v3, "videoPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget-object v0, v4, Lcom/boohee/one/video/entity/Mention;->audio_url:Ljava/lang/String;

    .line 198
    .local v0, "audioPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoUrls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 203
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->audioUrls:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_3
    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v5, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v5, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 208
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isDownloaded:Z

    .line 193
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private performDownload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isDownloaded:Z

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->downloadFinish()V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->download()V

    goto :goto_0
.end method

.method private refreshView()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions_warm:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions_train:Ljava/util/List;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->isDownloaded:Z

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 230
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->pic_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 232
    new-instance v0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->mentions_warm:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->warmUpAdapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    .line 233
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewWarmUp:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->warmUpAdapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 235
    new-instance v0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->mentions_train:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->trainAdapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    .line 236
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->recyclerViewTrain:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->trainAdapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 238
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvLessonNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->today_calorie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvLessonCalory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->basic_calorie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvLessonTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->total_time:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvMentionDes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->description:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0180,
            0x7f0e0701
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->checkDownloadEnv()V

    goto :goto_0

    .line 254
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "http://shop.boohee.com/store/pages/befit"

    invoke-static {v0, v1, v2}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0180 -> :sswitch_0
        0x7f0e0701 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f03019b

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->setContentView(I)V

    .line 117
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 118
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    .line 119
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->initView()V

    .line 120
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->initData()V

    .line 121
    invoke-direct {p0}, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->getLessonData()V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 334
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 335
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    invoke-virtual {v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/NewLessonDetailActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 336
    return-void
.end method
