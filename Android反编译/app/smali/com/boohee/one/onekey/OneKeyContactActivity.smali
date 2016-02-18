.class public Lcom/boohee/one/onekey/OneKeyContactActivity;
.super Lcom/boohee/main/GestureActivity;
.source "OneKeyContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final URL_PATTERN:Ljava/lang/String; = "((https?|ftp|boohee)(:\\/\\/[-_.!~*\\\'()a-zA-Z0-9;\\/?:\\@&=+\\$,%#]+))"


# instance fields
.field private final DELAY:I

.field private final REFRESH_PERIOD:I

.field private adapter:Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

.field btnSend:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e015a
    .end annotation
.end field

.field btnSendPhoto:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e9
    .end annotation
.end field

.field private contactMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/one/onekey/model/ContactMessage;",
            ">;"
        }
    .end annotation
.end field

.field etContent:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ea
    .end annotation
.end field

.field private fromId:I

.field getMessageCallback:Lcom/boohee/one/http/JsonCallback;

.field private imageUri:Landroid/net/Uri;

.field private isFirst:Z

.field private isShowAlert:Z

.field listView:Landroid/widget/ListView;

.field private loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private selection:I

.field sendCallback:Lcom/boohee/one/http/JsonCallback;

.field private tipIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/onekey/OneKeyContactActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 104
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->isFirst:Z

    .line 111
    const v0, 0x186a0

    iput v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->REFRESH_PERIOD:I

    .line 112
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->DELAY:I

    .line 184
    new-instance v0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$3;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->getMessageCallback:Lcom/boohee/one/http/JsonCallback;

    .line 318
    new-instance v0, Lcom/boohee/one/onekey/OneKeyContactActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$5;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->sendCallback:Lcom/boohee/one/http/JsonCallback;

    .line 368
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/onekey/OneKeyContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->tipIndex:I

    return v0
.end method

.method static synthetic access$1008(Lcom/boohee/one/onekey/OneKeyContactActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->tipIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->tipIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/one/onekey/OneKeyContactActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->fromId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/boohee/one/onekey/OneKeyContactActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/onekey/OneKeyContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->selection:I

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/one/onekey/OneKeyContactActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->selection:I

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/one/onekey/OneKeyContactActivity;)Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->adapter:Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/onekey/OneKeyContactActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->isFirst:Z

    return v0
.end method

.method static synthetic access$402(Lcom/boohee/one/onekey/OneKeyContactActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/one/onekey/OneKeyContactActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->showDialog(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/onekey/OneKeyContactActivity;Lboohee/lib/uploader/model/Picture;)Lcom/boohee/one/http/JsonParams;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # Lboohee/lib/uploader/model/Picture;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->createPhotoParams(Lboohee/lib/uploader/model/Picture;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/onekey/OneKeyContactActivity;Lcom/boohee/one/http/JsonParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;
    .param p1, "x1"    # Lcom/boohee/one/http/JsonParams;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->sendMessage(Lcom/boohee/one/http/JsonParams;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/boohee/one/onekey/OneKeyContactActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/onekey/OneKeyContactActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->finish()V

    .line 366
    return-void
.end method

.method public static comeOn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method private createPhotoParams(Lboohee/lib/uploader/model/Picture;)Lcom/boohee/one/http/JsonParams;
    .locals 5
    .param p1, "picture"    # Lboohee/lib/uploader/model/Picture;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 293
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 295
    .local v1, "photo":Lcom/boohee/one/http/JsonParams;
    const-string v2, "qiniu_key"

    iget-object v3, p1, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "qiniu_hash"

    iget-object v3, p1, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v4, "hash"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "origin_width"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lboohee/lib/uploader/model/Picture;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "origin_height"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lboohee/lib/uploader/model/Picture;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "msg_type"

    const-string v3, "picture"

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "photo"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 302
    return-object v0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    .line 135
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 136
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/onekey/OneKeyContactActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$1;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->adapter:Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    .line 145
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->adapter:Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->refreshLayout:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/one/onekey/OneKeyContactActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$2;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 162
    return-void
.end method

.method private sendMessage(Lcom/boohee/one/http/JsonParams;)V
    .locals 2
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;

    .prologue
    .line 315
    const-string v0, "/api/v1/messages"

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->sendCallback:Lcom/boohee/one/http/JsonCallback;

    invoke-static {v0, p1, v1, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 316
    return-void
.end method

.method private sendTextMessage()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->showLoading()V

    .line 307
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->btnSend:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 308
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 309
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "msg_type"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "msg_content"

    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->sendMessage(Lcom/boohee/one/http/JsonParams;)V

    .line 312
    return-void
.end method

.method private showDialog(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->isShowAlert:Z

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v2, "alert_message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2, v1}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    .line 234
    .local v0, "dialog":Lcom/boohee/widgets/LightAlertDialog;
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/boohee/widgets/LightAlertDialog;->setCancelable(Z)V

    .line 236
    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 238
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->isShowAlert:Z

    goto :goto_0
.end method

.method private uploadImage(Landroid/net/Uri;)V
    .locals 3
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string v0, "bingo"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/onekey/OneKeyContactActivity$4;

    invoke-direct {v2, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$4;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity;)V

    invoke-static {v0, v1, v2}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0
.end method


# virtual methods
.method closeKeyboard()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->ctx:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 168
    return-void
.end method

.method getMessages()V
    .locals 3

    .prologue
    .line 176
    .line 177
    const-string v0, "/api/v1/messages/history?count=20"

    .line 178
    .local v0, "url":Ljava/lang/String;
    iget v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->fromId:I

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->fromId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->getMessageCallback:Lcom/boohee/one/http/JsonCallback;

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 243
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-nez p1, :cond_0

    .line 247
    const-string v1, "select_result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 248
    .local v0, "mSelectPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 249
    new-instance v2, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->imageUri:Landroid/net/Uri;

    .line 250
    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->uploadImage(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->close()V

    .line 358
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e015a,
            0x7f0e01e9
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 92
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity;->etContent:Landroid/widget/EditText;

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

    .line 93
    const-string v0, "\u8bf7\u8f93\u5165\u53cd\u9988\u5185\u5bb9\u54e6~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->sendTextMessage()V

    goto :goto_0

    .line 99
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;I)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e015a -> :sswitch_0
        0x7f0e01e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->setContentView(I)V

    .line 125
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 126
    const v0, 0x7f070190

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->setTitle(I)V

    .line 127
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->closeKeyboard()V

    .line 128
    invoke-direct {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->initListView()V

    .line 129
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->showLoading()V

    .line 130
    invoke-virtual {p0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->getMessages()V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 353
    return-void
.end method
