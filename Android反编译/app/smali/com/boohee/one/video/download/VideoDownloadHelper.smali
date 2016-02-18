.class public Lcom/boohee/one/video/download/VideoDownloadHelper;
.super Ljava/lang/Object;
.source "VideoDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;,
        Lcom/boohee/one/video/download/VideoDownloadHelper$VideoDownloadHelperHolder;
    }
.end annotation


# static fields
.field public static final AUDIO_DOWNLOAD_PATH:Ljava/lang/String; = "/.AUDIOS/"

.field public static final AUDIO_FORMAT:Ljava/lang/String; = ".mp3"

.field public static final AUDIO_NAME:Ljava/lang/String; = "Audio_"

.field public static final RMB_NUMS:[C

.field public static final TAG:Ljava/lang/String; = "VideoDownloadHelper"

.field private static final U1:[Ljava/lang/String;

.field public static final VIDEO_DOWNLOAD_PATH:Ljava/lang/String; = "/.VIDEOS/"

.field public static final VIDEO_FORMAT:Ljava/lang/String; = ".mp4"

.field public static final VIDEO_NAME:Ljava/lang/String; = "Video_"

.field private static client:Lcom/loopj/android/http/AsyncHttpClient;


# instance fields
.field private downloadAudioSuccess:Z

.field private downloadVideoSuccess:Z

.field private index:I

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 338
    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper;->RMB_NUMS:[C

    .line 339
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unit_ten"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unit_hundred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unit_thousand"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper;->U1:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    .line 103
    iput v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->totalSize:I

    .line 104
    iput-boolean v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    .line 105
    iput-boolean v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/video/download/VideoDownloadHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/video/download/VideoDownloadHelper$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/one/video/download/VideoDownloadHelper;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/video/download/VideoDownloadHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/download/VideoDownloadHelper;

    .prologue
    .line 30
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    return v0
.end method

.method static synthetic access$302(Lcom/boohee/one/video/download/VideoDownloadHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/download/VideoDownloadHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/video/download/VideoDownloadHelper;Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/download/VideoDownloadHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Landroid/widget/ProgressBar;
    .param p4, "x4"    # Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isDownloadFinish(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    return-void
.end method

.method static synthetic access$502(Lcom/boohee/one/video/download/VideoDownloadHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/download/VideoDownloadHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    return p1
.end method

.method public static getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;
    .locals 1

    .prologue
    .line 47
    # getter for: Lcom/boohee/one/video/download/VideoDownloadHelper$VideoDownloadHelperHolder;->INSTANCE:Lcom/boohee/one/video/download/VideoDownloadHelper;
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper$VideoDownloadHelperHolder;->access$100()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method private static getNumberSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "integer"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x30

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ltz v1, :cond_7

    .line 346
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 347
    .local v3, "n":C
    if-ne v3, v6, :cond_5

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_0

    .line 350
    sget-object v4, Lcom/boohee/one/video/download/VideoDownloadHelper;->RMB_NUMS:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_4

    .line 354
    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_1
    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    const/4 v4, 0x2

    if-le v1, v4, :cond_4

    add-int/lit8 v4, v1, -0x3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_4

    .line 357
    :cond_3
    const-string v4, "unit_ten_thousand"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_5
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_6

    .line 362
    const-string v4, "unit_ten_thousand"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_6
    sget-object v4, Lcom/boohee/one/video/download/VideoDownloadHelper;->U1:[Ljava/lang/String;

    rem-int/lit8 v5, v2, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    sget-object v4, Lcom/boohee/one/video/download/VideoDownloadHelper;->RMB_NUMS:[C

    add-int/lit8 v5, v3, -0x30

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    .end local v3    # "n":C
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isDownloadFinish(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "onDownloadListener"    # Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;",
            "Landroid/widget/ProgressBar;",
            "Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    const/4 v3, 0x0

    .line 196
    const-string v0, "VideoDownloadHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDownloadFinish downloadAudioSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " downloadVideoSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    if-eqz v0, :cond_0

    .line 198
    iput-boolean v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    .line 199
    iput-boolean v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    .line 200
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    .line 201
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    iget v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->totalSize:I

    if-lt v0, v1, :cond_1

    .line 202
    iput v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    .line 203
    iput v3, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->totalSize:I

    .line 204
    if-eqz p4, :cond_0

    .line 205
    invoke-interface {p4}, Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;->onDownloadFinish()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadFiles(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAudioDownload(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->checkDownload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkDownload(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 236
    .local v1, "isDownloaded":Z
    :goto_0
    const-string v2, "VideoDownloadHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDownload path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDownloaded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v1

    .line 235
    .end local v1    # "isDownloaded":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkVideoDownload(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->checkDownload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "in":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 243
    .local v6, "out":Ljava/nio/channels/FileChannel;
    const/4 v7, 0x0

    .line 244
    .local v7, "inputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 247
    .local v9, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .local v8, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 250
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 251
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 256
    if-eqz v1, :cond_0

    .line 257
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 259
    :cond_0
    if-eqz v6, :cond_1

    .line 260
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 262
    :cond_1
    if-eqz v8, :cond_2

    .line 263
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 265
    :cond_2
    if-eqz v10, :cond_3

    .line 266
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 274
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    :cond_4
    :goto_0
    return-void

    .line 268
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 272
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 273
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    if-eqz v1, :cond_5

    .line 257
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 259
    :cond_5
    if-eqz v6, :cond_6

    .line 260
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 262
    :cond_6
    if-eqz v7, :cond_7

    .line 263
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 265
    :cond_7
    if-eqz v9, :cond_4

    .line 266
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 268
    :catch_3
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 256
    :goto_2
    if-eqz v1, :cond_8

    .line 257
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 259
    :cond_8
    if-eqz v6, :cond_9

    .line 260
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 262
    :cond_9
    if-eqz v7, :cond_a

    .line 263
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 265
    :cond_a
    if-eqz v9, :cond_b

    .line 266
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 272
    :cond_b
    :goto_3
    throw v2

    .line 268
    :catch_5
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 252
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v9, v10

    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "outputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public downloadAudio(Ljava/lang/String;Lcom/loopj/android/http/FileAsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/loopj/android/http/FileAsyncHttpResponseHandler;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 223
    return-void
.end method

.method public downloadFileFailure(Landroid/content/Context;ILjava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 182
    iput-boolean v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    .line 183
    iput-boolean v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    .line 184
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 185
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "video":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 189
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "audio":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 193
    :cond_1
    return-void
.end method

.method public downloadFiles(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "onDownloadListener"    # Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;",
            "Landroid/widget/ProgressBar;",
            "Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    const/4 v9, 0x1

    .line 108
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->totalSize:I

    .line 112
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    iget v1, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->totalSize:I

    if-ge v0, v1, :cond_0

    .line 115
    const-string v1, "VideoDownloadHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFiles index : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->checkVideoDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const-string v0, "VideoDownloadHelper"

    const-string v1, "downloadVideo"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v7

    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iget-object v8, v0, Lcom/boohee/one/video/entity/Mention;->video_url:Ljava/lang/String;

    new-instance v0, Lcom/boohee/one/video/download/VideoDownloadHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/boohee/one/video/download/VideoDownloadHelper$1;-><init>(Lcom/boohee/one/video/download/VideoDownloadHelper;Landroid/content/Context;Landroid/content/Context;Ljava/util/List;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;Landroid/widget/ProgressBar;)V

    invoke-virtual {v7, p1, v8, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 149
    :goto_1
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iget v0, v0, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {p0, p1, v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->checkAudioDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    const-string v0, "VideoDownloadHelper"

    const-string v1, "downloadAudio"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v7

    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iget-object v8, v0, Lcom/boohee/one/video/entity/Mention;->audio_url:Ljava/lang/String;

    new-instance v0, Lcom/boohee/one/video/download/VideoDownloadHelper$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/boohee/one/video/download/VideoDownloadHelper$2;-><init>(Lcom/boohee/one/video/download/VideoDownloadHelper;Landroid/content/Context;Landroid/content/Context;Ljava/util/List;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;Landroid/widget/ProgressBar;)V

    invoke-virtual {v7, p1, v8, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->index:I

    mul-int/lit8 v0, v0, 0x64

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    iput-boolean v9, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadVideoSuccess:Z

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isDownloadFinish(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    goto :goto_1

    .line 176
    :cond_3
    iput-boolean v9, p0, Lcom/boohee/one/video/download/VideoDownloadHelper;->downloadAudioSuccess:Z

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isDownloadFinish(Landroid/content/Context;Ljava/util/List;Landroid/widget/ProgressBar;Lcom/boohee/one/video/download/VideoDownloadHelper$OnDownloadListener;)V

    goto/16 :goto_0
.end method

.method public downloadVideo(Ljava/lang/String;Lcom/loopj/android/http/FileAsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/loopj/android/http/FileAsyncHttpResponseHandler;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 219
    return-void
.end method

.method public getAudioDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.AUDIOS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getAudioName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "Audio_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 57
    :cond_0
    sget-object v0, Lcom/boohee/one/video/download/VideoDownloadHelper;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method public getDownloadFileSize([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 5
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 277
    const-string v2, ""

    .line 278
    .local v2, "size":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v3, v2

    .line 290
    :goto_0
    return-object v3

    .line 281
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 282
    aget-object v0, p1, v1

    .line 283
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_2
    const-string v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    const-string v3, "Content-Length: "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 290
    goto :goto_0
.end method

.method public getNumberAudioSplit(I)Ljava/util/List;
    .locals 7
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v4, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    div-int/lit16 v5, p1, 0x2710

    .line 312
    .local v5, "wan":I
    div-int/lit16 v6, p1, 0x3e8

    rem-int/lit8 v2, v6, 0xa

    .line 313
    .local v2, "qian":I
    div-int/lit8 v6, p1, 0x64

    rem-int/lit8 v0, v6, 0xa

    .line 314
    .local v0, "bai":I
    div-int/lit8 v6, p1, 0xa

    rem-int/lit8 v3, v6, 0xa

    .line 315
    .local v3, "shi":I
    rem-int/lit8 v1, p1, 0xa

    .line 316
    .local v1, "ge":I
    if-eqz v5, :cond_0

    .line 317
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v6, "unit_ten_thousand"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    if-eqz v2, :cond_1

    .line 321
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v6, "unit_thousand"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    if-eqz v0, :cond_2

    .line 325
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v6, "unit_hundred"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    if-eqz v3, :cond_3

    .line 329
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v6, "unit_ten"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_3
    if-eqz v1, :cond_4

    .line 333
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_4
    return-object v4
.end method

.method public getVideoDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.VIDEOS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getVideoName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "Video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
