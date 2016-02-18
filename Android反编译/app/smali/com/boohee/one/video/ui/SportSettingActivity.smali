.class public Lcom/boohee/one/video/ui/SportSettingActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SportSettingActivity.java"


# instance fields
.field checkBox:Lcom/boohee/widgets/AnimCheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0216
    .end annotation
.end field

.field clvCleanCache:Lcom/boohee/myview/CommonLineView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0218
    .end annotation
.end field

.field private remindHour:I

.field private remindMinute:I

.field timeSetListener:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0217
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 53
    iput v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindHour:I

    .line 54
    iput v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindMinute:I

    .line 191
    new-instance v0, Lcom/boohee/one/video/ui/SportSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/boohee/one/video/ui/SportSettingActivity$6;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V

    iput-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->timeSetListener:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/video/ui/SportSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportSettingActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/video/ui/SportSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportSettingActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/video/ui/SportSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportSettingActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/one/video/ui/SportSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindHour:I

    return p1
.end method

.method static synthetic access$402(Lcom/boohee/one/video/ui/SportSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/video/ui/SportSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindMinute:I

    return p1
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getCacheSize()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/boohee/one/video/ui/SportSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/boohee/one/video/ui/SportSettingActivity$2;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/SportSettingActivity$2;->start()V

    .line 94
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    iget-object v2, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->checkBox:Lcom/boohee/widgets/AnimCheckBox;

    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefSoprtRemind()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/AnimCheckBox;->setChecked(Z)V

    .line 67
    iget-object v2, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->checkBox:Lcom/boohee/widgets/AnimCheckBox;

    new-instance v3, Lcom/boohee/one/video/ui/SportSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/boohee/one/video/ui/SportSettingActivity$1;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/AnimCheckBox;->setOnCheckedChangeListener(Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;)V

    .line 73
    invoke-static {}, Lcom/boohee/database/OnePreference;->getPrefSportRemindTime()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "time":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/CharSequence;

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "times":[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->tvTime:Landroid/widget/TextView;

    const-string v3, "\u6bcf\u5929 %s\u70b9 %s\u5206"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v1, v6

    aput-object v5, v4, v6

    aget-object v5, v1, v7

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v1    # "times":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showTimePickerDialog()V
    .locals 6

    .prologue
    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    .local v0, "now":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->timeSetListener:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v1

    .line 186
    .local v1, "tpd":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->vibrate(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setAccentColor(I)V

    .line 188
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "Timepickerdialog"

    invoke-virtual {v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private sportQuestions()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f0704f0

    invoke-static {v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 161
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const v1, 0x7f07001c

    new-instance v2, Lcom/boohee/one/video/ui/SportSettingActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/video/ui/SportSettingActivity$4;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity;Lcom/boohee/widgets/LightAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 167
    const-string v1, "\u597d\u7684"

    new-instance v2, Lcom/boohee/one/video/ui/SportSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/SportSettingActivity$5;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 176
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 177
    return-void
.end method


# virtual methods
.method public cleanDownloadCahce()V
    .locals 3

    .prologue
    .line 98
    const v0, 0x7f070162

    invoke-static {p0, v0}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f07001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const v1, 0x7f070082

    new-instance v2, Lcom/boohee/one/video/ui/SportSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/video/ui/SportSettingActivity$3;-><init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0214,
            0x7f0e0215,
            0x7f0e0218,
            0x7f0e0213
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->sportQuestions()V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->showTimePickerDialog()V

    goto :goto_0

    .line 150
    :pswitch_3
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->cleanDownloadCahce()V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/one/video/ui/VideoHistoryActivity;->comeOn(Landroid/content/Context;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f0e0213
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Lcom/boohee/one/video/ui/SportSettingActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 61
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->getCacheSize()V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 135
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 124
    :pswitch_0
    iget v1, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindHour:I

    if-eqz v1, :cond_1

    .line 125
    const-string v1, "%d#%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->remindMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/OnePreference;->setPrefSportRemindTime(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1}, Lcom/boohee/more/SportRemindReceiver;->start(Landroid/content/Context;)V

    .line 129
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    const-string v2, "REFRESH"

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 131
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->comeWithFirst(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/boohee/one/video/ui/SportSettingActivity;->finish()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x7f0e07df
        :pswitch_0
    .end packed-switch
.end method
