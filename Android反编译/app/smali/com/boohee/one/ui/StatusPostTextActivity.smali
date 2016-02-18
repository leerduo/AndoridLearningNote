.class public Lcom/boohee/one/ui/StatusPostTextActivity;
.super Lcom/boohee/main/GestureActivity;
.source "StatusPostTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;,
        Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;,
        Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;
    }
.end annotation


# static fields
.field public static final CHALLENGE_POSTS:Ljava/lang/String; = "/api/v1/challenges/%d/posts"

.field private static final CLUB_POSTS:Ljava/lang/String; = "/api/v1/clubs/%d/club_posts"

.field public static final EXTRA_ATTACHMENT:Ljava/lang/String; = "attachMent"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "extra_text"

.field private static final KEY_ADD:Ljava/lang/String; = "add"

.field public static final KEY_SELECTED_PICTURES:Ljava/lang/String; = "key_select_pictures"

.field public static final POST_SUCCESS:Ljava/lang/String; = "post_success"

.field private static final REQUEST_CODE_AT:I = 0x1

.field private static final REQUEST_CODE_FILTER:I = 0x4

.field private static final REQUEST_CODE_PICTURE:I = 0x2

.field private static final REQUEST_CODE_TAG:I = 0x5

.field static final TAG:Ljava/lang/String;

.field private static final TIMELINE_POSTS:Ljava/lang/String; = "/api/v1/posts.json"


# instance fields
.field private asyncSendPost:Ljava/lang/Runnable;

.field private attachMent:Lcom/boohee/model/status/AttachMent;

.field attachmentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0231
    .end annotation
.end field

.field charNumTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0236
    .end annotation
.end field

.field checkBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0234
    .end annotation
.end field

.field editText:Lcom/boohee/widgets/EmojiEditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e022f
    .end annotation
.end field

.field private group_id:I

.field ivAttachment:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0232
    .end annotation
.end field

.field mActivity:Lcom/boohee/one/ui/StatusPostTextActivity;

.field mAdapter:Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

.field mCurEditPicPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mPicGridView:Landroid/widget/GridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0230
    .end annotation
.end field

.field mPicUploadListener:Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;

.field final mSelectPictures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendApi:Ljava/lang/String;

.field maxUploadPicNums:I

.field private popWindow:Lcom/boohee/widgets/DraftPopwindow;

.field private preference:Lcom/boohee/database/UserPreference;

.field syncFood:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0235
    .end annotation
.end field

.field tvAttachment:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0233
    .end annotation
.end field

.field private final vibrate:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/StatusPostTextActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 75
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 92
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->preference:Lcom/boohee/database/UserPreference;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mHandler:Landroid/os/Handler;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->vibrate:[J

    .line 99
    iput v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->group_id:I

    .line 100
    const-string v0, "/api/v1/posts.json"

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSendApi:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    .line 123
    const/16 v0, 0x9

    iput v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->maxUploadPicNums:I

    .line 125
    iput v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mCurEditPicPosition:I

    .line 478
    new-instance v0, Lcom/boohee/one/ui/StatusPostTextActivity$2;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/StatusPostTextActivity$2;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->asyncSendPost:Ljava/lang/Runnable;

    .line 545
    return-void

    .line 98
    :array_0
    .array-data 8
        0x0
        0x12c
    .end array-data
.end method

.method static synthetic access$1000(Lcom/boohee/one/ui/StatusPostTextActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity;->sendSuccess(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/StatusPostTextActivity;)Lcom/boohee/database/UserPreference;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->preference:Lcom/boohee/database/UserPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/StatusPostTextActivity;)Lcom/boohee/model/status/AttachMent;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/StatusPostTextActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity;->removeTempFilterRecord(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/StatusPostTextActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->openPhotoPicker()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/StatusPostTextActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity;->startSend(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/StatusPostTextActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity;->sendPost(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/StatusPostTextActivity;Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/PendingIntent;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/boohee/one/ui/StatusPostTextActivity;->doSend(Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/one/ui/StatusPostTextActivity;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/StatusPostTextActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/PendingIntent;
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/boohee/one/ui/StatusPostTextActivity;->sendFaild(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    new-instance v1, Lcom/boohee/one/ui/StatusPostTextActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/StatusPostTextActivity$1;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/EmojiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    return-void
.end method

.method public static comeWithAttachment(Landroid/content/Context;Lcom/boohee/model/status/AttachMent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachment"    # Lcom/boohee/model/status/AttachMent;

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "attachMent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public static comeWithExtraText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "extra_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method private createPicJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "pictureList":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 685
    .local v4, "photos":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lboohee/lib/uploader/model/Picture;

    .line 686
    .local v5, "picture":Lboohee/lib/uploader/model/Picture;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 687
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 688
    .local v3, "photo":Lorg/json/JSONObject;
    const-string v6, "qiniu_key"

    iget-object v7, v5, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v8, "key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    iget-object v6, v5, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v7, "hash"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "hash":Ljava/lang/String;
    const-string v6, "qiniu_hash"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string v7, "_type"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Photo::Boohee"

    :goto_1
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    const-string v6, "origin_width"

    iget v7, v5, Lboohee/lib/uploader/model/Picture;->width:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string v6, "origin_height"

    iget v7, v5, Lboohee/lib/uploader/model/Picture;->height:I

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "photo":Lorg/json/JSONObject;
    .end local v5    # "picture":Lboohee/lib/uploader/model/Picture;
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 702
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v4

    .line 691
    .restart local v1    # "hash":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "photo":Lorg/json/JSONObject;
    .restart local v5    # "picture":Lboohee/lib/uploader/model/Picture;
    :cond_2
    :try_start_1
    const-string v6, "Photo::Qiniu"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createPostJSONObject(Ljava/util/List;)Lcom/boohee/one/http/JsonParams;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)",
            "Lcom/boohee/one/http/JsonParams;"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "pictureList":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    iget-object v4, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v4}, Lcom/boohee/widgets/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "body":Ljava/lang/String;
    new-instance v3, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v3}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 643
    .local v3, "root":Lcom/boohee/one/http/JsonParams;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 645
    .local v2, "post":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "body"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    const-string v4, "category"

    const-string v5, "\u5176\u4ed6"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    iget-object v4, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 649
    const-string v4, "private"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 655
    :goto_0
    iget v4, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->group_id:I

    if-lez v4, :cond_0

    .line 656
    const-string v4, "group_id"

    iget v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->group_id:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 660
    :cond_0
    iget-object v4, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    if-eqz v4, :cond_1

    .line 661
    const-string v4, "attachments"

    new-instance v5, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    invoke-static {v5}, Lcom/boohee/utils/FastJsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 666
    const-string v4, "photos"

    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity;->createPicJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v4, "type"

    const-string v5, "image"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    :cond_2
    const-string v4, "post"

    invoke-virtual {v3, v4, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 673
    :goto_1
    return-object v3

    .line 651
    :cond_3
    const-string v4, "private"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private doSend(Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 10
    .param p2, "isNeedSync"    # Z
    .param p3, "sendFaildIntent"    # Landroid/app/PendingIntent;
    .param p4, "nfId"    # I
    .param p5, "syncData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;Z",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "pictureList":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    iget-object v7, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v8, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSendApi:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/boohee/one/ui/StatusPostTextActivity;->createPostJSONObject(Ljava/util/List;)Lcom/boohee/one/http/JsonParams;

    move-result-object v9

    new-instance v0, Lcom/boohee/one/ui/StatusPostTextActivity$3;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    move-object v1, p0

    move v3, p2

    move-object v4, p5

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/boohee/one/ui/StatusPostTextActivity$3;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;Landroid/content/Context;ZLjava/lang/String;ILandroid/app/PendingIntent;)V

    invoke-static {v7, v8, v9, v0}, Lcom/boohee/api/StatusApi;->sendPost(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    .line 635
    return-void
.end method

.method private editTextClicked()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->open(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 354
    return-void
.end method

.method private getItemSize()I
    .locals 6

    .prologue
    .line 441
    const/4 v0, 0x4

    .line 442
    .local v0, "columNum":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 443
    .local v2, "gridViewWidth":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 444
    .local v3, "space":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 445
    .local v1, "gridViewPadding":I
    mul-int/lit8 v4, v3, 0x3

    sub-int v4, v2, v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    return v4
.end method

.method private getSendFaildIntent(IZLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "nfId"    # I
    .param p2, "isNeedSync"    # Z
    .param p3, "syncData"    # Ljava/lang/String;

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 494
    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    const-string v2, "key_select_pictures"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 496
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 497
    const-string v2, "extra_text"

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v3}, Lcom/boohee/widgets/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v2, "FILTER_DATA"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v2, "IS_NEED_SYNC"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    const-string v2, "attachMent"

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 501
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private handleUnSendPost()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 396
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->popWindow:Lcom/boohee/widgets/DraftPopwindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->popWindow:Lcom/boohee/widgets/DraftPopwindow;

    invoke-virtual {v0}, Lcom/boohee/widgets/DraftPopwindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->popWindow:Lcom/boohee/widgets/DraftPopwindow;

    invoke-virtual {v0}, Lcom/boohee/widgets/DraftPopwindow;->dismiss()V

    .line 408
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v0}, Lcom/boohee/widgets/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v4, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    if-eqz v0, :cond_3

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->popWindow:Lcom/boohee/widgets/DraftPopwindow;

    if-nez v0, :cond_2

    .line 403
    new-instance v0, Lcom/boohee/widgets/DraftPopwindow;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/StatusPostTextActivity$PopClickListener;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;Lcom/boohee/one/ui/StatusPostTextActivity$1;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/boohee/widgets/DraftPopwindow;-><init>(Landroid/content/Context;Lcom/boohee/widgets/DraftPopwindow$IPopClickListener;Z)V

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->popWindow:Lcom/boohee/widgets/DraftPopwindow;

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->popWindow:Lcom/boohee/widgets/DraftPopwindow;

    invoke-virtual {v0}, Lcom/boohee/widgets/DraftPopwindow;->show()V

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->finish()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    iput-object p0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mActivity:Lcom/boohee/one/ui/StatusPostTextActivity;

    .line 189
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 190
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 191
    const-string v1, "group_id"

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->group_id:I

    .line 192
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_select_pictures"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 196
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->initSendApi()V

    .line 199
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "attachMent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/AttachMent;

    iput-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->restoreDraft()V

    .line 205
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->initPicGridView()V

    .line 207
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    iget-object v2, v2, Lcom/boohee/model/status/AttachMent;->pic:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ivAttachment:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 210
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->tvAttachment:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    iget-object v2, v2, Lcom/boohee/model/status/AttachMent;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_2
    return-void
.end method

.method private initPicGridView()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    iget v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->maxUploadPicNums:I

    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getItemSize()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mAdapter:Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    .line 230
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mPicGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mAdapter:Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mPicGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/StatusPostTextActivity$OnItemClick;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;Lcom/boohee/one/ui/StatusPostTextActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    return-void
.end method

.method private initSendApi()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 215
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "clubId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, "clubId":I
    if-lez v1, :cond_0

    .line 218
    const-string v2, "/api/v1/clubs/%d/club_posts"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSendApi:Ljava/lang/String;

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "challengeId"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "challengId":I
    if-lez v0, :cond_1

    .line 222
    const-string v2, "/api/v1/challenges/%d/posts"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSendApi:Ljava/lang/String;

    .line 225
    .end local v0    # "challengId":I
    .end local v1    # "clubId":I
    :cond_1
    sget-object v2, Lcom/boohee/one/ui/StatusPostTextActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSendApi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSendApi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private openPhotoPicker()V
    .locals 5

    .prologue
    .line 469
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-static {v1, v2}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, "tempSelectPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 472
    const-string v1, "add"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 474
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mActivity:Lcom/boohee/one/ui/StatusPostTextActivity;

    const/4 v2, 0x1

    iget v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->maxUploadPicNums:I

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v0, v4}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    .line 475
    return-void
.end method

.method private refreshSyncCheckBox(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 350
    return-void
.end method

.method private removeTempFilterRecord(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 341
    invoke-static {p1}, Lcom/boohee/utils/FilterDataSyncUtil;->removeFilterTag(Landroid/content/Context;)V

    .line 342
    invoke-static {}, Lcom/boohee/utils/FilterDataSyncUtil;->getTagData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->refreshSyncCheckBox(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method private restoreDraft()V
    .locals 5

    .prologue
    .line 364
    const-string v2, "extra_text"

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/StatusPostTextActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "extraStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->preference:Lcom/boohee/database/UserPreference;

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/model/status/DraftBean;->parse(Ljava/lang/String;)Lcom/boohee/model/status/DraftBean;

    move-result-object v0

    .line 366
    .local v0, "bean":Lcom/boohee/model/status/DraftBean;
    if-nez v0, :cond_1

    .line 367
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra_text"

    invoke-virtual {p0, v4}, Lcom/boohee/one/ui/StatusPostTextActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {v0}, Lcom/boohee/model/status/DraftBean;->getSendTextMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/boohee/model/status/DraftBean;->getSendTextMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v0}, Lcom/boohee/model/status/DraftBean;->getSendTextMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/EmojiEditText;->append(Ljava/lang/CharSequence;)V

    .line 381
    :goto_1
    iget-object v2, v0, Lcom/boohee/model/status/DraftBean;->selectedPictures:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/boohee/model/status/DraftBean;->selectedPictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 383
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/boohee/model/status/DraftBean;->selectedPictures:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 384
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    iget-object v2, v0, Lcom/boohee/model/status/DraftBean;->attachMent:Lcom/boohee/model/status/AttachMent;

    if-eqz v2, :cond_3

    .line 388
    iget-object v2, v0, Lcom/boohee/model/status/DraftBean;->attachMent:Lcom/boohee/model/status/AttachMent;

    iput-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->attachMent:Lcom/boohee/model/status/AttachMent;

    .line 391
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->preference:Lcom/boohee/database/UserPreference;

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_4
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v2, v1}, Lcom/boohee/widgets/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v0}, Lcom/boohee/model/status/DraftBean;->getSendTextMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/EmojiEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private sendFaild(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "sendFaildIntent"    # Landroid/app/PendingIntent;
    .param p3, "nfId"    # I

    .prologue
    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u53d1\u9001\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 538
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendPost(I)V
    .locals 9
    .param p1, "nfId"    # I

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILTER_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "syncData":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/boohee/utils/FilterDataSyncUtil;->getSyncData()Ljava/lang/String;

    move-result-object v5

    .line 586
    :cond_0
    const/4 v2, 0x0

    .line 587
    .local v2, "isNeedSync":Z
    invoke-direct {p0, p1, v2, v5}, Lcom/boohee/one/ui/StatusPostTextActivity;->getSendFaildIntent(IZLjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 588
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 589
    new-instance v0, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;-><init>(Lcom/boohee/one/ui/StatusPostTextActivity;ZLandroid/app/PendingIntent;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mPicUploadListener:Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;

    .line 590
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 591
    .local v8, "pathArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 593
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    aput-object v7, v8, v6

    .line 591
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 597
    .end local v7    # "path":Ljava/lang/String;
    :cond_2
    const-string v0, "p"

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mPicUploadListener:Lcom/boohee/one/ui/StatusPostTextActivity$PicUploadListener;

    invoke-static {v0, v8, v1}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;[Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    .line 601
    .end local v6    # "i":I
    .end local v8    # "pathArray":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->finish()V

    .line 602
    return-void

    .line 599
    :cond_3
    const/4 v1, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/boohee/one/ui/StatusPostTextActivity;->doSend(Ljava/util/List;ZLandroid/app/PendingIntent;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private sendSuccess(I)V
    .locals 3
    .param p1, "nfId"    # I

    .prologue
    .line 520
    const-string v0, "\u606d\u559c\u60a8\uff0c\u53d1\u9001\u6210\u529f\uff01"

    .line 522
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f02055d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->vibrate:[J

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 524
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 525
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static startChallengePost(Landroid/content/Context;I)V
    .locals 2
    .param p0, "srcContext"    # Landroid/content/Context;
    .param p1, "challengeId"    # I

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "challengeId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public static startClubPost(Landroid/content/Context;I)V
    .locals 2
    .param p0, "srcContext"    # Landroid/content/Context;
    .param p1, "clubId"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "clubId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private startSend(I)V
    .locals 5
    .param p1, "nfId"    # I

    .prologue
    .line 506
    const-string v0, "\u6b63\u5728\u53d1\u9001"

    .line 508
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f02055e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x14

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 511
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mNFBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/utils/FilterDataSyncUtil;->removeFilterTag(Landroid/content/Context;)V

    .line 516
    return-void

    .line 512
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    if-nez p3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 283
    :pswitch_1
    const-string v5, "contact"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "atString":Ljava/lang/String;
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v5, v0}, Lcom/boohee/widgets/EmojiEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    .end local v0    # "atString":Ljava/lang/String;
    :pswitch_2
    const-string v5, "tag"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "tagString":Ljava/lang/String;
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/boohee/widgets/EmojiEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    .end local v2    # "tagString":Ljava/lang/String;
    :pswitch_3
    const-string v5, "select_result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 294
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 295
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    const-string v6, "add"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mAdapter:Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 302
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 303
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_2

    const-string v1, ""

    .line 304
    .local v1, "path":Ljava/lang/String;
    :goto_1
    iget v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mCurEditPicPosition:I

    if-ltz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 305
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    iget v6, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mCurEditPicPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 309
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mSelectPictures:Ljava/util/ArrayList;

    iget v6, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mCurEditPicPosition:I

    invoke-virtual {v5, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mAdapter:Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/ui/adapter/PostPicturePreviewAdapter;->notifyDataSetChanged()V

    .line 311
    iget-object v5, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/boohee/utils/FilterDataSyncUtil;->getTagData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v7}, Lcom/boohee/widgets/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/boohee/widgets/EmojiEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 303
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 359
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->handleUnSendPost()V

    .line 360
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e022f,
            0x7f0e0237,
            0x7f0e0238,
            0x7f0e0239
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 241
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->editTextClicked()V

    goto :goto_0

    .line 245
    :sswitch_1
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->openPhotoPicker()V

    goto :goto_0

    .line 249
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/ContactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 254
    :sswitch_3
    iget-object v0, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/HotTagActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x7f0e022f -> :sswitch_0
        0x7f0e0237 -> :sswitch_1
        0x7f0e0238 -> :sswitch_2
        0x7f0e0239 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->setContentView(I)V

    .line 159
    const v0, 0x7f070505

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->setTitle(I)V

    .line 160
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 161
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->addListener()V

    .line 162
    invoke-direct {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->init()V

    .line 163
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "status_sendPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 320
    const/4 v0, 0x0

    const-string v1, "\u786e\u5b9a"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 321
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 327
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    invoke-virtual {v2}, Lcom/boohee/widgets/EmojiEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "body":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const-string v2, "\u72b6\u6001\u4e0d\u80fd\u4e3a\u7a7a\u54e6~"

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 336
    .end local v0    # "body":Ljava/lang/String;
    :goto_0
    return v1

    .line 332
    .restart local v0    # "body":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 333
    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->asyncSendPost:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 336
    .end local v0    # "body":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 265
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/EditText;

    iget-object v2, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->editText:Lcom/boohee/widgets/EmojiEditText;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/boohee/utils/ViewUtils;->setSelection([Landroid/widget/EditText;)V

    .line 266
    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FILTER_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "syncData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-direct {p0, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->refreshSyncCheckBox(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity;->syncFood:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/boohee/one/ui/StatusPostTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IS_NEED_SYNC"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/boohee/utils/FilterDataSyncUtil;->getTagData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/boohee/one/ui/StatusPostTextActivity;->refreshSyncCheckBox(Ljava/lang/String;)V

    goto :goto_0
.end method
