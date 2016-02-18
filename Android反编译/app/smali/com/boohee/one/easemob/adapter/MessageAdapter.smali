.class public Lcom/boohee/one/easemob/adapter/MessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/easemob/adapter/MessageAdapter$10;,
        Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final HANDLER_MESSAGE_REFRESH_LIST:I = 0x0

.field private static final HANDLER_MESSAGE_SEEK_TO:I = 0x2

.field private static final HANDLER_MESSAGE_SELECT_LAST:I = 0x1

.field public static final IMAGE_DIR:Ljava/lang/String; = "chat/image/"

.field private static final MESSAGE_TYPE_RECV_FILE:I = 0xb

.field private static final MESSAGE_TYPE_RECV_IMAGE:I = 0x5

.field private static final MESSAGE_TYPE_RECV_LOCATION:I = 0x4

.field private static final MESSAGE_TYPE_RECV_ROBOT_MENU:I = 0x11

.field private static final MESSAGE_TYPE_RECV_TXT:I = 0x0

.field private static final MESSAGE_TYPE_RECV_VIDEO:I = 0x9

.field private static final MESSAGE_TYPE_RECV_VIDEO_CALL:I = 0xf

.field private static final MESSAGE_TYPE_RECV_VOICE:I = 0x7

.field private static final MESSAGE_TYPE_RECV_VOICE_CALL:I = 0xd

.field private static final MESSAGE_TYPE_SENT_FILE:I = 0xa

.field private static final MESSAGE_TYPE_SENT_IMAGE:I = 0x2

.field private static final MESSAGE_TYPE_SENT_LOCATION:I = 0x3

.field private static final MESSAGE_TYPE_SENT_ROBOT_MENU:I = 0x10

.field private static final MESSAGE_TYPE_SENT_TXT:I = 0x1

.field private static final MESSAGE_TYPE_SENT_VIDEO:I = 0x8

.field private static final MESSAGE_TYPE_SENT_VIDEO_CALL:I = 0xe

.field private static final MESSAGE_TYPE_SENT_VOICE:I = 0x6

.field private static final MESSAGE_TYPE_SENT_VOICE_CALL:I = 0xc

.field private static final TAG:Ljava/lang/String; = "msg"

.field public static final VIDEO_DIR:Ljava/lang/String; = "chat/video"

.field public static final VOICE_DIR:Ljava/lang/String; = "chat/audio/"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private conversation:Lcom/easemob/chat/EMConversation;

.field handler:Landroid/os/Handler;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private inflater:Landroid/view/LayoutInflater;

.field messages:[Lcom/easemob/chat/EMMessage;

.field private timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "chatType"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->messages:[Lcom/easemob/chat/EMMessage;

    .line 103
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->timers:Ljava/util/Map;

    .line 115
    new-instance v0, Lcom/boohee/one/easemob/adapter/MessageAdapter$1;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/adapter/MessageAdapter$1;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;)V

    iput-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    .line 108
    iput-object p2, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->username:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->context:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 111
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->activity:Landroid/app/Activity;

    .line 112
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/easemob/chat/EMChatManager;->getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->conversation:Lcom/easemob/chat/EMConversation;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/easemob/adapter/MessageAdapter;)Lcom/easemob/chat/EMConversation;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/adapter/MessageAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->conversation:Lcom/easemob/chat/EMConversation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/easemob/adapter/MessageAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/adapter/MessageAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/one/easemob/adapter/MessageAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/easemob/adapter/MessageAdapter;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/easemob/adapter/MessageAdapter;Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/easemob/adapter/MessageAdapter;
    .param p1, "x1"    # Lcom/easemob/chat/EMMessage;
    .param p2, "x2"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->updateSendedView(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    return-void
.end method

.method private createViewByMessage(Lcom/easemob/chat/EMMessage;I)Landroid/view/View;
    .locals 3
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 249
    sget-object v0, Lcom/boohee/one/easemob/adapter/MessageAdapter$10;->$SwitchMap$com$easemob$chat$EMMessage$Type:[I

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301b5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 254
    :pswitch_0
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301b6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301b8

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301b7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 700
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/TextMessageBody;

    .line 701
    .local v0, "txtBody":Lcom/easemob/chat/TextMessageBody;
    iget-object v1, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/easemob/chat/TextMessageBody;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    return-void
.end method

.method private handleImageMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 13
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;

    .prologue
    .line 714
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 726
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v0, v2, :cond_3

    .line 728
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    sget-object v2, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    if-ne v0, v2, :cond_1

    .line 730
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const v2, 0x7f020121

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 731
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->showDownloadImageProgress(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 736
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const v2, 0x7f020121

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 738
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v10

    check-cast v10, Lcom/easemob/chat/ImageMessageBody;

    .line 739
    .local v10, "imgBody":Lcom/easemob/chat/ImageMessageBody;
    invoke-virtual {v10}, Lcom/easemob/chat/ImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v10}, Lcom/easemob/chat/ImageMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v11

    .line 742
    .local v11, "remotePath":Ljava/lang/String;
    invoke-static {v11}, Lcom/boohee/one/easemob/utils/HXImageUtils;->getImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/easemob/chat/ImageMessageBody;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "thumbRemoteUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    move-object v12, v11

    .line 747
    :cond_2
    invoke-static {v12}, Lcom/boohee/one/easemob/utils/HXImageUtils;->getThumbnailImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "thumbnailPath":Ljava/lang/String;
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v10}, Lcom/easemob/chat/ImageMessageBody;->getRemoteUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->showImageView(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/chat/EMMessage;)Z

    goto :goto_0

    .line 757
    .end local v1    # "thumbnailPath":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v10    # "imgBody":Lcom/easemob/chat/ImageMessageBody;
    .end local v11    # "remotePath":Ljava/lang/String;
    .end local v12    # "thumbRemoteUrl":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v10

    check-cast v10, Lcom/easemob/chat/ImageMessageBody;

    .line 758
    .restart local v10    # "imgBody":Lcom/easemob/chat/ImageMessageBody;
    invoke-virtual {v10}, Lcom/easemob/chat/ImageMessageBody;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    .line 759
    .restart local v3    # "filePath":Ljava/lang/String;
    if-eqz v3, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 760
    invoke-static {v3}, Lcom/boohee/one/easemob/utils/HXImageUtils;->getThumbnailImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v7, v3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->showImageView(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/chat/EMMessage;)Z

    .line 765
    :goto_1
    sget-object v0, Lcom/boohee/one/easemob/adapter/MessageAdapter$10;->$SwitchMap$com$easemob$chat$EMMessage$Status:[I

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 818
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->sendPictureMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    goto :goto_0

    .line 762
    :cond_4
    invoke-static {v3}, Lcom/boohee/one/easemob/utils/HXImageUtils;->getThumbnailImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const-string v8, "chat/image/"

    move-object v4, p0

    move-object v7, v3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->showImageView(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/chat/EMMessage;)Z

    goto :goto_1

    .line 767
    :pswitch_0
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 768
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 772
    :pswitch_1
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 773
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 777
    :pswitch_2
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 779
    iget-object v0, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->timers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 784
    .local v4, "timer":Ljava/util/Timer;
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->timers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance v5, Lcom/boohee/one/easemob/adapter/MessageAdapter$4;

    invoke-direct {v5, p0, p2, p1, v4}, Lcom/boohee/one/easemob/adapter/MessageAdapter$4;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;Lcom/easemob/chat/EMMessage;Ljava/util/Timer;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1f4

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleTextMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 589
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/TextMessageBody;

    .line 590
    .local v1, "txtBody":Lcom/easemob/chat/TextMessageBody;
    iget-object v2, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/easemob/chat/TextMessageBody;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/boohee/one/easemob/utils/SmileUtils;->getSmiledText(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 592
    .local v0, "span":Landroid/text/Spannable;
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 606
    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v3, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v2, v3, :cond_0

    .line 607
    sget-object v2, Lcom/boohee/one/easemob/adapter/MessageAdapter$10;->$SwitchMap$com$easemob$chat$EMMessage$Status:[I

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->sendMsgInBackground(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 609
    :pswitch_0
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 610
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 614
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 617
    :pswitch_2
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 618
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendPictureMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V
    .locals 6
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    .prologue
    .line 1319
    :try_start_0
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    .line 1322
    .local v1, "to":Ljava/lang/String;
    iget-object v4, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1323
    iget-object v4, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1324
    iget-object v4, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1325
    iget-object v4, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const-string v5, "0%"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1329
    .local v2, "start":J
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    new-instance v5, Lcom/boohee/one/easemob/adapter/MessageAdapter$7;

    invoke-direct {v5, p0, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter$7;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    invoke-virtual {v4, p1, v5}, Lcom/easemob/chat/EMChatManager;->sendMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    .end local v1    # "to":Ljava/lang/String;
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setUserAvatar(Lcom/easemob/chat/EMMessage;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 563
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/boohee/one/easemob/utils/HXUserUtils;->setCurrentUserAvatar(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 569
    :goto_0
    new-instance v0, Lcom/boohee/one/easemob/adapter/MessageAdapter$3;

    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/adapter/MessageAdapter$3;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/boohee/one/easemob/utils/HXUserUtils;->setUserAvatar(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private showDownloadImageProgress(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V
    .locals 4
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 1266
    const-string v1, "msg"

    const-string v2, "!!! show download image progress"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/FileMessageBody;

    .line 1270
    .local v0, "msgbody":Lcom/easemob/chat/FileMessageBody;
    iget-object v1, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 1271
    iget-object v1, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1272
    :cond_0
    iget-object v1, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1275
    :cond_1
    new-instance v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter$6;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/FileMessageBody;->setDownloadCallback(Lcom/easemob/EMCallBack;)V

    .line 1312
    return-void
.end method

.method private showImageView(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/chat/EMMessage;)Z
    .locals 7
    .param p1, "thumbernailPath"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "localFullSizePath"    # Ljava/lang/String;
    .param p4, "remoteDir"    # Ljava/lang/String;
    .param p5, "message"    # Lcom/easemob/chat/EMMessage;

    .prologue
    const/4 v6, 0x1

    .line 1443
    move-object v1, p4

    .line 1444
    .local v1, "remote":Ljava/lang/String;
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remote: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-static {}, Lcom/boohee/one/easemob/utils/HXImageCache;->getInstance()Lcom/boohee/one/easemob/utils/HXImageCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/boohee/one/easemob/utils/HXImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1447
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1450
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1451
    new-instance v2, Lcom/boohee/one/easemob/adapter/MessageAdapter$9;

    invoke-direct {v2, p0, p3, p5, v1}, Lcom/boohee/one/easemob/adapter/MessageAdapter$9;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;Ljava/lang/String;Lcom/easemob/chat/EMMessage;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1486
    :goto_0
    return v6

    .line 1485
    :cond_0
    new-instance v2, Lcom/boohee/one/easemob/task/LoadImageTask;

    invoke-direct {v2}, Lcom/boohee/one/easemob/task/LoadImageTask;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p3, v3, v6

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p5}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p2, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->activity:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p5, v3, v4

    instance-of v4, v2, Landroid/os/AsyncTask;

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/boohee/one/easemob/task/LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    check-cast v2, Landroid/os/AsyncTask;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSendedView(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V
    .locals 2
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter$8;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1420
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->messages:[Lcom/easemob/chat/EMMessage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->messages:[Lcom/easemob/chat/EMMessage;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/easemob/chat/EMMessage;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->messages:[Lcom/easemob/chat/EMMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->messages:[Lcom/easemob/chat/EMMessage;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->messages:[Lcom/easemob/chat/EMMessage;

    aget-object v0, v0, p1

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 199
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    .line 214
    .local v0, "message":Lcom/easemob/chat/EMMessage;
    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 217
    :cond_1
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    if-ne v3, v4, :cond_9

    .line 218
    const-string v1, "is_voice_call"

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_2

    const/16 v1, 0xd

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    goto :goto_0

    .line 220
    :cond_3
    const-string v1, "is_video_call"

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_4

    const/16 v1, 0xf

    goto :goto_0

    :cond_4
    const/16 v1, 0xe

    goto :goto_0

    .line 222
    :cond_5
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v1, v0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->isRobotMenuMessage(Lcom/easemob/chat/EMMessage;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 223
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_6

    const/16 v1, 0x11

    goto :goto_0

    :cond_6
    const/16 v1, 0x10

    goto :goto_0

    .line 225
    :cond_7
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v3, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v3, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :cond_9
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_b

    .line 228
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_a

    const/4 v1, 0x5

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    .line 231
    :cond_b
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_d

    .line 232
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_c

    const/4 v1, 0x4

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_0

    .line 234
    :cond_d
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_f

    .line 235
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_e

    const/4 v1, 0x7

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 237
    :cond_f
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_11

    .line 238
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_10

    const/16 v1, 0x9

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 240
    :cond_11
    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_12

    const/16 v1, 0xb

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xa

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    .line 289
    .local v2, "message":Lcom/easemob/chat/EMMessage;
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    .line 291
    .local v0, "chatType":Lcom/easemob/chat/EMMessage$ChatType;
    if-nez p2, :cond_8

    .line 292
    new-instance v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;-><init>()V

    .line 293
    .local v1, "holder":Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    invoke-direct {p0, v2, p1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->createViewByMessage(Lcom/easemob/chat/EMMessage;I)Landroid/view/View;

    move-result-object p2

    .line 294
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v7

    sget-object v8, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v7, v8, :cond_7

    .line 296
    const v7, 0x7f0e0553

    :try_start_0
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 297
    const v7, 0x7f0e054c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    .line 298
    const v7, 0x7f0e0556

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 299
    const v7, 0x7f0e0555

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    .line 300
    const v7, 0x7f0e0551

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    .line 301
    const v7, 0x7f0e0550

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv_usernick:Landroid/widget/TextView;

    .line 302
    const v7, 0x7f0e054d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivConsultorType:Landroid/widget/ImageView;

    .line 303
    const v7, 0x7f0e054e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivTeamleaderType:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    :cond_0
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 391
    :goto_1
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/boohee/one/easemob/utils/HXUserUtils;->getUserInfo(Ljava/lang/String;)Lcom/boohee/one/easemob/domain/HXUser;

    move-result-object v6

    .line 392
    .local v6, "user":Lcom/boohee/one/easemob/domain/HXUser;
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v7

    const-string v8, "admin"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 393
    const-string v7, "admin"

    invoke-virtual {v6, v7}, Lcom/boohee/one/easemob/domain/HXUser;->setBooheeUserName(Ljava/lang/String;)V

    .line 396
    :cond_1
    invoke-virtual {v6}, Lcom/boohee/one/easemob/domain/HXUser;->getBooheeUserName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 397
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v7

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/boohee/one/easemob/HXSDKHelper;->getUserInfoWithHXId(Ljava/lang/String;)V

    .line 401
    :cond_2
    sget-object v7, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v0, v7, :cond_3

    sget-object v7, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v7, :cond_4

    :cond_3
    iget-object v7, v2, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v8, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v7, v8, :cond_4

    .line 403
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv_usernick:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lcom/boohee/one/easemob/utils/HXUserUtils;->setUserNick(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 405
    :cond_4
    iget-object v7, v2, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v8, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v7, v8, :cond_5

    .line 406
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv_usernick:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/boohee/one/easemob/utils/HXUserUtils;->setCurrentUserNick(Landroid/widget/TextView;)V

    .line 409
    :cond_5
    if-eqz v6, :cond_b

    .line 410
    invoke-virtual {v6}, Lcom/boohee/one/easemob/domain/HXUser;->getRole()Ljava/lang/String;

    move-result-object v7

    const-string v8, "team_leader"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 411
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivTeamleaderType:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    :goto_2
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v7}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->setUserAvatar(Lcom/easemob/chat/EMMessage;Landroid/widget/ImageView;)V

    .line 464
    sget-object v7, Lcom/boohee/one/easemob/adapter/MessageAdapter$10;->$SwitchMap$com$easemob$chat$EMMessage$Type:[I

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 496
    :goto_3
    iget-object v7, v2, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v8, Lcom/easemob/chat/EMMessage$Direct;->SEND:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v7, v8, :cond_6

    .line 497
    const v7, 0x7f0e0551

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 499
    .local v4, "statusView":Landroid/view/View;
    new-instance v7, Lcom/boohee/one/easemob/adapter/MessageAdapter$2;

    invoke-direct {v7, p0, p1}, Lcom/boohee/one/easemob/adapter/MessageAdapter$2;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    .end local v4    # "statusView":Landroid/view/View;
    :cond_6
    const v7, 0x7f0e054a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 539
    .local v5, "timestamp":Landroid/widget/TextView;
    if-nez p1, :cond_c

    .line 540
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/easemob/util/DateUtils;->getTimestampString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    :goto_4
    return-object p2

    .line 307
    .end local v5    # "timestamp":Landroid/widget/TextView;
    .end local v6    # "user":Lcom/boohee/one/easemob/domain/HXUser;
    :cond_7
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v7

    sget-object v8, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    if-ne v7, v8, :cond_0

    .line 310
    const v7, 0x7f0e0557

    :try_start_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    .line 311
    const v7, 0x7f0e0551

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    .line 312
    const v7, 0x7f0e054c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->iv_avatar:Landroid/widget/ImageView;

    .line 314
    const v7, 0x7f0e054f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 315
    const v7, 0x7f0e0550

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->tv_usernick:Landroid/widget/TextView;

    .line 317
    const v7, 0x7f0e054d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivConsultorType:Landroid/widget/ImageView;

    .line 318
    const v7, 0x7f0e054e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivTeamleaderType:Landroid/widget/ImageView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 321
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 388
    .end local v1    # "holder":Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;
    goto/16 :goto_1

    .line 412
    .restart local v6    # "user":Lcom/boohee/one/easemob/domain/HXUser;
    :cond_9
    invoke-virtual {v6}, Lcom/boohee/one/easemob/domain/HXUser;->getRole()Ljava/lang/String;

    move-result-object v7

    const-string v8, "team_consultor"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 413
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivConsultorType:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 415
    :cond_a
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivConsultorType:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivTeamleaderType:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 419
    :cond_b
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivTeamleaderType:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v7, v1, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->ivConsultorType:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 467
    :pswitch_0
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handleImageMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;ILandroid/view/View;)V

    goto/16 :goto_3

    .line 478
    :pswitch_1
    invoke-direct {p0, v2, v1, p1}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handleTextMessage(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;I)V

    goto/16 :goto_3

    .line 544
    .restart local v5    # "timestamp":Landroid/widget/TextView;
    :cond_c
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->getItem(I)Lcom/easemob/chat/EMMessage;

    move-result-object v3

    .line 545
    .local v3, "prevMessage":Lcom/easemob/chat/EMMessage;
    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/easemob/util/DateUtils;->isCloseEnough(JJ)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 546
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 548
    :cond_d
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v7}, Lcom/easemob/util/DateUtils;->getTimestampString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 304
    .end local v3    # "prevMessage":Lcom/easemob/chat/EMMessage;
    .end local v5    # "timestamp":Landroid/widget/TextView;
    .end local v6    # "user":Lcom/boohee/one/easemob/domain/HXUser;
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0x12

    return v0
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public refreshSeekTo(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 188
    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method

.method public refreshSelectLast()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    iget-object v0, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/boohee/one/easemob/adapter/MessageAdapter;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method public sendMsgInBackground(Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V
    .locals 4
    .param p1, "message"    # Lcom/easemob/chat/EMMessage;
    .param p2, "holder"    # Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;

    .prologue
    .line 1234
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->staus_iv:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1235
    iget-object v2, p2, Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;->pb:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1239
    .local v0, "start":J
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/easemob/adapter/MessageAdapter$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/boohee/one/easemob/adapter/MessageAdapter$5;-><init>(Lcom/boohee/one/easemob/adapter/MessageAdapter;Lcom/easemob/chat/EMMessage;Lcom/boohee/one/easemob/adapter/MessageAdapter$ViewHolder;)V

    invoke-virtual {v2, p1, v3}, Lcom/easemob/chat/EMChatManager;->sendMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    .line 1259
    return-void
.end method
