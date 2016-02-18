.class public Lcom/boohee/one/video/ui/LessonFinishActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "LessonFinishActivity.java"


# static fields
.field public static final IS_FINISH:Ljava/lang/String; = "IS_FINISH"

.field public static final KEY_LESSON:Ljava/lang/String; = "KEY_LESSON"


# instance fields
.field private attachMent:Lcom/boohee/model/status/AttachMent;

.field btnGoSportPlan:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e018f
    .end annotation
.end field

.field btnPostStatus:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0190
    .end annotation
.end field

.field btnQuestion:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e018b
    .end annotation
.end field

.field diamondLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e018c
    .end annotation
.end field

.field private isFinish:Z

.field private isSpecialTrain:Z

.field ivFinish:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0184
    .end annotation
.end field

.field private lesson:Lcom/boohee/one/video/entity/Lesson;

.field lessonProgress:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0187
    .end annotation
.end field

.field progressLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0185
    .end annotation
.end field

.field tvDiamond:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e018d
    .end annotation
.end field

.field tvProgress:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0186
    .end annotation
.end field

.field tvTodayCost:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0188
    .end annotation
.end field

.field tvTomorrow:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e018a
    .end annotation
.end field

.field tvUnfinshCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e018e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    return-void
.end method

.method public static comeOn(Landroid/content/Context;Lcom/boohee/one/video/entity/Lesson;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lesson"    # Lcom/boohee/one/video/entity/Lesson;
    .param p2, "isFinish"    # Z

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/LessonFinishActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IS_FINISH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v1, "KEY_LESSON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_LESSON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/Lesson;

    iput-object v0, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    .line 117
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FINISH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->isFinish:Z

    .line 119
    :cond_0
    return-void
.end method

.method private refreshView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 82
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->isFinish:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->btnPostStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->ivFinish:Landroid/widget/ImageView;

    const v2, 0x7f020266

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvDiamond:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->envious_count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvUnfinshCount:Landroid/widget/TextView;

    const v2, 0x7f0705d8

    invoke-virtual {p0, v2}, Lcom/boohee/one/video/ui/LessonFinishActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v4, v4, Lcom/boohee/one/video/entity/Lesson;->unfinish_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvTodayCost:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->today_calorie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvTomorrow:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->basic_calorie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    if-nez v1, :cond_2

    .line 102
    iput-boolean v7, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->isSpecialTrain:Z

    .line 103
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->btnPostStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->diamondLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->ivFinish:Landroid/widget/ImageView;

    const v2, 0x7f020267

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvDiamond:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvUnfinshCount:Landroid/widget/TextView;

    const-string v2, "\u5b8c\u6210\u8ba1\u5212\u624d\u6709\u53ef\u80fd\u8fbe\u6210\u76ee\u6807\u54e6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lessonProgress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->ctx:Landroid/content/Context;

    const v3, 0x7f02045d

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->id:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/boohee/one/video/api/SportApi;->postGiveUpLesson(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v2, v1, Lcom/boohee/one/video/entity/UserProgress;->finish_section_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/boohee/one/video/entity/UserProgress;->finish_section_count:I

    .line 107
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v2, v1, Lcom/boohee/one/video/entity/UserProgress;->continue_days:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/boohee/one/video/entity/UserProgress;->continue_days:I

    .line 108
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v1, v1, Lcom/boohee/one/video/entity/UserProgress;->finish_section_count:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v2, v2, Lcom/boohee/one/video/entity/UserProgress;->total_section_count:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 109
    .local v0, "progress":I
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lessonProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->tvProgress:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e018f,
            0x7f0e0190,
            0x7f0e018b
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :pswitch_1
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->finish()V

    goto :goto_0

    .line 130
    :pswitch_2
    new-instance v1, Lcom/boohee/model/status/AttachMent;

    invoke-direct {v1}, Lcom/boohee/model/status/AttachMent;-><init>()V

    iput-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    .line 131
    const-string v0, ""

    .line 132
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->isSpecialTrain:Z

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5b8c\u6210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6d88\u8017%d\u5343\u5361"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v4, v4, Lcom/boohee/one/video/entity/Lesson;->today_calorie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    iput-object v0, v1, Lcom/boohee/model/status/AttachMent;->title:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    const-string v2, "show"

    iput-object v2, v1, Lcom/boohee/model/status/AttachMent;->type:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->level_pic:Ljava/lang/String;

    iput-object v2, v1, Lcom/boohee/model/status/AttachMent;->pic:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    invoke-static {v1, v2}, Lcom/boohee/one/ui/StatusPostTextActivity;->comeWithAttachment(Landroid/content/Context;Lcom/boohee/model/status/AttachMent;)V

    .line 144
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->finish()V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5b8c\u6210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->difficulty:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v2, v2, Lcom/boohee/one/video/entity/Lesson;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9636\u6bb5>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v2, v2, Lcom/boohee/one/video/entity/Lesson;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5df2\u6d88\u8017%d\u5343\u5361\uff0c\u5df2\u575a\u6301%d\u5929"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget v4, v4, Lcom/boohee/one/video/entity/Lesson;->today_calorie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v4, v4, Lcom/boohee/one/video/entity/Lesson;->user_progress:Lcom/boohee/one/video/entity/UserProgress;

    iget v4, v4, Lcom/boohee/one/video/entity/UserProgress;->continue_days:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->lesson:Lcom/boohee/one/video/entity/Lesson;

    iget-object v1, v1, Lcom/boohee/one/video/entity/Lesson;->difficulty:Ljava/lang/String;

    goto :goto_2

    .line 147
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lcom/boohee/one/video/ui/LessonFinishActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "http://shop.boohee.com/store/pages/befit"

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f0e018b
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 77
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->initData()V

    .line 78
    invoke-direct {p0}, Lcom/boohee/one/video/ui/LessonFinishActivity;->refreshView()V

    .line 79
    return-void
.end method
