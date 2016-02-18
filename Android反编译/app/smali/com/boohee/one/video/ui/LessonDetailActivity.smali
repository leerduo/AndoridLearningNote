.class public Lcom/boohee/one/video/ui/LessonDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "LessonDetailActivity.java"


# static fields
.field public static final LESSON_ID:Ljava/lang/String; = "LESSON_ID"


# instance fields
.field private final DOWN_LOAD_RETRY:I

.field private adapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

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

.field ivTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0179
    .end annotation
.end field

.field private lesson:Lcom/boohee/one/video/entity/Lesson;

.field private lessonId:I

.field progressBarDownload:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0182
    .end annotation
.end field

.field progressBarHorizontal:Lcom/boohee/one/video/view/HorizontalProgressView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017b
    .end annotation
.end field

.field private progressTime:Ljava/lang/String;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017e
    .end annotation
.end field

.field private spannableString:Landroid/text/SpannableString;

.field tvCalory:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d6
    .end annotation
.end field

.field tvDownloadStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0183
    .end annotation
.end field

.field tvMentionDes:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017f
    .end annotation
.end field

.field tvMentonCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017d
    .end annotation
.end field

.field tvSportTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017c
    .end annotation
.end field

.field tvStart:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0181
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e017a
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoUrls:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->audioUrls:Ljava/util/List;

    .line 93
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadRetry:I

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->DOWN_LOAD_RETRY:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->isDownloaded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/LessonDetailActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/LessonDetailActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/LessonDetailActivity;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/LessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->performDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/video/ui/LessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadFinish()V

    return-void
.end method

.method static synthetic access$402(Lcom/boohee/one/video/ui/LessonDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadRetry:I

    return p1
.end method

.method static synthetic access$404(Lcom/boohee/one/video/ui/LessonDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;

    .prologue
    .line 54
    iget v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadRetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/boohee/one/video/ui/LessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/LessonDetailActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->download()V

    return-void
.end method

.method private checkDownloadEnv()V
    .locals 6

    .prologue
    .line 240
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->isDownloaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/utils/HttpUtils;->isWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->performDownload()V

    .line 258
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f0701ee

    invoke-virtual {p0, v2}, Lcom/boohee/one/video/ui/LessonDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v5, v5, Lcom/boohee/one/video/entity/Lesson;->stream:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 245
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const v1, 0x7f07001c

    new-instance v2, Lcom/boohee/one/video/ui/LessonDetailActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/video/ui/LessonDetailActivity$2;-><init>(Lcom/boohee/one/video/ui/LessonDetailActivity;Lcom/boohee/widgets/LightAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 251
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/boohee/one/video/ui/LessonDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/LessonDetailActivity$3;-><init>(Lcom/boohee/one/video/ui/LessonDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 257
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    goto :goto_0
.end method

.method public static comeOn(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lessonId"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/LessonDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LESSON_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method private download()V
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/boohee/one/video/ui/LessonDetailActivity$4;

    invoke-direct {v4, p0}, Lcom/boohee/one/video/ui/LessonDetailActivity$4;-><init>(Lcom/boohee/one/video/ui/LessonDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFiles(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    .line 297
    return-void
.end method

.method private downloadFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 300
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/api/SportApi;->postLessonProgress(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 302
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 303
    iput-boolean v3, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->isDownloaded:Z

    .line 304
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;)V

    .line 309
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->finish()V

    .line 311
    :cond_0
    return-void
.end method

.method private getLessonData()V
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lessonId:I

    if-gez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->showLoading()V

    .line 137
    iget v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lessonId:I

    new-instance v1, Lcom/boohee/one/video/ui/LessonDetailActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/video/ui/LessonDetailActivity$1;-><init>(Lcom/boohee/one/video/ui/LessonDetailActivity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/boohee/one/video/api/SportApi;->getLessonDetail(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 162
    :try_start_0
    const-class v1, Lcom/boohee/one/video/entity/Lesson;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/video/entity/Lesson;

    iput-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    .line 163
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->parseDownloadPath()V

    .line 164
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->refreshView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LESSON_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lessonId:I

    .line 130
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 119
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 120
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 121
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 122
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    const/16 v3, 0x2ee

    const/16 v4, 0x1f4

    invoke-static {v1, v2, v3, v4}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 123
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 124
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
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
    .line 171
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v4, :cond_1

    .line 192
    :cond_0
    return-void

    .line 174
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget v2, v4, Lcom/boohee/one/video/entity/Mention;->id:I

    .line 176
    .local v2, "mentionId":I
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v4, Lcom/boohee/one/video/entity/Mention;->video_url:Ljava/lang/String;

    .line 177
    .local v3, "videoPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget-object v0, v4, Lcom/boohee/one/video/entity/Mention;->audio_url:Ljava/lang/String;

    .line 179
    .local v0, "audioPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoUrls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 184
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->audioUrls:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_3
    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v5, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/boohee/one/video/ui/LessonDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v5, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/boohee/one/video/ui/LessonDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 189
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->isDownloaded:Z

    .line 174
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private performDownload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->isDownloaded:Z

    if-eqz v0, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->downloadFinish()V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->download()V

    goto :goto_0
.end method

.method private refreshView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->isDownloaded:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :goto_1
    new-instance v0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->adapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    .line 210
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->adapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 212
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvSportTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->total_time:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvCalory:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->calorie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvMentonCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvMentionDes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->description:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressBarHorizontal:Lcom/boohee/one/video/view/HorizontalProgressView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->progress:I

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->total_progress:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/view/HorizontalProgressView;->setProgress(II)V

    .line 217
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressBarHorizontal:Lcom/boohee/one/video/view/HorizontalProgressView;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/view/HorizontalProgressView;->setItemWidth(I)V

    .line 218
    const v0, 0x7f070366

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressTime:Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->progressTime:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->spannableString:Landroid/text/SpannableString;

    .line 220
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->spannableString:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->spannableString:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 221
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->spannableString:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x32

    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->spannableString:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->spannableString:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->banner_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0180
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->checkDownloadEnv()V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x7f0e0180
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->setContentView(I)V

    .line 110
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 111
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    .line 112
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->initView()V

    .line 113
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->initData()V

    .line 114
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonDetailActivity;->getLessonData()V

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    invoke-virtual {v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonDetailActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 317
    return-void
.end method
