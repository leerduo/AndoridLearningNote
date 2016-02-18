.class public Lcom/boohee/more/FeedbackActivity;
.super Lcom/boohee/main/GestureActivity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FeedbackActivity.class"


# instance fields
.field private adapter:Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

.field private edit:Landroid/widget/EditText;

.field private feedbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Feedback;",
            ">;"
        }
    .end annotation
.end field

.field private fromWhere:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private list:Landroid/widget/ListView;

.field private loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mSendDialog:Landroid/app/Dialog;

.field private mTimer:Ljava/util/Timer;

.field private tip_index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 67
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/more/FeedbackActivity;->tip_index:I

    .line 74
    const-string v0, "more"

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->fromWhere:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/more/FeedbackActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/more/FeedbackActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/boohee/more/FeedbackActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/more/FeedbackActivity;)Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->adapter:Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/more/FeedbackActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/more/FeedbackActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->fromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/more/FeedbackActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/more/FeedbackActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/more/FeedbackActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/boohee/more/FeedbackActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/more/FeedbackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/boohee/more/FeedbackActivity;->tip_index:I

    return v0
.end method

.method static synthetic access$908(Lcom/boohee/more/FeedbackActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/boohee/more/FeedbackActivity;->tip_index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/more/FeedbackActivity;->tip_index:I

    return v0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;-><init>(Lcom/boohee/more/FeedbackActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->adapter:Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    .line 96
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity;->adapter:Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    return-void
.end method

.method private showChoiceDialog()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 252
    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 288
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0a00de

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    .line 258
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03023c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "contentView":Landroid/view/View;
    const v2, 0x7f0e06da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/more/FeedbackActivity$2;

    invoke-direct {v3, p0}, Lcom/boohee/more/FeedbackActivity$2;-><init>(Lcom/boohee/more/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v2, 0x7f0e06db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/boohee/more/FeedbackActivity$3;

    invoke-direct {v3, p0}, Lcom/boohee/more/FeedbackActivity$3;-><init>(Lcom/boohee/more/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 279
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 281
    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/boohee/more/FeedbackActivity$4;

    invoke-direct {v3, p0}, Lcom/boohee/more/FeedbackActivity$4;-><init>(Lcom/boohee/more/FeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity;->mSendDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private uploadImage(Landroid/net/Uri;)V
    .locals 3
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 397
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string v0, "f"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/more/FeedbackActivity$8;

    invoke-direct {v2, p0}, Lcom/boohee/more/FeedbackActivity$8;-><init>(Lcom/boohee/more/FeedbackActivity;)V

    invoke-static {v0, v1, v2}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0
.end method


# virtual methods
.method closeKeyboard()V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity;->ctx:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 119
    return-void
.end method

.method findView()V
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f0e0150

    invoke-virtual {p0, v0}, Lcom/boohee/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->list:Landroid/widget/ListView;

    .line 101
    const v0, 0x7f0e01ea

    invoke-virtual {p0, v0}, Lcom/boohee/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f0e015a

    invoke-virtual {p0, v0}, Lcom/boohee/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e01e9

    invoke-virtual {p0, v0}, Lcom/boohee/more/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/more/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/more/FeedbackActivity$1;-><init>(Lcom/boohee/more/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-void
.end method

.method getMessage()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/boohee/more/FeedbackActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/boohee/more/FeedbackActivity$6;-><init>(Lcom/boohee/more/FeedbackActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ApnApi;->getMessages(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 362
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 384
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    if-nez p1, :cond_0

    .line 388
    const-string v1, "select_result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 389
    .local v0, "mSelectPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 390
    new-instance v2, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;

    .line 391
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/boohee/more/FeedbackActivity;->uploadImage(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 239
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "\u8bf7\u8f93\u5165\u53cd\u9988\u5185\u5bb9\u54e6~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/boohee/more/FeedbackActivity;->showChoiceDialog()V

    goto :goto_0

    .line 246
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;I)V

    goto :goto_0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e015a -> :sswitch_0
        0x7f0e01e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f0300c0

    invoke-virtual {p0, v1}, Lcom/boohee/more/FeedbackActivity;->setContentView(I)V

    .line 80
    const v1, 0x7f070192

    invoke-virtual {p0, v1}, Lcom/boohee/more/FeedbackActivity;->setTitle(I)V

    .line 81
    invoke-virtual {p0}, Lcom/boohee/more/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/more/FeedbackActivity;->fromWhere:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity;->fromWhere:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 84
    const-string v1, "more"

    iput-object v1, p0, Lcom/boohee/more/FeedbackActivity;->fromWhere:Ljava/lang/String;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/more/FeedbackActivity;->findView()V

    .line 87
    invoke-direct {p0}, Lcom/boohee/more/FeedbackActivity;->initListView()V

    .line 88
    invoke-virtual {p0}, Lcom/boohee/more/FeedbackActivity;->showLoading()V

    .line 89
    invoke-virtual {p0}, Lcom/boohee/more/FeedbackActivity;->getMessage()V

    .line 90
    invoke-virtual {p0}, Lcom/boohee/more/FeedbackActivity;->startTimer()V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 380
    :cond_0
    return-void
.end method

.method sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "fromWhere"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/boohee/more/FeedbackActivity;->showLoading()V

    .line 292
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/boohee/more/FeedbackActivity;->sendPictureMessage(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/model/Picture;)V

    .line 293
    return-void
.end method

.method sendPictureMessage(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/model/Picture;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "fromWhere"    # Ljava/lang/String;
    .param p3, "picture"    # Lboohee/lib/uploader/model/Picture;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 298
    new-instance v0, Lcom/boohee/more/FeedbackActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/boohee/more/FeedbackActivity$5;-><init>(Lcom/boohee/more/FeedbackActivity;Landroid/content/Context;)V

    invoke-static {p1, p2, p3, p0, v0}, Lcom/boohee/api/ApnApi;->sendMessage(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/model/Picture;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 340
    return-void
.end method

.method startTimer()V
    .locals 6

    .prologue
    .line 365
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/boohee/more/FeedbackActivity;->mTimer:Ljava/util/Timer;

    .line 366
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/boohee/more/FeedbackActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/more/FeedbackActivity$7;-><init>(Lcom/boohee/more/FeedbackActivity;)V

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 373
    return-void
.end method
