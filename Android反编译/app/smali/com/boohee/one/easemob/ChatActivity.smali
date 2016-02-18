.class public Lcom/boohee/one/easemob/ChatActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/easemob/EMEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/easemob/ChatActivity$12;,
        Lcom/boohee/one/easemob/ChatActivity$GroupListener;,
        Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;
    }
.end annotation


# static fields
.field public static final CHATTYPE_CHATROOM:I = 0x3

.field public static final CHATTYPE_GROUP:I = 0x2

.field public static final CHATTYPE_SINGLE:I = 0x1

.field public static final COPY_IMAGE:Ljava/lang/String; = "EASEMOBIMG"

.field public static final REQUEST_CODE_ADD_TO_BLACKLIST:I = 0x19

.field public static final REQUEST_CODE_CAMERA:I = 0x12

.field public static final REQUEST_CODE_CLICK_DESTORY_IMG:I = 0x14

.field public static final REQUEST_CODE_CONTEXT_MENU:I = 0x3

.field public static final REQUEST_CODE_COPY_AND_PASTE:I = 0xb

.field public static final REQUEST_CODE_DOWNLOAD_VIDEO:I = 0xd

.field public static final REQUEST_CODE_DOWNLOAD_VOICE:I = 0xf

.field private static final REQUEST_CODE_EMPTY_HISTORY:I = 0x2

.field public static final REQUEST_CODE_FILE:I = 0xa

.field public static final REQUEST_CODE_GROUP_DETAIL:I = 0x15

.field public static final REQUEST_CODE_LOCAL:I = 0x13

.field public static final REQUEST_CODE_LOCATION:I = 0x8

.field private static final REQUEST_CODE_MAP:I = 0x4

.field public static final REQUEST_CODE_NET_DISK:I = 0x9

.field public static final REQUEST_CODE_PICK_VIDEO:I = 0xc

.field public static final REQUEST_CODE_PICTURE:I = 0x7

.field public static final REQUEST_CODE_SELECT_FILE:I = 0x18

.field public static final REQUEST_CODE_SELECT_USER_CARD:I = 0x10

.field public static final REQUEST_CODE_SELECT_VIDEO:I = 0x17

.field public static final REQUEST_CODE_SEND_USER_CARD:I = 0x11

.field public static final REQUEST_CODE_TEXT:I = 0x5

.field public static final REQUEST_CODE_VIDEO:I = 0xe

.field public static final REQUEST_CODE_VOICE:I = 0x6

.field public static final RESULT_CODE_COPY:I = 0x1

.field public static final RESULT_CODE_DELETE:I = 0x2

.field public static final RESULT_CODE_DWONLOAD:I = 0x5

.field public static final RESULT_CODE_EXIT_GROUP:I = 0x7

.field public static final RESULT_CODE_FORWARD:I = 0x3

.field public static final RESULT_CODE_OPEN:I = 0x4

.field public static final RESULT_CODE_TO_CLOUD:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field public static activityInstance:Lcom/boohee/one/easemob/ChatActivity;

.field public static resendPos:I


# instance fields
.field private IM_TEAM_MEMBERS_REFRESHED_TIME:Ljava/lang/String;

.field private REFRESH_PERIOD:I

.field private adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

.field private btnContainer:Landroid/widget/LinearLayout;

.field private btnMore:Landroid/widget/Button;

.field private buttonPressToSpeak:Landroid/view/View;

.field private buttonSend:Landroid/view/View;

.field private buttonSetModeKeyboard:Landroid/view/View;

.field private buttonSetModeVoice:Landroid/view/View;

.field private cameraFile:Ljava/io/File;

.field private chatType:I

.field private clipboard:Landroid/text/ClipboardManager;

.field private conversation:Lcom/easemob/chat/EMConversation;

.field private edittext_layout:Landroid/widget/RelativeLayout;

.field private emojiIconContainer:Landroid/widget/LinearLayout;

.field private expressionViewpager:Landroid/support/v4/view/ViewPager;

.field public group:Lcom/easemob/chat/EMGroup;

.field private groupListener:Lcom/boohee/one/easemob/ChatActivity$GroupListener;

.field private haveMoreData:Z

.field public isRobot:Z

.field private isloading:Z

.field private iv_emoticons_checked:Landroid/widget/ImageView;

.field private iv_emoticons_normal:Landroid/widget/ImageView;

.field private listView:Landroid/widget/ListView;

.field private loadmorePB:Landroid/widget/ProgressBar;

.field private locationImgview:Landroid/widget/ImageView;

.field private mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

.field private manager:Landroid/view/inputmethod/InputMethodManager;

.field private micImage:Landroid/widget/ImageView;

.field private micImageHandler:Landroid/os/Handler;

.field private micImages:[Landroid/graphics/drawable/Drawable;

.field private more:Landroid/view/View;

.field private final pagesize:I

.field public playMsgId:Ljava/lang/String;

.field private position:I

.field private recordingContainer:Landroid/view/View;

.field private recordingHint:Landroid/widget/TextView;

.field private reslist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public room:Lcom/easemob/chat/EMChatRoom;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private toChatUsername:Ljava/lang/String;

.field private videoCallBtn:Landroid/widget/ImageView;

.field private voiceCallBtn:Landroid/widget/ImageView;

.field private voiceRecorder:Lcom/easemob/util/VoiceRecorder;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/boohee/one/easemob/ChatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/easemob/ChatActivity;->TAG:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/boohee/one/easemob/ChatActivity;->activityInstance:Lcom/boohee/one/easemob/ChatActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 166
    const/16 v0, 0x14

    iput v0, p0, Lcom/boohee/one/easemob/ChatActivity;->pagesize:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/one/easemob/ChatActivity;->haveMoreData:Z

    .line 173
    new-instance v0, Lcom/boohee/one/easemob/ChatActivity$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/ChatActivity$1;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    iput-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->micImageHandler:Landroid/os/Handler;

    .line 184
    const-string v0, "IM_TEAM_MEMBERS_REFRESH_TIME"

    iput-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->IM_TEAM_MEMBERS_REFRESHED_TIME:Ljava/lang/String;

    .line 189
    const/16 v0, 0x30

    iput v0, p0, Lcom/boohee/one/easemob/ChatActivity;->REFRESH_PERIOD:I

    .line 1680
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/easemob/ChatActivity;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->micImages:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->micImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/one/easemob/ChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/boohee/one/easemob/ChatActivity;->isloading:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/boohee/one/easemob/ChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/boohee/one/easemob/ChatActivity;->isloading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/one/easemob/ChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/boohee/one/easemob/ChatActivity;->haveMoreData:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/boohee/one/easemob/ChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/boohee/one/easemob/ChatActivity;->haveMoreData:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/boohee/one/easemob/ChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/adapter/MessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/one/easemob/ChatActivity;)Lcom/easemob/chat/EMConversation;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/one/easemob/ChatActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/one/easemob/ChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/boohee/one/easemob/ChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/boohee/one/easemob/ChatActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->buttonSetModeKeyboard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/widget/PasteEditText;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->btnMore:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->buttonSend:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/ChatActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private addUserToBlacklist(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1541
    return-void
.end method

.method public static comeOnWithGroupChat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chatType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method private getGridChildView(I)Landroid/view/View;
    .locals 9
    .param p1, "i"    # I

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    .line 1366
    const v5, 0x7f0300be

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1367
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e0004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/onekey/widget/ExpandGridView;

    .line 1368
    .local v1, "gv":Lcom/boohee/one/onekey/widget/ExpandGridView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ne p1, v7, :cond_1

    .line 1370
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->reslist:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 1371
    .local v3, "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1375
    .end local v3    # "list1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-string v5, "delete_expression"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    new-instance v0, Lcom/boohee/one/easemob/adapter/ExpressionAdapter;

    invoke-direct {v0, p0, v7, v2}, Lcom/boohee/one/easemob/adapter/ExpressionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1377
    .local v0, "expressionAdapter":Lcom/boohee/one/easemob/adapter/ExpressionAdapter;
    invoke-virtual {v1, v0}, Lcom/boohee/one/onekey/widget/ExpandGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1378
    new-instance v5, Lcom/boohee/one/easemob/ChatActivity$11;

    invoke-direct {v5, p0, v0}, Lcom/boohee/one/easemob/ChatActivity$11;-><init>(Lcom/boohee/one/easemob/ChatActivity;Lcom/boohee/one/easemob/adapter/ExpressionAdapter;)V

    invoke-virtual {v1, v5}, Lcom/boohee/one/onekey/widget/ExpandGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1422
    return-object v4

    .line 1372
    .end local v0    # "expressionAdapter":Lcom/boohee/one/easemob/adapter/ExpressionAdapter;
    :cond_1
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 1373
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->reslist:Ljava/util/List;

    iget-object v6, p0, Lcom/boohee/one/easemob/ChatActivity;->reslist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v8, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1504
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v0, v2, :cond_0

    .line 1505
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->manager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1508
    :cond_0
    return-void
.end method

.method private refreshUI()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 817
    :cond_0
    new-instance v0, Lcom/boohee/one/easemob/ChatActivity$10;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/ChatActivity$10;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private refreshUIWithNewMessage()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    if-nez v0, :cond_0

    .line 810
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v0, Lcom/boohee/one/easemob/ChatActivity$9;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/ChatActivity$9;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private selectFileFromLocal()V
    .locals 3

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 848
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    :goto_0
    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lcom/boohee/one/easemob/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 856
    return-void

    .line 853
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private sendFile(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1130
    return-void
.end method

.method private sendLocationMsg(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "imagePath"    # Ljava/lang/String;
    .param p6, "locationAddress"    # Ljava/lang/String;

    .prologue
    .line 1055
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v1}, Lcom/easemob/chat/EMMessage;->createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v6

    .line 1057
    .local v6, "message":Lcom/easemob/chat/EMMessage;
    iget v1, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1058
    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v6, v1}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    .line 1062
    :cond_0
    :goto_0
    new-instance v0, Lcom/easemob/chat/LocationMessageBody;

    move-object v1, p6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/easemob/chat/LocationMessageBody;-><init>(Ljava/lang/String;DD)V

    .line 1063
    .local v0, "locBody":Lcom/easemob/chat/LocationMessageBody;
    invoke-virtual {v6, v0}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    .line 1064
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/easemob/chat/EMMessage;->setReceipt(Ljava/lang/String;)V

    .line 1065
    iget-boolean v1, p0, Lcom/boohee/one/easemob/ChatActivity;->isRobot:Z

    if-eqz v1, :cond_1

    .line 1066
    const-string v1, "em_robot_message"

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v1, v6}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;)V

    .line 1069
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1070
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSelectLast()V

    .line 1071
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V

    .line 1073
    return-void

    .line 1059
    .end local v0    # "locBody":Lcom/easemob/chat/LocationMessageBody;
    :cond_2
    iget v1, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1060
    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v6, v1}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    goto :goto_0
.end method

.method private sendPicByUri(Landroid/net/Uri;)V
    .locals 13
    .param p1, "selectedImage"    # Landroid/net/Uri;

    .prologue
    const/16 v12, 0x11

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 1016
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 1017
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1018
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1019
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1020
    aget-object v0, v2, v11

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1021
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1022
    .local v9, "picturePath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1023
    const/4 v7, 0x0

    .line 1025
    if-eqz v9, :cond_0

    const-string v0, "null"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    const-string v0, "\u672a\u80fd\u627e\u5230\u8be5\u6587\u4ef6"

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1027
    .local v10, "toast":Landroid/widget/Toast;
    invoke-virtual {v10, v12, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 1028
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1044
    .end local v6    # "columnIndex":I
    .end local v9    # "picturePath":Ljava/lang/String;
    .end local v10    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 1031
    .restart local v6    # "columnIndex":I
    .restart local v9    # "picturePath":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v9}, Lcom/boohee/one/easemob/ChatActivity;->sendPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    .end local v6    # "columnIndex":I
    .end local v9    # "picturePath":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1035
    const-string v0, "\u672a\u80fd\u627e\u5230\u8be5\u6587\u4ef6"

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1036
    .restart local v10    # "toast":Landroid/widget/Toast;
    invoke-virtual {v10, v12, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 1037
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1041
    .end local v10    # "toast":Landroid/widget/Toast;
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/one/easemob/ChatActivity;->sendPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPicture(Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 951
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    .line 953
    .local v2, "to":Ljava/lang/String;
    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v3}, Lcom/easemob/chat/EMMessage;->createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    .line 955
    .local v1, "message":Lcom/easemob/chat/EMMessage;
    iget v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 956
    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v1, v3}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    .line 961
    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMMessage;->setReceipt(Ljava/lang/String;)V

    .line 962
    new-instance v0, Lcom/easemob/chat/ImageMessageBody;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/easemob/chat/ImageMessageBody;-><init>(Ljava/io/File;)V

    .line 965
    .local v0, "body":Lcom/easemob/chat/ImageMessageBody;
    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    .line 966
    iget-boolean v3, p0, Lcom/boohee/one/easemob/ChatActivity;->isRobot:Z

    if-eqz v3, :cond_1

    .line 967
    const-string v3, "em_robot_message"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    .line 969
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v3, v1}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;)V

    .line 971
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 972
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSelectLast()V

    .line 973
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V

    .line 975
    return-void

    .line 957
    .end local v0    # "body":Lcom/easemob/chat/ImageMessageBody;
    :cond_2
    iget v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 958
    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v1, v3}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    goto :goto_0
.end method

.method private sendVideo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "thumbPath"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 981
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, "videoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 986
    :cond_0
    :try_start_0
    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v2}, Lcom/easemob/chat/EMMessage;->createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v7

    .line 988
    .local v7, "message":Lcom/easemob/chat/EMMessage;
    iget v2, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 989
    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v7, v2}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    .line 993
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    .line 994
    .local v8, "to":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lcom/easemob/chat/EMMessage;->setReceipt(Ljava/lang/String;)V

    .line 995
    new-instance v0, Lcom/easemob/chat/VideoMessageBody;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/easemob/chat/VideoMessageBody;-><init>(Ljava/io/File;Ljava/lang/String;IJ)V

    .line 996
    .local v0, "body":Lcom/easemob/chat/VideoMessageBody;
    invoke-virtual {v7, v0}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    .line 997
    iget-boolean v2, p0, Lcom/boohee/one/easemob/ChatActivity;->isRobot:Z

    if-eqz v2, :cond_2

    .line 998
    const-string v2, "em_robot_message"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    .line 1000
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v2, v7}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;)V

    .line 1001
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1002
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSelectLast()V

    .line 1003
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    .end local v0    # "body":Lcom/easemob/chat/VideoMessageBody;
    .end local v7    # "message":Lcom/easemob/chat/EMMessage;
    .end local v8    # "to":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1005
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 990
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "message":Lcom/easemob/chat/EMMessage;
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 991
    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v7, v2}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private sendVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "length"    # Ljava/lang/String;
    .param p4, "isResend"    # Z

    .prologue
    .line 917
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 943
    :goto_0
    return-void

    .line 921
    :cond_0
    :try_start_0
    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v4}, Lcom/easemob/chat/EMMessage;->createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v3

    .line 923
    .local v3, "message":Lcom/easemob/chat/EMMessage;
    iget v4, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 924
    sget-object v4, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v3, v4}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    .line 928
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/easemob/chat/EMMessage;->setReceipt(Ljava/lang/String;)V

    .line 929
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 930
    .local v2, "len":I
    new-instance v0, Lcom/easemob/chat/VoiceMessageBody;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v2}, Lcom/easemob/chat/VoiceMessageBody;-><init>(Ljava/io/File;I)V

    .line 931
    .local v0, "body":Lcom/easemob/chat/VoiceMessageBody;
    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    .line 932
    iget-boolean v4, p0, Lcom/boohee/one/easemob/ChatActivity;->isRobot:Z

    if-eqz v4, :cond_2

    .line 933
    const-string v4, "em_robot_message"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    .line 935
    :cond_2
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v4, v3}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;)V

    .line 936
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v4}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSelectLast()V

    .line 937
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 940
    .end local v0    # "body":Lcom/easemob/chat/VoiceMessageBody;
    .end local v2    # "len":I
    .end local v3    # "message":Lcom/easemob/chat/EMMessage;
    :catch_0
    move-exception v1

    .line 941
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 925
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "message":Lcom/easemob/chat/EMMessage;
    :cond_3
    :try_start_1
    iget v4, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 926
    sget-object v4, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v3, v4}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setUpView()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const v7, 0x7f0e0283

    const/4 v6, 0x1

    .line 387
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/ClipboardManager;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->clipboard:Landroid/text/ClipboardManager;

    .line 391
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->manager:Landroid/view/inputmethod/InputMethodManager;

    .line 392
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 393
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const/4 v4, 0x6

    const-string v5, "demo"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 396
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "chatType"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    .line 398
    iget v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    if-ne v3, v6, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    .line 400
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getRobotList()Ljava/util/Map;

    move-result-object v2

    .line 401
    .local v2, "robotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/boohee/one/easemob/domain/RobotUser;>;"
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    iput-boolean v6, p0, Lcom/boohee/one/easemob/ChatActivity;->isRobot:Z

    .line 403
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/easemob/domain/RobotUser;

    invoke-virtual {v3}, Lcom/boohee/one/easemob/domain/RobotUser;->getNick()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "nick":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 405
    invoke-virtual {p0, v7}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .end local v1    # "nick":Ljava/lang/String;
    .end local v2    # "robotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/boohee/one/easemob/domain/RobotUser;>;"
    :goto_0
    iget v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    if-eq v3, v8, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->onConversationInit()V

    .line 429
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->onListViewCreation()V

    .line 432
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "forward_msg_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "forward_msg_id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/ChatActivity;->forwardMessage(Ljava/lang/String;)V

    .line 438
    .end local v0    # "forward_msg_id":Ljava/lang/String;
    :cond_0
    return-void

    .line 407
    .restart local v1    # "nick":Ljava/lang/String;
    .restart local v2    # "robotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/boohee/one/easemob/domain/RobotUser;>;"
    :cond_1
    invoke-virtual {p0, v7}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    .end local v1    # "nick":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/boohee/one/easemob/utils/HXUserUtils;->setUserNick(Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    .line 416
    .end local v2    # "robotMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/boohee/one/easemob/domain/RobotUser;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "groupId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    .line 418
    iget v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 419
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->onGroupViewCreation()V

    goto :goto_0

    .line 421
    :cond_4
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->onChatRoomViewCreation()V

    goto :goto_0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1549
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/easemob/chat/EMChatManager;->unregisterEventListener(Lcom/easemob/EMEventListener;)V

    .line 1550
    iget v0, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1551
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->leaveChatRoom(Ljava/lang/String;)V

    .line 1553
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->finish()V

    .line 1554
    return-void
.end method

.method public editClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1261
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1267
    :cond_0
    return-void
.end method

.method public emptyHistory(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1207
    return-void
.end method

.method protected forwardMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "forward_msg_id"    # Ljava/lang/String;

    .prologue
    .line 1675
    return-void
.end method

.method public getExpressionRes(I)Ljava/util/List;
    .locals 5
    .param p1, "getSum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v1, "reslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .local v2, "x":I
    :goto_0
    if-gt v2, p1, :cond_0

    .line 1428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ee_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, "filename":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getToChatUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected initView()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 244
    const v3, 0x7f0e0150

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    .line 245
    const v3, 0x7f0e0156

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/boohee/one/easemob/widget/PasteEditText;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    .line 246
    const v3, 0x7f0e0154

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->buttonSetModeKeyboard:Landroid/view/View;

    .line 247
    const v3, 0x7f0e0155

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->edittext_layout:Landroid/widget/RelativeLayout;

    .line 248
    const v3, 0x7f0e0153

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->buttonSetModeVoice:Landroid/view/View;

    .line 249
    const v3, 0x7f0e015a

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->buttonSend:Landroid/view/View;

    .line 250
    const v3, 0x7f0e015d

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->expressionViewpager:Landroid/support/v4/view/ViewPager;

    .line 251
    const v3, 0x7f0e015c

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    .line 252
    const v3, 0x7f0e015e

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;

    .line 253
    const v3, 0x7f0e0157

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    .line 254
    const v3, 0x7f0e0158

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    .line 255
    const v3, 0x7f0e014e

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->loadmorePB:Landroid/widget/ProgressBar;

    .line 256
    const v3, 0x7f0e0159

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->btnMore:Landroid/widget/Button;

    .line 257
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    const v3, 0x7f0e015b

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    .line 279
    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->getExpressionRes(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->reslist:Ljava/util/List;

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->getGridChildView(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "gv1":Landroid/view/View;
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->getGridChildView(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, "gv2":Landroid/view/View;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->expressionViewpager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/boohee/one/easemob/adapter/ExpressionPagerAdapter;

    invoke-direct {v4, v2}, Lcom/boohee/one/easemob/adapter/ExpressionPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 287
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->edittext_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 288
    new-instance v3, Lcom/easemob/util/VoiceRecorder;

    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->micImageHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/easemob/util/VoiceRecorder;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->voiceRecorder:Lcom/easemob/util/VoiceRecorder;

    .line 290
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    new-instance v4, Lcom/boohee/one/easemob/ChatActivity$3;

    invoke-direct {v4, p0}, Lcom/boohee/one/easemob/ChatActivity$3;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {v3, v4}, Lcom/boohee/one/easemob/widget/PasteEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 302
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    new-instance v4, Lcom/boohee/one/easemob/ChatActivity$4;

    invoke-direct {v4, p0}, Lcom/boohee/one/easemob/ChatActivity$4;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {v3, v4}, Lcom/boohee/one/easemob/widget/PasteEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    new-instance v4, Lcom/boohee/one/easemob/ChatActivity$5;

    invoke-direct {v4, p0}, Lcom/boohee/one/easemob/ChatActivity$5;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {v3, v4}, Lcom/boohee/one/easemob/widget/PasteEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 338
    const v3, 0x7f0e014f

    invoke-virtual {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 340
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 343
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v4, Lcom/boohee/one/easemob/ChatActivity$6;

    invoke-direct {v4, p0}, Lcom/boohee/one/easemob/ChatActivity$6;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 384
    return-void

    .line 340
    nop

    :array_0
    .array-data 4
        0x106001b
        0x1060014
        0x1060018
        0x1060016
    .end array-data
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x7

    const/4 v8, -0x1

    .line 551
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 552
    if-ne p2, v9, :cond_1

    .line 553
    invoke-virtual {p0, v8}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V

    .line 554
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->finish()V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    .line 558
    packed-switch p2, :pswitch_data_0

    .line 583
    :cond_2
    :goto_1
    :pswitch_0
    if-ne p2, v8, :cond_0

    .line 584
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 586
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v5

    iget-object v6, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/easemob/chat/EMChatManager;->clearConversation(Ljava/lang/String;)Z

    .line 587
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refresh()V

    goto :goto_0

    .line 560
    :pswitch_1
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    const-string v6, "position"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    .line 563
    .local v0, "copyMsg":Lcom/easemob/chat/EMMessage;
    iget-object v6, p0, Lcom/boohee/one/easemob/ChatActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v5

    check-cast v5, Lcom/easemob/chat/TextMessageBody;

    invoke-virtual {v5}, Lcom/easemob/chat/TextMessageBody;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 566
    .end local v0    # "copyMsg":Lcom/easemob/chat/EMMessage;
    :pswitch_2
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    const-string v6, "position"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    .line 567
    .local v1, "deleteMsg":Lcom/easemob/chat/EMMessage;
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/easemob/chat/EMConversation;->removeMessage(Ljava/lang/String;)V

    .line 568
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    const-string v6, "position"

    iget-object v7, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v7}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getCount()I

    move-result v7

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSeekTo(I)V

    goto :goto_1

    .line 588
    .end local v1    # "deleteMsg":Lcom/easemob/chat/EMMessage;
    :cond_3
    const/16 v5, 0x12

    if-ne p1, v5, :cond_4

    .line 589
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->cameraFile:Ljava/io/File;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->cameraFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 590
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->cameraFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/boohee/one/easemob/ChatActivity;->sendPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_4
    const/16 v5, 0x17

    if-eq p1, v5, :cond_0

    .line 630
    const/16 v5, 0x13

    if-ne p1, v5, :cond_5

    .line 631
    if-eqz p3, :cond_0

    .line 632
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 633
    .local v3, "selectedImage":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 634
    invoke-direct {p0, v3}, Lcom/boohee/one/easemob/ChatActivity;->sendPicByUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 637
    .end local v3    # "selectedImage":Landroid/net/Uri;
    :cond_5
    const/16 v5, 0x18

    if-ne p1, v5, :cond_6

    .line 638
    if-eqz p3, :cond_0

    .line 639
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 640
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 641
    invoke-direct {p0, v4}, Lcom/boohee/one/easemob/ChatActivity;->sendFile(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 645
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_6
    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    .line 657
    const/4 v5, 0x5

    if-eq p1, v5, :cond_7

    const/4 v5, 0x6

    if-eq p1, v5, :cond_7

    if-eq p1, v9, :cond_7

    const/16 v5, 0x8

    if-eq p1, v5, :cond_7

    const/16 v5, 0xe

    if-eq p1, v5, :cond_7

    const/16 v5, 0xa

    if-ne p1, v5, :cond_8

    .line 660
    :cond_7
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->resendMessage()V

    goto/16 :goto_0

    .line 661
    :cond_8
    const/16 v5, 0xb

    if-ne p1, v5, :cond_9

    .line 663
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v5}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 664
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v5}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "pasteText":Ljava/lang/String;
    const-string v5, "EASEMOBIMG"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 667
    const-string v5, "EASEMOBIMG"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/boohee/one/easemob/ChatActivity;->sendPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    .end local v2    # "pasteText":Ljava/lang/String;
    :cond_9
    const/16 v5, 0x19

    if-ne p1, v5, :cond_a

    .line 672
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    const-string v6, "position"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    .line 673
    .restart local v1    # "deleteMsg":Lcom/easemob/chat/EMMessage;
    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/boohee/one/easemob/ChatActivity;->addUserToBlacklist(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    .end local v1    # "deleteMsg":Lcom/easemob/chat/EMMessage;
    :cond_a
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v5}, Lcom/easemob/chat/EMConversation;->getMsgCount()I

    move-result v5

    if-lez v5, :cond_b

    .line 675
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refresh()V

    .line 676
    invoke-virtual {p0, v8}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V

    goto/16 :goto_0

    .line 677
    :cond_b
    const/16 v5, 0x15

    if-ne p1, v5, :cond_0

    .line 678
    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v5}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refresh()V

    goto/16 :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1564
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onBackPressed()V

    .line 1567
    iget v0, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1568
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->leaveChatRoom(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onChatRoomViewCreation()V
    .locals 4

    .prologue
    .line 507
    const-string v1, ""

    const-string v2, "Joining......"

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 508
    .local v0, "pd":Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    new-instance v3, Lcom/boohee/one/easemob/ChatActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/boohee/one/easemob/ChatActivity$8;-><init>(Lcom/boohee/one/easemob/ChatActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/easemob/chat/EMChatManager;->joinChatRoom(Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V

    .line 545
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 692
    .local v0, "id":I
    const v2, 0x7f0e015a

    if-ne v0, v2, :cond_1

    .line 693
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    invoke-virtual {v2}, Lcom/boohee/one/easemob/widget/PasteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/boohee/one/easemob/ChatActivity;->sendText(Ljava/lang/String;)V

    .line 740
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    const v2, 0x7f0e015f

    if-ne v0, v2, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->selectPicFromCamera()V

    goto :goto_0

    .line 697
    :cond_2
    const v2, 0x7f0e0160

    if-ne v0, v2, :cond_3

    .line 698
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->selectPicFromLocal()V

    goto :goto_0

    .line 701
    :cond_3
    const v2, 0x7f0e0157

    if-ne v0, v2, :cond_4

    .line 702
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 707
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->hideKeyboard()V

    goto :goto_0

    .line 708
    :cond_4
    const v2, 0x7f0e0158

    if-ne v0, v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onConversationInit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x14

    .line 441
    iget v4, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    if-ne v4, v8, :cond_3

    .line 442
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    sget-object v6, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v4, v5, v6}, Lcom/easemob/chat/EMChatManager;->getConversationByType(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v4

    iput-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    .line 450
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v4}, Lcom/easemob/chat/EMConversation;->markAllMessagesAsRead()V

    .line 454
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v4}, Lcom/easemob/chat/EMConversation;->getAllMessages()Ljava/util/List;

    move-result-object v2

    .line 455
    .local v2, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/easemob/chat/EMMessage;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 456
    .local v0, "msgCount":I
    :goto_1
    iget-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v4}, Lcom/easemob/chat/EMConversation;->getAllMsgCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    if-ge v0, v7, :cond_2

    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, "msgId":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 459
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_1
    iget v3, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    if-ne v3, v8, :cond_6

    .line 462
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v3, v1, v7}, Lcom/easemob/chat/EMConversation;->loadMoreMsgFromDB(Ljava/lang/String;I)Ljava/util/List;

    .line 467
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 443
    .end local v0    # "msgCount":I
    .end local v2    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/easemob/chat/EMMessage;>;"
    :cond_3
    iget v4, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 444
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    sget-object v6, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v4, v5, v6}, Lcom/easemob/chat/EMChatManager;->getConversationByType(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v4

    iput-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    goto :goto_0

    .line 445
    :cond_4
    iget v4, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 446
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    sget-object v6, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v4, v5, v6}, Lcom/easemob/chat/EMChatManager;->getConversationByType(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v4

    iput-object v4, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    goto :goto_0

    .restart local v2    # "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/easemob/chat/EMMessage;>;"
    :cond_5
    move v0, v3

    .line 455
    goto :goto_1

    .line 464
    .restart local v0    # "msgCount":I
    .restart local v1    # "msgId":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v3, v1, v7}, Lcom/easemob/chat/EMConversation;->loadMoreGroupMsgFromDB(Ljava/lang/String;I)Ljava/util/List;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v6, 0x7f030045

    invoke-virtual {p0, v6}, Lcom/boohee/one/easemob/ChatActivity;->setContentView(I)V

    .line 202
    sput-object p0, Lcom/boohee/one/easemob/ChatActivity;->activityInstance:Lcom/boohee/one/easemob/ChatActivity;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "currentTimeMillis":J
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/boohee/one/easemob/ChatActivity;->IM_TEAM_MEMBERS_REFRESHED_TIME:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 206
    .local v4, "savedTime":J
    sub-long v6, v0, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0xe10

    div-long v2, v6, v8

    .line 207
    .local v2, "gapTimeHour":J
    sget-object v6, Lcom/boohee/one/easemob/ChatActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save im team members gap Time hour : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v6, p0, Lcom/boohee/one/easemob/ChatActivity;->REFRESH_PERIOD:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->showLoading()V

    .line 210
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/boohee/one/easemob/ChatActivity;->IM_TEAM_MEMBERS_REFRESHED_TIME:Ljava/lang/String;

    invoke-interface {v6, v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v6

    new-instance v7, Lcom/boohee/one/easemob/ChatActivity$2;

    invoke-direct {v7, p0}, Lcom/boohee/one/easemob/ChatActivity$2;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {v6, v7}, Lcom/boohee/one/easemob/HXSDKHelper;->asyncFetchGroupsFromServer(Lcom/easemob/EMCallBack;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->initView()V

    .line 230
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->setUpView()V

    .line 231
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1439
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 1440
    const/4 v0, 0x0

    sput-object v0, Lcom/boohee/one/easemob/ChatActivity;->activityInstance:Lcom/boohee/one/easemob/ChatActivity;

    .line 1441
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->groupListener:Lcom/boohee/one/easemob/ChatActivity$GroupListener;

    if-eqz v0, :cond_0

    .line 1442
    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->groupListener:Lcom/boohee/one/easemob/ChatActivity$GroupListener;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroupManager;->removeGroupChangeListener(Lcom/easemob/chat/GroupChangeListener;)V

    .line 1444
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/easemob/EMNotifierEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/easemob/EMNotifierEvent;

    .prologue
    .line 749
    sget-object v2, Lcom/boohee/one/easemob/ChatActivity$12;->$SwitchMap$com$easemob$EMNotifierEvent$Event:[I

    invoke-virtual {p1}, Lcom/easemob/EMNotifierEvent;->getEvent()Lcom/easemob/EMNotifierEvent$Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/EMNotifierEvent$Event;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 797
    :goto_0
    return-void

    .line 752
    :pswitch_0
    invoke-virtual {p1}, Lcom/easemob/EMNotifierEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    .line 754
    .local v0, "message":Lcom/easemob/chat/EMMessage;
    const/4 v1, 0x0

    .line 756
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v2, v3, :cond_1

    .line 757
    :cond_0
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    .line 764
    :goto_1
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getToChatUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 765
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->refreshUIWithNewMessage()V

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 770
    :cond_2
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/easemob/HXSDKHelper;->getNotifier()Lcom/boohee/one/easemob/HXNotifier;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/boohee/one/easemob/HXNotifier;->onNewMsg(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0

    .line 777
    .end local v0    # "message":Lcom/easemob/chat/EMMessage;
    .end local v1    # "username":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Lcom/easemob/EMNotifierEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    .line 778
    .restart local v0    # "message":Lcom/easemob/chat/EMMessage;
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->refreshUI()V

    goto :goto_0

    .line 783
    .end local v0    # "message":Lcom/easemob/chat/EMMessage;
    :pswitch_2
    invoke-virtual {p1}, Lcom/easemob/EMNotifierEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    .line 784
    .restart local v0    # "message":Lcom/easemob/chat/EMMessage;
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->refreshUI()V

    goto :goto_0

    .line 790
    .end local v0    # "message":Lcom/easemob/chat/EMMessage;
    :pswitch_3
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->refreshUI()V

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onGroupViewCreation()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->group:Lcom/easemob/chat/EMGroup;

    .line 495
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->group:Lcom/easemob/chat/EMGroup;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->group:Lcom/easemob/chat/EMGroup;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    :goto_0
    new-instance v0, Lcom/boohee/one/easemob/ChatActivity$GroupListener;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/ChatActivity$GroupListener;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    iput-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->groupListener:Lcom/boohee/one/easemob/ChatActivity$GroupListener;

    .line 503
    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->groupListener:Lcom/boohee/one/easemob/ChatActivity$GroupListener;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroupManager;->addGroupChangeListener(Lcom/easemob/chat/GroupChangeListener;)V

    .line 504
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/one/easemob/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onListViewCreation()V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Lcom/boohee/one/easemob/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    iget v2, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    .line 472
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;-><init>(Lcom/boohee/one/easemob/ChatActivity;Lcom/boohee/one/easemob/ChatActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 475
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSelectLast()V

    .line 477
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/one/easemob/ChatActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/ChatActivity$7;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1632
    const-string v1, "userId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1640
    :goto_0
    return-void

    .line 1636
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->finish()V

    .line 1637
    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1482
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 1483
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1498
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 1448
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 1449
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->group:Lcom/easemob/chat/EMGroup;

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refresh()V

    .line 1457
    :cond_0
    invoke-static {}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    .line 1458
    .local v0, "sdkHelper":Lcom/boohee/one/easemob/BooheeHXSDKHelper;
    invoke-virtual {v0, p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->pushActivity(Landroid/app/Activity;)V

    .line 1460
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/easemob/EMNotifierEvent$Event;

    const/4 v3, 0x0

    sget-object v4, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/easemob/EMNotifierEvent$Event;->EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/easemob/EMNotifierEvent$Event;->EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/easemob/EMNotifierEvent$Event;->EventReadAck:Lcom/easemob/EMNotifierEvent$Event;

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/easemob/chat/EMChatManager;->registerEventListener(Lcom/easemob/EMEventListener;[Lcom/easemob/EMNotifierEvent$Event;)V

    .line 1464
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1470
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/easemob/chat/EMChatManager;->unregisterEventListener(Lcom/easemob/EMEventListener;)V

    .line 1472
    invoke-static {}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    .line 1475
    .local v0, "sdkHelper":Lcom/boohee/one/easemob/BooheeHXSDKHelper;
    invoke-virtual {v0, p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->popActivity(Landroid/app/Activity;)V

    .line 1477
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onStop()V

    .line 1478
    return-void
.end method

.method public resendMessage()V
    .locals 3

    .prologue
    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "msg":Lcom/easemob/chat/EMMessage;
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    sget v2, Lcom/boohee/one/easemob/ChatActivity;->resendPos:I

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMConversation;->getMessage(I)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    .line 1139
    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->CREATE:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    .line 1141
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    sget v2, Lcom/boohee/one/easemob/ChatActivity;->resendPos:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSeekTo(I)V

    .line 1142
    return-void
.end method

.method public selectPicFromCamera()V
    .locals 6

    .prologue
    .line 828
    invoke-static {}, Lcom/boohee/one/easemob/utils/HXCommonUtils;->isExitsSdcard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/boohee/one/easemob/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070491

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "st":Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 840
    .end local v0    # "st":Ljava/lang/String;
    :goto_0
    return-void

    .line 834
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/one/easemob/HXSDKHelper;->getHXId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->cameraFile:Ljava/io/File;

    .line 836
    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity;->cameraFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 837
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    iget-object v3, p0, Lcom/boohee/one/easemob/ChatActivity;->cameraFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/boohee/one/easemob/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public selectPicFromLocal()V
    .locals 4

    .prologue
    const/16 v3, 0x13

    .line 863
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_0

    .line 864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/boohee/one/easemob/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 871
    return-void

    .line 868
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 880
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 881
    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    invoke-static {v2}, Lcom/easemob/chat/EMMessage;->createSendMessage(Lcom/easemob/chat/EMMessage$Type;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    .line 883
    .local v0, "message":Lcom/easemob/chat/EMMessage;
    iget v2, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 884
    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v0, v2}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    .line 888
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/boohee/one/easemob/ChatActivity;->isRobot:Z

    if-eqz v2, :cond_1

    .line 889
    const-string v2, "em_robot_message"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    .line 891
    :cond_1
    new-instance v1, Lcom/easemob/chat/TextMessageBody;

    invoke-direct {v1, p1}, Lcom/easemob/chat/TextMessageBody;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, "txtBody":Lcom/easemob/chat/TextMessageBody;
    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMMessage;->addBody(Lcom/easemob/chat/MessageBody;)V

    .line 895
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->toChatUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/easemob/chat/EMMessage;->setReceipt(Ljava/lang/String;)V

    .line 897
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->conversation:Lcom/easemob/chat/EMConversation;

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;)V

    .line 899
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;

    invoke-virtual {v2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refreshSelectLast()V

    .line 900
    iget-object v2, p0, Lcom/boohee/one/easemob/ChatActivity;->mEditTextContent:Lcom/boohee/one/easemob/widget/PasteEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/boohee/one/easemob/widget/PasteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 903
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/boohee/one/easemob/ChatActivity;->setResult(I)V

    .line 906
    .end local v0    # "message":Lcom/easemob/chat/EMMessage;
    .end local v1    # "txtBody":Lcom/easemob/chat/TextMessageBody;
    :cond_2
    return-void

    .line 885
    .restart local v0    # "message":Lcom/easemob/chat/EMMessage;
    :cond_3
    iget v2, p0, Lcom/boohee/one/easemob/ChatActivity;->chatType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 886
    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v0, v2}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    goto :goto_0
.end method

.method public setModeKeyboard(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1196
    return-void
.end method

.method public setModeVoice(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1163
    return-void
.end method

.method public toGroupDetails(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1226
    return-void
.end method

.method public toggleMore(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1234
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1235
    sget-object v0, Lcom/boohee/one/easemob/ChatActivity;->TAG:Ljava/lang/String;

    const-string v1, "more gone"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    invoke-direct {p0}, Lcom/boohee/one/easemob/ChatActivity;->hideKeyboard()V

    .line 1237
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1252
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
