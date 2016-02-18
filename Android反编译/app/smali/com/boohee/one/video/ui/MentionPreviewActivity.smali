.class public Lcom/boohee/one/video/ui/MentionPreviewActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "MentionPreviewActivity.java"


# static fields
.field public static final MENTION_LIST:Ljava/lang/String; = "MENTION_LIST"

.field public static final POSITION:Ljava/lang/String; = "POSITION"


# instance fields
.field btnClose:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ad
    .end annotation
.end field

.field private currentMention:Lcom/boohee/one/video/entity/Mention;

.field private downloadRetry:I

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

.field private pagerAdapter:Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;

.field private position:I

.field progressBar:Lcom/boohee/widgets/ProgressWheel;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e0
    .end annotation
.end field

.field progressLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0185
    .end annotation
.end field

.field tvIndex:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01b1
    .end annotation
.end field

.field private videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

.field private videoPath:Ljava/lang/String;

.field videoView:Landroid/widget/VideoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01af
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01b0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I

    .line 69
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/entity/Mention;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/video/ui/MentionPreviewActivity;Lcom/boohee/one/video/entity/Mention;)Lcom/boohee/one/video/entity/Mention;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;
    .param p1, "x1"    # Lcom/boohee/one/video/entity/Mention;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/MentionPreviewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->setCurrentIndex(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Lcom/boohee/one/video/download/VideoDownloadHelper;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/one/video/ui/MentionPreviewActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I

    return p1
.end method

.method static synthetic access$504(Lcom/boohee/one/video/ui/MentionPreviewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I

    return v0
.end method

.method static synthetic access$508(Lcom/boohee/one/video/ui/MentionPreviewActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadRetry:I

    return v0
.end method

.method static synthetic access$600(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/video/ui/MentionPreviewActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->playVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/MentionPreviewActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ennableViewpagerScroll()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/video/entity/Mention;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "mentionList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 207
    .end local p1    # "mentionList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local p1    # "mentionList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/MentionPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MENTION_LIST"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "mentionList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/video/entity/Mention;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 205
    const-string v1, "POSITION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private disableViewpagerScroll()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/boohee/one/video/ui/MentionPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity$3;-><init>(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    return-void
.end method

.method private downloadFile()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->checkVideoDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->progressLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->disableViewpagerScroll()V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    invoke-virtual {v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Mention;->video_url:Ljava/lang/String;

    new-instance v3, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity$2;-><init>(Lcom/boohee/one/video/ui/MentionPreviewActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->playVideo()V

    goto :goto_0
.end method

.method private ennableViewpagerScroll()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MENTION_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    .line 93
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->position:I

    .line 94
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    iget v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Mention;

    iput-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    .line 96
    :cond_0
    return-void
.end method

.method private initVideo()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "currnt mention null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->downloadFile()V

    .line 121
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->pagerAdapter:Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;

    .line 101
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->pagerAdapter:Lcom/boohee/one/video/adapter/MentionPreviewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity$1;-><init>(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 113
    iget v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->position:I

    invoke-direct {p0, v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->setCurrentIndex(I)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->currentMention:Lcom/boohee/one/video/entity/Mention;

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoPath:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/boohee/one/video/ui/MentionPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity$4;-><init>(Lcom/boohee/one/video/ui/MentionPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 184
    return-void
.end method

.method private setCurrentIndex(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070632

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->mentionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->initVideo()V

    .line 190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01ad
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->finish()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f0e01ad
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 82
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 86
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->handleIntent()V

    .line 87
    invoke-direct {p0}, Lcom/boohee/one/video/ui/MentionPreviewActivity;->initView()V

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 194
    invoke-super {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 196
    iget-object v0, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->videoDownloadHelper:Lcom/boohee/one/video/download/VideoDownloadHelper;

    invoke-virtual {v0}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/MentionPreviewActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 197
    return-void
.end method
