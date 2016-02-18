.class public Lcom/boohee/one/video/ui/VideoPlayActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "VideoPlayActivity.java"


# static fields
.field public static final KEY_LESSON:Ljava/lang/String; = "KEY_LESSON"


# instance fields
.field private BGM_FIT:Ljava/lang/String;

.field private BGM_UP:Ljava/lang/String;

.field private final RETRY_COUNT:I

.field private final TAG:Ljava/lang/String;

.field bgmControlLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0228
    .end annotation
.end field

.field private bgmName:Ljava/lang/String;

.field private bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

.field breathLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e071c
    .end annotation
.end field

.field btnCloseBgm:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e022b
    .end annotation
.end field

.field btnOpenBgmControl:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0224
    .end annotation
.end field

.field commonErrorLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e071a
    .end annotation
.end field

.field controllerView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e021a
    .end annotation
.end field

.field private countDownRunnable:Ljava/lang/Runnable;

.field private currentMention:Lcom/boohee/one/video/entity/Mention;

.field private desMusicIndex:I

.field private desMusics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

.field essentials1Layout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0714
    .end annotation
.end field

.field essentials2Layout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0716
    .end annotation
.end field

.field essentials3Layout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0718
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isBgmOpen:Z

.field private isControllerViewHide:Z

.field private isCounting:Z

.field private isPaused:Z

.field private lesson:Lcom/boohee/one/video/entity/Lesson;

.field private mentionIndex:I

.field private mentionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;"
        }
    .end annotation
.end field

.field private mentionTimePaused:J

.field pauseLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0225
    .end annotation
.end field

.field private playCountNum:I

.field private preference:Lcom/boohee/one/video/manager/VideoPreference;

.field private progressAnimator:Landroid/animation/ObjectAnimator;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e0
    .end annotation
.end field

.field progressBarDivider:Lcom/boohee/one/video/view/ProgressBarHintView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e021f
    .end annotation
.end field

.field restRunnable:Ljava/lang/Runnable;

.field private restTime:I

.field private restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

.field private retry:I

.field rootVideo:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0219
    .end annotation
.end field

.field private timeCountDownRunnable:Ljava/lang/Runnable;

.field private totalMetionCount:I

.field private totalTimePaused:J

.field tvBgmFit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e022d
    .end annotation
.end field

.field tvBgmState:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e022a
    .end annotation
.end field

.field tvBgmUp:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e022e
    .end annotation
.end field

.field tvBreath:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e071d
    .end annotation
.end field

.field tvCommonError:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e071b
    .end annotation
.end field

.field tvEssentials1:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0715
    .end annotation
.end field

.field tvEssentials2:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0717
    .end annotation
.end field

.field tvEssentials3:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0719
    .end annotation
.end field

.field tvGroupCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0221
    .end annotation
.end field

.field tvMentionCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0222
    .end annotation
.end field

.field tvMentionTime:Landroid/widget/Chronometer;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0220
    .end annotation
.end field

.field tvMentionTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e021b
    .end annotation
.end field

.field tvMoreBgm:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e022c
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d3
    .end annotation
.end field

.field tvTotalTime:Landroid/widget/Chronometer;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e021e
    .end annotation
.end field

.field private videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

.field private videoPath:Ljava/lang/String;

.field videoView:Landroid/widget/VideoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01af
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 60
    const-class v0, Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->TAG:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    .line 149
    iput v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    .line 194
    const/4 v0, 0x5

    iput v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->RETRY_COUNT:I

    .line 196
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    .line 198
    const-string v0, "bgm_fit"

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_FIT:Ljava/lang/String;

    .line 199
    const-string v0, "bgm_up"

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_UP:Ljava/lang/String;

    .line 205
    iput-boolean v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isBgmOpen:Z

    .line 424
    new-instance v0, Lcom/boohee/one/video/ui/VideoPlayActivity$6;

    invoke-direct {v0, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$6;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restRunnable:Ljava/lang/Runnable;

    .line 580
    new-instance v0, Lcom/boohee/one/video/ui/VideoPlayActivity$9;

    invoke-direct {v0, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$9;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->countDownRunnable:Ljava/lang/Runnable;

    .line 590
    new-instance v0, Lcom/boohee/one/video/ui/VideoPlayActivity$10;

    invoke-direct {v0, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$10;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->onPlayError()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Mention;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->removeCallbacks()V

    return-void
.end method

.method static synthetic access$1200(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->stopLesson()V

    return-void
.end method

.method static synthetic access$1300(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->postProgress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/entity/Lesson;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    return-object v0
.end method

.method static synthetic access$1604(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->retry:I

    return v0
.end method

.method static synthetic access$1700(Lcom/boohee/one/video/ui/VideoPlayActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->refreshMentionCount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/manager/DesPlayerManager;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/VideoPlayActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->isMentionComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->updateProgress()V

    return-void
.end method

.method static synthetic access$2100(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    return v0
.end method

.method static synthetic access$2502(Lcom/boohee/one/video/ui/VideoPlayActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    return p1
.end method

.method static synthetic access$2508(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    return v0
.end method

.method static synthetic access$2600(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->startMentionTime()V

    return-void
.end method

.method static synthetic access$2800(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playDesMusic()V

    return-void
.end method

.method static synthetic access$2900(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->resumeLesson()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/video/ui/VideoPlayActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/video/ui/VideoPlayActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/video/ui/VideoPlayActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->countDownRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/video/ui/VideoPlayActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    return v0
.end method

.method static synthetic access$608(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/boohee/one/video/ui/VideoPlayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->restFinish()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I

    return v0
.end method

.method static synthetic access$810(Lcom/boohee/one/video/ui/VideoPlayActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I

    return v0
.end method

.method static synthetic access$900(Lcom/boohee/one/video/ui/VideoPlayActivity;)Lcom/boohee/one/video/ui/RestVideoPlayFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/VideoPlayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    return-object v0
.end method

.method private changeBgm()V
    .locals 6

    .prologue
    const v5, 0x7f0d012e

    const v4, 0x7f0d0116

    const v3, 0x7f0d0079

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 737
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isBgmOpen:Z

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmFit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmUp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmUp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmFit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 742
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMoreBgm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 743
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->btnCloseBgm:Landroid/widget/ImageView;

    const v1, 0x7f0202d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 744
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmState:Landroid/widget/TextView;

    const v1, 0x7f0703f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 745
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->btnOpenBgmControl:Landroid/widget/ImageView;

    const v1, 0x7f0202d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/BGMPlayerManager;->stopBgm()V

    .line 768
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmFit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 750
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmUp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 751
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMoreBgm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmState:Landroid/widget/TextView;

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 753
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->btnCloseBgm:Landroid/widget/ImageView;

    const v1, 0x7f0202a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 754
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->btnOpenBgmControl:Landroid/widget/ImageView;

    const v1, 0x7f0202a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 755
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/BGMPlayerManager;->stopBgm()V

    .line 757
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_UP:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_UP:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmUp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmFit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    :goto_1
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->preference:Lcom/boohee/one/video/manager/VideoPreference;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/manager/VideoPreference;->putBgm(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/boohee/one/video/manager/BGMPlayerManager;->startBgm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_FIT:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmFit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBgmUp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private changeBgmState()V
    .locals 2

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isBgmOpen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isBgmOpen:Z

    .line 729
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->preference:Lcom/boohee/one/video/manager/VideoPreference;

    iget-boolean v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isBgmOpen:Z

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/manager/VideoPreference;->putBgmState(Z)V

    .line 730
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->changeBgm()V

    .line 731
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lesson"    # Lcom/boohee/one/video/entity/Lesson;

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_LESSON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method private getChronometerTimeSecond(Landroid/widget/Chronometer;)I
    .locals 6
    .param p1, "chronometer"    # Landroid/widget/Chronometer;

    .prologue
    .line 629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 630
    .local v0, "time":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method private hideOrShowBgmControlView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 771
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLesson()V

    .line 773
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmControlLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 779
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->resumeLesson()V

    .line 777
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideOrShowControllView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->controllerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 783
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->controllerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 784
    .local v1, "view":Landroid/view/View;
    iget-boolean v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isControllerViewHide:Z

    if-eqz v3, :cond_0

    .line 785
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 782
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 790
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isControllerViewHide:Z

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isControllerViewHide:Z

    .line 791
    return-void
.end method

.method private initBgm()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->preference:Lcom/boohee/one/video/manager/VideoPreference;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/VideoPreference;->getBgm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->preference:Lcom/boohee/one/video/manager/VideoPreference;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/VideoPreference;->isBgmOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isBgmOpen:Z

    .line 455
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->changeBgm()V

    .line 456
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "KEY_LESSON"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/video/entity/Lesson;

    iput-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    .line 242
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-eqz v3, :cond_2

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 246
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Lesson;->mentions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/one/video/entity/Mention;

    .line 247
    .local v2, "mention":Lcom/boohee/one/video/entity/Mention;
    const/4 v0, 0x0

    .local v0, "groupIndex":I
    :goto_1
    iget v3, v2, Lcom/boohee/one/video/entity/Mention;->group_count:I

    if-ge v0, v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "groupIndex":I
    .end local v2    # "mention":Lcom/boohee/one/video/entity/Mention;
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    .line 254
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private initDesMusic()V
    .locals 5

    .prologue
    .line 266
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    invoke-virtual {v2}, Lcom/boohee/one/video/manager/DesPlayerManager;->stopPlayback()V

    .line 268
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    iget v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/one/video/entity/Mention;

    iput-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    .line 271
    iget v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    if-nez v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "d_lesson_will_start"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v3, v3, Lcom/boohee/one/video/entity/Lesson;->basic_calorie:I

    invoke-virtual {v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getNumberAudioSplit(I)Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "unit_calory"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "d_first_action"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v0    # "i":I
    .end local v1    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v4, v4, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v3, v3, Lcom/boohee/one/video/entity/Mention;->number:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-boolean v2, v2, Lcom/boohee/one/video/entity/Mention;->is_times:Z

    if-nez v2, :cond_4

    .line 292
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "unit_second"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_2
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "blank_1s"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "d_start"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v2, 0x0

    iput v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    .line 305
    return-void

    .line 283
    :cond_2
    iget v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    iget v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 284
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "d_last_action"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "d_next_action"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    const-string v3, "unit_piece"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private initDesPlayerManager()V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/boohee/one/video/manager/DesPlayerManager;->getInstance()Lcom/boohee/one/video/manager/DesPlayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    .line 231
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    new-instance v1, Lcom/boohee/one/video/ui/VideoPlayActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$1;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/manager/DesPlayerManager;->setOnPrepareError(Lcom/boohee/one/video/manager/DesPlayerManager$OnPrepareError;)V

    .line 237
    return-void
.end method

.method private initListener()V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method private initVideoData()V
    .locals 3

    .prologue
    .line 311
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    iget v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    if-lt v0, v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->lessonFinish()V

    .line 341
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    iget v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    .line 316
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoPath:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/boohee/one/video/ui/VideoPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$2;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 325
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/boohee/one/video/ui/VideoPlayActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$3;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressBarDivider:Lcom/boohee/one/video/view/ProgressBarHintView;

    iget v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/view/ProgressBarHintView;->setDrawCount(I)V

    .line 260
    :cond_0
    return-void
.end method

.method private isMentionComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    iget v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v3, v3, Lcom/boohee/one/video/entity/Mention;->number:I

    if-lt v2, v3, :cond_2

    .line 374
    iput-boolean v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z

    .line 375
    iput v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    .line 376
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 377
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v1, v1, Lcom/boohee/one/video/entity/Mention;->rest:I

    if-lez v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 380
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->clearFocus()V

    .line 381
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v1, v1, Lcom/boohee/one/video/entity/Mention;->rest:I

    iput v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restTime:I

    .line 382
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->takeRest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    const-string v2, "d_take_rest"

    invoke-virtual {v1, p0, v2}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    :goto_0
    return v0

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playNextMention()V

    goto :goto_0

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playNextMention()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 392
    goto :goto_0
.end method

.method private lessonFinish()V
    .locals 3

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->stopLesson()V

    .line 517
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    const-string v1, "d_lesson_done"

    new-instance v2, Lcom/boohee/one/video/ui/VideoPlayActivity$7;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$7;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 525
    return-void
.end method

.method private onPlayError()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->stopLesson()V

    .line 345
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f07041c

    invoke-static {v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v1

    const v2, 0x7f070082

    new-instance v3, Lcom/boohee/one/video/ui/VideoPlayActivity$4;

    invoke-direct {v3, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$4;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 352
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    invoke-virtual {v0, v4}, Lcom/boohee/widgets/LightAlertDialog;->setCancelable(Z)V

    .line 353
    invoke-virtual {v0, v4}, Lcom/boohee/widgets/LightAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 354
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 355
    return-void
.end method

.method private pauseLesson()V
    .locals 4

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isPaused:Z

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isPaused:Z

    .line 818
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 819
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->refreshPauseView()V

    .line 821
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalTimePaused:J

    .line 822
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionTimePaused:J

    .line 823
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 824
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 825
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 827
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/BGMPlayerManager;->pauseBgm()V

    .line 828
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/DesPlayerManager;->pausePlayback()V

    .line 829
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method

.method private performFinishLesson()V
    .locals 3

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLesson()V

    .line 795
    const v0, 0x7f0704ec

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f070243

    new-instance v2, Lcom/boohee/one/video/ui/VideoPlayActivity$13;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$13;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f0702a5

    new-instance v2, Lcom/boohee/one/video/ui/VideoPlayActivity$12;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$12;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 811
    return-void
.end method

.method private playDesMusic()V
    .locals 4

    .prologue
    .line 637
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    iget v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusicIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/boohee/one/video/ui/VideoPlayActivity$11;

    invoke-direct {v3, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$11;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/boohee/one/video/manager/DesPlayerManager;->playDesMusic(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method

.method private playMention()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 459
    iput-boolean v4, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z

    .line 460
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    iget v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    if-lt v0, v1, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->lessonFinish()V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    if-ltz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initDesMusic()V

    .line 465
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initVideoData()V

    .line 466
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playDesMusic()V

    .line 467
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playVideo()V

    .line 468
    iput v4, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    .line 469
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->updateProgress()V

    .line 470
    iput v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v1, v1, Lcom/boohee/one/video/entity/Mention;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->refreshMentionCount(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Mention;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvGroupCount:Landroid/widget/TextView;

    const v1, 0x7f0701a3

    invoke-virtual {p0, v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private playNextMention()V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->removeCallbacks()V

    .line 501
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 502
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    .line 503
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playMention()V

    .line 504
    return-void
.end method

.method private playPrevMention()V
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->removeCallbacks()V

    .line 491
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 492
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    .line 493
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playMention()V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 574
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method private postProgress()V
    .locals 4

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->showLoading()V

    .line 529
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v0, v0, Lcom/boohee/one/video/entity/UserProgress;->finish_section_count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v0, v0, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v0, v0, Lcom/boohee/one/video/entity/UserProgress;->finish_section_count:I

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v1, v1, Lcom/boohee/one/video/entity/UserProgress;->total_section_count:I

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/api/SportApi;->postJournalFinish(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v1, v1, Lcom/boohee/one/video/entity/Lesson;->id:I

    new-instance v2, Lcom/boohee/one/video/ui/VideoPlayActivity$8;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/video/ui/VideoPlayActivity$8;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/one/video/api/SportApi;->postSportsJournals(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 564
    return-void
.end method

.method private refreshMentionCount(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 478
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 479
    .local v0, "spannableString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#b5c2c1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 480
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private refreshPauseView()V
    .locals 4

    .prologue
    .line 835
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Mention;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    .line 838
    .local v0, "helper":Lcom/boohee/one/video/download/VideoDownloadHelper;
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->essentials1Layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvEssentials1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->summary1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->essentials2Layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvEssentials2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->summary2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->essentials3Layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvEssentials3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->summary3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->commonErrorLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvCommonError:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->common_errors:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->breathLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvBreath:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->breath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 844
    .end local v0    # "helper":Lcom/boohee/one/video/download/VideoDownloadHelper;
    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 509
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method

.method private restFinish()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->stopRest()V

    .line 421
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playNextMention()V

    .line 422
    return-void
.end method

.method private resumeLesson()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isPaused:Z

    .line 848
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    iget-wide v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalTimePaused:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 851
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 852
    iput-wide v6, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalTimePaused:J

    .line 854
    iget-boolean v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isCounting:Z

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    iget-wide v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionTimePaused:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 856
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 857
    iput-wide v6, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionTimePaused:J

    .line 859
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->timeCountDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/BGMPlayerManager;->resumeBgm()V

    .line 863
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/DesPlayerManager;->resumePlayback()V

    .line 864
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 867
    :cond_1
    return-void
.end method

.method private startMentionTime()V
    .locals 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 669
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 670
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 671
    return-void
.end method

.method private stopLesson()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desMusics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 871
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/DesPlayerManager;->stopPlayback()V

    .line 872
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/BGMPlayerManager;->stopBgm()V

    .line 873
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 875
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 876
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 877
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->removeCallbacks()V

    .line 878
    return-void
.end method

.method private takeRest()Z
    .locals 3

    .prologue
    .line 396
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvMentionTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 400
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    if-nez v0, :cond_1

    .line 401
    invoke-static {p0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->newInstance(Landroid/content/Context;)Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    iget v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    invoke-virtual {v1, v0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->setMention(Lcom/boohee/one/video/entity/Mention;)V

    .line 405
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "restDialog"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restVideoPlayFragment:Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    new-instance v1, Lcom/boohee/one/video/ui/VideoPlayActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/VideoPlayActivity$5;-><init>(Lcom/boohee/one/video/ui/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->setOnRestFinish(Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;)V

    .line 415
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->restRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateProgress()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 358
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 361
    :cond_0
    iget v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->playCountNum:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v4, v4, Lcom/boohee/one/video/entity/Mention;->number:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->totalMetionCount:I

    div-int/2addr v2, v3

    int-to-double v0, v2

    .line 362
    .local v0, "progress":D
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressBar:Landroid/widget/ProgressBar;

    const-string v3, "progress"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    double-to-int v6, v0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    .line 363
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-boolean v2, v2, Lcom/boohee/one/video/entity/Mention;->is_times:Z

    if-nez v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 368
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 370
    return-void

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->progressAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v3, v3, Lcom/boohee/one/video/entity/Mention;->rate:F

    float-to-long v4, v3

    mul-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method


# virtual methods
.method protected onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ad,
            0x7f0e021c,
            0x7f0e021d,
            0x7f0e0223,
            0x7f0e0227,
            0x7f0e021a,
            0x7f0e0224,
            0x7f0e0229,
            0x7f0e022e,
            0x7f0e022d,
            0x7f0e022b
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 684
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->performFinishLesson()V

    goto :goto_0

    .line 687
    :sswitch_1
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playPrevMention()V

    goto :goto_0

    .line 690
    :sswitch_2
    iget v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->mentionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playNextMention()V

    goto :goto_0

    .line 696
    :sswitch_3
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLesson()V

    goto :goto_0

    .line 699
    :sswitch_4
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->resumeLesson()V

    goto :goto_0

    .line 702
    :sswitch_5
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->hideOrShowControllView()V

    goto :goto_0

    .line 705
    :sswitch_6
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->hideOrShowBgmControlView()V

    goto :goto_0

    .line 708
    :sswitch_7
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->hideOrShowBgmControlView()V

    goto :goto_0

    .line 711
    :sswitch_8
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_UP:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    .line 712
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->changeBgm()V

    goto :goto_0

    .line 715
    :sswitch_9
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->BGM_FIT:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmName:Ljava/lang/String;

    .line 716
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->changeBgm()V

    goto :goto_0

    .line 720
    :sswitch_a
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->changeBgmState()V

    goto :goto_0

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x7f0e01ad -> :sswitch_0
        0x7f0e021a -> :sswitch_5
        0x7f0e021c -> :sswitch_1
        0x7f0e021d -> :sswitch_2
        0x7f0e0223 -> :sswitch_3
        0x7f0e0224 -> :sswitch_6
        0x7f0e0227 -> :sswitch_4
        0x7f0e0229 -> :sswitch_7
        0x7f0e022b -> :sswitch_a
        0x7f0e022d -> :sswitch_9
        0x7f0e022e -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 219
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 220
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 221
    invoke-static {}, Lcom/boohee/one/video/manager/BGMPlayerManager;->getInstance()Lcom/boohee/one/video/manager/BGMPlayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    .line 222
    new-instance v0, Lcom/boohee/one/video/manager/VideoPreference;

    invoke-direct {v0, p0}, Lcom/boohee/one/video/manager/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->preference:Lcom/boohee/one/video/manager/VideoPreference;

    .line 223
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initDesPlayerManager()V

    .line 224
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initData()V

    .line 225
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initView()V

    .line 226
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initListener()V

    .line 227
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 890
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 891
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/DesPlayerManager;->release()V

    .line 892
    iput-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    .line 893
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/BGMPlayerManager;->release()V

    .line 894
    iput-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->bgmPlayerManager:Lcom/boohee/one/video/manager/BGMPlayerManager;

    .line 895
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 675
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onPause()V

    .line 676
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->pauseLesson()V

    .line 677
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 440
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onResume()V

    .line 441
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->initBgm()V

    .line 442
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->isPaused:Z

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 444
    iget-object v1, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 445
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->playMention()V

    .line 447
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/boohee/one/video/ui/VideoPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 450
    .local v0, "am":Landroid/media/AudioManager;
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 882
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onStop()V

    .line 883
    invoke-direct {p0}, Lcom/boohee/one/video/ui/VideoPlayActivity;->removeCallbacks()V

    .line 884
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->desPlayerManager:Lcom/boohee/one/video/manager/DesPlayerManager;

    invoke-virtual {v0}, Lcom/boohee/one/video/manager/DesPlayerManager;->stopPlayback()V

    .line 885
    iget-object v0, p0, Lcom/boohee/one/video/ui/VideoPlayActivity;->tvTotalTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 886
    return-void
.end method
