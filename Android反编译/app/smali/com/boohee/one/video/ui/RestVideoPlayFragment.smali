.class public Lcom/boohee/one/video/ui/RestVideoPlayFragment;
.super Lcom/boohee/one/ui/fragment/BaseDialogFragment;
.source "RestVideoPlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;
    }
.end annotation


# instance fields
.field breathLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e071c
    .end annotation
.end field

.field commonErrorLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e071a
    .end annotation
.end field

.field private context:Landroid/content/Context;

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

.field private mention:Lcom/boohee/one/video/entity/Mention;

.field private onRestFinish:Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;

.field progressBar:Lcom/boohee/widgets/ProgressWheel;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e0
    .end annotation
.end field

.field restVideoView:Landroid/widget/VideoView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e035c
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

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d3
    .end annotation
.end field

.field tvNextMention:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0713
    .end annotation
.end field

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;-><init>()V

    .line 184
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget v2, v2, Lcom/boohee/one/video/entity/Mention;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getVideoName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->videoPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvNextMention:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Mention;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {}, Lcom/boohee/one/video/download/VideoDownloadHelper;->getInstance()Lcom/boohee/one/video/download/VideoDownloadHelper;

    move-result-object v0

    .line 114
    .local v0, "helper":Lcom/boohee/one/video/download/VideoDownloadHelper;
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->essentials1Layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvEssentials1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->summary1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->essentials2Layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvEssentials2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->summary2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->essentials3Layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvEssentials3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->summary3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->commonErrorLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvCommonError:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->common_errors:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->breathLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->tvBreath:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    iget-object v3, v3, Lcom/boohee/one/video/entity/Mention;->info:Lcom/boohee/one/video/entity/MentionInfo;

    iget-object v3, v3, Lcom/boohee/one/video/entity/MentionInfo;->breath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/boohee/one/video/download/VideoDownloadHelper;->isNeedShowInfoText(Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 120
    .end local v0    # "helper":Lcom/boohee/one/video/download/VideoDownloadHelper;
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/boohee/one/video/ui/RestVideoPlayFragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;

    invoke-direct {v0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;-><init>()V

    .line 72
    .local v0, "fragment":Lcom/boohee/one/video/ui/RestVideoPlayFragment;
    iput-object p0, v0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->context:Landroid/content/Context;

    .line 73
    return-object v0
.end method

.method private playVideo()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->restVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->restVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/boohee/one/video/ui/RestVideoPlayFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment$1;-><init>(Lcom/boohee/one/video/ui/RestVideoPlayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->restVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e035d
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->onRestFinish:Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->onRestFinish:Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;

    invoke-interface {v0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;->restFinish()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f0e035d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->setCancelable(Z)V

    .line 80
    const v0, 0x103000a

    invoke-virtual {p0, v1, v0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->setStyle(II)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    const v1, 0x7f0300f0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 100
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroy()V

    .line 182
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onDestroyView()V

    .line 163
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->playVideo()V

    .line 126
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->initView()V

    .line 107
    return-void
.end method

.method public setCount(Ljava/lang/String;I)V
    .locals 3
    .param p1, "restTime"    # Ljava/lang/String;
    .param p2, "restTimeCount"    # I

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "restTimeCount zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x168

    div-int v0, v1, p2

    .line 175
    .local v0, "progress":I
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->progressBar:Lcom/boohee/widgets/ProgressWheel;

    invoke-virtual {v1, p1}, Lcom/boohee/widgets/ProgressWheel;->setTextInCenter(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->progressBar:Lcom/boohee/widgets/ProgressWheel;

    invoke-virtual {v1, v0}, Lcom/boohee/widgets/ProgressWheel;->setProgress(I)V

    .line 177
    return-void
.end method

.method public setMention(Lcom/boohee/one/video/entity/Mention;)V
    .locals 0
    .param p1, "mention"    # Lcom/boohee/one/video/entity/Mention;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->mention:Lcom/boohee/one/video/entity/Mention;

    .line 85
    invoke-direct {p0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->initData()V

    .line 86
    return-void
.end method

.method public setOnRestFinish(Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;)V
    .locals 0
    .param p1, "onRestFinish"    # Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->onRestFinish:Lcom/boohee/one/video/ui/RestVideoPlayFragment$OnRestFinish;

    .line 168
    return-void
.end method

.method public stopRest()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->restVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 156
    iget-object v0, p0, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->restVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->clearFocus()V

    .line 157
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/RestVideoPlayFragment;->dismiss()V

    .line 158
    return-void
.end method
