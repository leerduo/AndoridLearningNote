.class public Lcom/boohee/one/video/manager/DesPlayerManager;
.super Ljava/lang/Object;
.source "DesPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;,
        Lcom/boohee/one/video/manager/DesPlayerManager$DesPlayerManagerHodler;
    }
.end annotation


# static fields
.field private static desMediaPlayer:Landroid/media/MediaPlayer;


# instance fields
.field private onPrepareError:Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/video/manager/DesPlayerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/video/manager/DesPlayerManager$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/boohee/one/video/manager/DesPlayerManager;-><init>()V

    return-void
.end method

.method static synthetic access$200()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static getInstance()Lcom/boohee/one/video/manager/DesPlayerManager;
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/boohee/one/video/manager/DesPlayerManager$DesPlayerManagerHodler;->access$100()Lcom/boohee/one/video/manager/DesPlayerManager;

    move-result-object v0

    .line 33
    .local v0, "playerManager":Lcom/boohee/one/video/manager/DesPlayerManager;
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    :cond_0
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/boohee/one/video/manager/DesPlayerManager$1;

    invoke-direct {v2}, Lcom/boohee/one/video/manager/DesPlayerManager$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public pausePlayback()V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public playDesMusic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 52
    return-void
.end method

.method public playDesMusic(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "onCompletionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 56
    :try_start_0
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 58
    const-string v0, "Audio_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getAudioDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v8, "file":Ljava/io/File;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/manager/DesPlayerManager;->onPrepareError:Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/boohee/one/video/manager/DesPlayerManager;->onPrepareError:Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;

    invoke-interface {v0}, Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;->onPrepareError()V

    .line 82
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "path":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 75
    .end local v8    # "file":Ljava/io/File;
    :goto_1
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 76
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 78
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v9    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 80
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sport_audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .restart local v9    # "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 71
    .local v6, "descriptor":Landroid/content/res/AssetFileDescriptor;
    sget-object v0, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 72
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 114
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 115
    const/4 v1, 0x0

    sput-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resumePlayback()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnPrepareError(Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;)V
    .locals 0
    .param p1, "onPrepareError"    # Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/boohee/one/video/manager/DesPlayerManager;->onPrepareError:Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;

    .line 48
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    sget-object v1, Lcom/boohee/one/video/manager/DesPlayerManager;->desMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
