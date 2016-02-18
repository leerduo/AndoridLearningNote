.class public Lcom/boohee/more/ViewTipActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "ViewTipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/ViewTipActivity$SaveImageTask;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field public static final FROM_NOTIFICATION:Ljava/lang/String; = "from_notification"

.field public static final IMAGE_PREFIX:Ljava/lang/String; = "http://up.boohee.cn/house/u/one/reminder/%1d.jpg"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private backImage:Landroid/widget/ImageView;

.field private contentImage:Landroid/widget/ImageView;

.field private contentText:Landroid/widget/TextView;

.field private copyText:Landroid/widget/TextView;

.field private imageUrl:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private noticeId:I

.field private saveText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/boohee/more/ViewTipActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/ViewTipActivity;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/boohee/more/ViewTipActivity;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d011a
        0x7f0d011b
        0x7f0d011c
        0x7f0d011d
        0x7f0d011e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/ViewTipActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/ViewTipActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->contentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/ViewTipActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->contentImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/more/ViewTipActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/ViewTipActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/boohee/more/ViewTipActivity;->COLORS:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/more/ViewTipActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/ViewTipActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/more/ViewTipActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/ViewTipActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private copyText()V
    .locals 6

    .prologue
    .line 130
    :try_start_0
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/boohee/more/ViewTipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 131
    .local v3, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 132
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Lcom/boohee/more/ViewTipActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 133
    .local v2, "manager":Landroid/content/ClipboardManager;
    iget-object v4, p0, Lcom/boohee/more/ViewTipActivity;->message:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/more/ViewTipActivity;->message:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 134
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 135
    const-string v4, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    invoke-static {v4}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v2    # "manager":Landroid/content/ClipboardManager;
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findViews()V
    .locals 5

    .prologue
    .line 58
    const v0, 0x7f0e0581

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/more/ViewTipActivity;->backImage:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->backImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0e077d

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0e010a

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/ViewTipActivity;->copyText:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->copyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0e02e6

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/ViewTipActivity;->contentText:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0e020b

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/more/ViewTipActivity;->contentImage:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->contentImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const-string v0, "http://up.boohee.cn/house/u/one/reminder/%1d.jpg"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/boohee/more/ViewTipActivity;->noticeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/ViewTipActivity;->imageUrl:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/more/ViewTipActivity;->contentImage:Landroid/widget/ImageView;

    const v3, 0x7f0d012e

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    new-instance v4, Lcom/boohee/more/ViewTipActivity$1;

    invoke-direct {v4, p0}, Lcom/boohee/more/ViewTipActivity$1;-><init>(Lcom/boohee/more/ViewTipActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 91
    return-void
.end method

.method private handleIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/boohee/more/ViewTipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notice_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/more/ViewTipActivity;->noticeId:I

    .line 96
    const-string v1, "notice_message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/ViewTipActivity;->message:Ljava/lang/String;

    .line 97
    sget-object v1, Lcom/boohee/more/ViewTipActivity;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/more/ViewTipActivity;->message:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "from_notification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity;->ctx:Landroid/content/Context;

    const-string v2, "other_clickRemind"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method private setTipText()V
    .locals 3

    .prologue
    .line 105
    iget v2, p0, Lcom/boohee/more/ViewTipActivity;->noticeId:I

    if-lez v2, :cond_0

    .line 106
    new-instance v1, Lcom/boohee/modeldao/NoticeDao;

    iget-object v2, p0, Lcom/boohee/more/ViewTipActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/modeldao/NoticeDao;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    iget v2, p0, Lcom/boohee/more/ViewTipActivity;->noticeId:I

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/NoticeDao;->selectWithId(I)Lcom/boohee/model/Notice;

    move-result-object v0

    .line 108
    .local v0, "notice":Lcom/boohee/model/Notice;
    invoke-virtual {v1, v0}, Lcom/boohee/modeldao/NoticeDao;->updateIsOpened(Lcom/boohee/model/Notice;)Z

    .line 109
    invoke-virtual {v1}, Lcom/boohee/modeldao/NoticeDao;->closeDB()V

    .line 111
    .end local v0    # "notice":Lcom/boohee/model/Notice;
    .end local v1    # "noticeDao":Lcom/boohee/modeldao/NoticeDao;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 117
    :sswitch_0
    invoke-virtual {p0}, Lcom/boohee/more/ViewTipActivity;->onBackPressed()V

    goto :goto_0

    .line 120
    :sswitch_1
    invoke-virtual {p0}, Lcom/boohee/more/ViewTipActivity;->onBackPressed()V

    goto :goto_0

    .line 123
    :sswitch_2
    invoke-direct {p0}, Lcom/boohee/more/ViewTipActivity;->copyText()V

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x7f0e010a -> :sswitch_2
        0x7f0e020b -> :sswitch_1
        0x7f0e0581 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030278

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f07061a

    invoke-virtual {p0, v0}, Lcom/boohee/more/ViewTipActivity;->setTitle(I)V

    .line 52
    invoke-direct {p0}, Lcom/boohee/more/ViewTipActivity;->handleIntent()V

    .line 53
    invoke-direct {p0}, Lcom/boohee/more/ViewTipActivity;->findViews()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/more/ViewTipActivity;->setTipText()V

    .line 55
    return-void
.end method
