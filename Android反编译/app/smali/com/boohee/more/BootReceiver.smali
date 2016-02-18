.class public Lcom/boohee/more/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/boohee/more/BootReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/more/BootReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private openRemind(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Lcom/boohee/modeldao/AlarmDao;

    invoke-direct {v0, p1}, Lcom/boohee/modeldao/AlarmDao;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "alarmDao":Lcom/boohee/modeldao/AlarmDao;
    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->getAlarms()Ljava/util/ArrayList;

    move-result-object v1

    .line 25
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/Alarm;

    invoke-static {v3, p1}, Lcom/boohee/more/RemindService;->start(Lcom/boohee/model/Alarm;Landroid/content/Context;)V

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/boohee/modeldao/AlarmDao;->closeDB()V

    .line 29
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/boohee/more/BootReceiver;->openRemind(Landroid/content/Context;)V

    .line 19
    return-void
.end method
