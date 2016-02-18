.class synthetic Lcom/boohee/one/easemob/ChatActivity$12;
.super Ljava/lang/Object;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/easemob/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$easemob$EMNotifierEvent$Event:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 749
    invoke-static {}, Lcom/easemob/EMNotifierEvent$Event;->values()[Lcom/easemob/EMNotifierEvent$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/boohee/one/easemob/ChatActivity$12;->$SwitchMap$com$easemob$EMNotifierEvent$Event:[I

    :try_start_0
    sget-object v0, Lcom/boohee/one/easemob/ChatActivity$12;->$SwitchMap$com$easemob$EMNotifierEvent$Event:[I

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventNewMessage:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v1}, Lcom/easemob/EMNotifierEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/boohee/one/easemob/ChatActivity$12;->$SwitchMap$com$easemob$EMNotifierEvent$Event:[I

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventDeliveryAck:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v1}, Lcom/easemob/EMNotifierEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/boohee/one/easemob/ChatActivity$12;->$SwitchMap$com$easemob$EMNotifierEvent$Event:[I

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventReadAck:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v1}, Lcom/easemob/EMNotifierEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/boohee/one/easemob/ChatActivity$12;->$SwitchMap$com$easemob$EMNotifierEvent$Event:[I

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v1}, Lcom/easemob/EMNotifierEvent$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
