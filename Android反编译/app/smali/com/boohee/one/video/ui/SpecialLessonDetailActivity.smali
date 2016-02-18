.class public Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SpecialLessonDetailActivity.java"


# static fields
.field public static final IS_JOINED:Ljava/lang/String; = "IS_JOINED"

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

.field private isJoined:Z

.field ivTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0179
    .end annotation
.end field

.field private lesson:Lcom/boohee/one/video/entity/Lesson;

.field private lessonId:I

.field private menu:Landroid/view/Menu;

.field progressBarDownload:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0182
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

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d3
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
    .line 55
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoUrls:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->audioUrls:Ljava/util/List;

    .line 92
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadRetry:I

    .line 94
    const/4 v0, 0x5

    iput v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->DOWN_LOAD_RETRY:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isDownloaded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->handleData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lessonId:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)Lcom/boohee/one/cache/FileCache;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isJoined:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->performDownload()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadFinish()V

    return-void
.end method

.method static synthetic access$602(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadRetry:I

    return p1
.end method

.method static synthetic access$604(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadRetry:I

    return v0
.end method

.method static synthetic access$700(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->download()V

    return-void
.end method

.method private checkDownloadEnv()V
    .locals 6

    .prologue
    .line 347
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isDownloaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/utils/HttpUtils;->isWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->performDownload()V

    .line 365
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f0701ee

    invoke-virtual {p0, v2}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v5, v5, Lcom/boohee/one/video/entity/Lesson;->stream:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 352
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const v1, 0x7f07001c

    new-instance v2, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$4;-><init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Lcom/boohee/widgets/LightAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 358
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$5;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$5;-><init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 364
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    goto :goto_0
.end method

.method public static comeOn(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lessonId"    # I
    .param p2, "isJoined"    # Z

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LESSON_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "IS_JOINED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method private download()V
    .locals 5

    .prologue
    .line 383
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;

    invoke-direct {v4, p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$6;-><init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFiles(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    .line 404
    return-void
.end method

.method private downloadFinish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 407
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/api/SportApi;->postLessonProgress(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 409
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 410
    iput-boolean v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isDownloaded:Z

    .line 411
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    invoke-static {v0, v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;)V

    .line 416
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->finish()V

    .line 418
    :cond_0
    return-void
.end method

.method private getLessonData()V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lessonId:I

    if-gez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->showLoading()V

    .line 147
    iget v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lessonId:I

    new-instance v1, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$1;-><init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/boohee/one/video/api/SportApi;->getSpecialLessonDetail(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private handleData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 172
    :try_start_0
    const-class v1, Lcom/boohee/one/video/entity/Lesson;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/video/entity/Lesson;

    iput-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    .line 173
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->parseDownloadPath()V

    .line 177
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->refreshView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LESSON_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lessonId:I

    .line 131
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_JOINED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isJoined:Z

    .line 133
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isJoined:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const v1, 0x7f0704ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->invalidateOptionsMenu()V

    .line 140
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 121
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 122
    .local v0, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 123
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 124
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v5}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 125
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 126
    return-void
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
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

.method private joinTrain()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/trainings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$3;

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$3;-><init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/one/http/client/BingoClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private parseDownloadPath()V
    .locals 6

    .prologue
    .line 184
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v4, :cond_1

    .line 205
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget v2, v4, Lcom/boohee/one/video/entity/Mention;->id:I

    .line 189
    .local v2, "mentionId":I
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v4, Lcom/boohee/one/video/entity/Mention;->video_url:Ljava/lang/String;

    .line 190
    .local v3, "videoPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/one/video/entity/Mention;

    iget-object v0, v4, Lcom/boohee/one/video/entity/Mention;->audio_url:Ljava/lang/String;

    .line 192
    .local v0, "audioPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoUrls:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->audioUrls:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_3
    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v5, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v5, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 202
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isDownloaded:Z

    .line 187
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private performDownload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isDownloaded:Z

    if-eqz v0, :cond_2

    .line 372
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->downloadFinish()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->progressBarDownload:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvStart:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->download()V

    goto :goto_0
.end method

.method private quitTrain()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/trainings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity$2;-><init>(Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/one/http/client/BingoClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private refreshView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isDownloaded:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    :goto_1
    new-instance v0, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->adapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    .line 223
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->adapter:Lcom/boohee/one/video/adapter/MentionRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 225
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvTime:Landroid/widget/TextView;

    const v1, 0x7f0704db

    invoke-virtual {p0, v1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v3, v3, Lcom/boohee/one/video/entity/Lesson;->total_time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvCalory:Landroid/widget/TextView;

    const v1, 0x7f0704da

    invoke-virtual {p0, v1}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v3, v3, Lcom/boohee/one/video/entity/Lesson;->calorie:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvMentionDes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->description:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->banner_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ivTop:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->randomColor()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->tvDownloadStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setUpMenu()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->menu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->menu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->menu:Landroid/view/Menu;

    const v2, 0x7f0e07c5

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 260
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 261
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isJoined:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
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
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v0, :cond_0

    .line 308
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->isJoined:Z

    if-nez v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->joinTrain()V

    goto :goto_0

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->checkDownloadEnv()V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x7f0e0180
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->setContentView(I)V

    .line 112
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 113
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->fileCache:Lcom/boohee/one/cache/FileCache;

    .line 114
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->initView()V

    .line 115
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->initData()V

    .line 116
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getLessonData()V

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 244
    iput-object p1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->menu:Landroid/view/Menu;

    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 422
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 423
    iget-object v0, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    invoke-virtual {v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 424
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 269
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->quitTrain()V

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07dd
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SpecialLessonDetailActivity;->setUpMenu()V

    .line 251
    const/4 v0, 0x1

    return v0
.end method
