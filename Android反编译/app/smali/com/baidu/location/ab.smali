.class public Lcom/baidu/location/ab;
.super Landroid/app/Service;

# interfaces
.implements Lcom/baidu/location/ax;
.implements Lcom/baidu/location/n;
.implements Lcom/baidu/location/LLSInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/ab$a;
    }
.end annotation


# static fields
.field private static gC:J

.field static gD:Lcom/baidu/location/ab$a;

.field public static gE:Z

.field public static gv:Z

.field public static gw:J

.field private static gy:Landroid/content/Context;


# instance fields
.field private gA:Landroid/os/HandlerThread;

.field private gB:Landroid/os/Looper;

.field private gx:Z

.field gz:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ab;->gD:Lcom/baidu/location/ab$a;

    sput-object v0, Lcom/baidu/location/ab;->gy:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ab;->gv:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/ab;->gC:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/ab;->gz:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/ab;->gx:Z

    return-void
.end method

.method public static bi()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/ab;->gC:J

    return-wide v0
.end method

.method public static bj()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/ab;->gD:Lcom/baidu/location/ab$a;

    return-object v0
.end method

.method private bk()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/t;->an()Lcom/baidu/location/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/t;->as()V

    invoke-static {}, Lcom/baidu/location/ah;->ay()Lcom/baidu/location/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ah;->ax()V

    invoke-static {}, Lcom/baidu/location/ae;->bp()Lcom/baidu/location/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ae;->br()V

    invoke-static {}, Lcom/baidu/location/q;->w()V

    invoke-static {}, Lcom/baidu/location/k;->p()Lcom/baidu/location/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/k;->n()V

    iget-boolean v0, p0, Lcom/baidu/location/ab;->gx:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method private bl()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/ab;->gv:Z

    invoke-static {}, Lcom/baidu/location/t;->an()Lcom/baidu/location/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/t;->am()V

    invoke-static {}, Lcom/baidu/location/ar;->bW()Lcom/baidu/location/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ar;->b2()V

    invoke-static {}, Lcom/baidu/location/az;->cn()Lcom/baidu/location/az;

    invoke-static {}, Lcom/baidu/location/x;->a4()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aU()V

    invoke-static {}, Lcom/baidu/location/r;->H()Lcom/baidu/location/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/r;->K()V

    invoke-static {}, Lcom/baidu/location/ah;->ay()Lcom/baidu/location/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ah;->aC()V

    invoke-static {}, Lcom/baidu/location/ay;->cd()Lcom/baidu/location/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ay;->ci()V

    invoke-static {}, Lcom/baidu/location/y;->a7()Lcom/baidu/location/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/y;->a8()V

    invoke-static {}, Lcom/baidu/location/aw;->do()Lcom/baidu/location/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aw;->for()V

    invoke-static {}, Lcom/baidu/location/aa;->bg()Lcom/baidu/location/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aa;->bh()V

    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic do(Lcom/baidu/location/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/ab;->bl()V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/ab;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ab;->i(Landroid/os/Message;)V

    return-void
.end method

.method private e(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/k;->p()Lcom/baidu/location/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/k;->do(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/ab;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ab;->h(Landroid/os/Message;)V

    return-void
.end method

.method private h(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/k;->p()Lcom/baidu/location/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/k;->new(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/y;->a7()Lcom/baidu/location/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/y;->a9()V

    invoke-static {}, Lcom/baidu/location/d;->X()Lcom/baidu/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/d;->Z()V

    return-void
.end method

.method private i(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/k;->p()Lcom/baidu/location/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/k;->int(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/ab;->bk()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/ab;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ab;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic int(Lcom/baidu/location/ab;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ab;->d(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getVersion()D
    .locals 2

    const-wide v0, 0x4010ccccc0000000L    # 4.199999809265137

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "cache_exception"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "kill_process"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/baidu/location/ab;->gx:Z

    const-string v2, "debug_dev"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/baidu/location/ab;->gE:Z

    const-string v2, "interval"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/location/ab;->gw:J

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/aa;->bg()Lcom/baidu/location/aa;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/ab;->gz:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/ab;->gC:J

    sput-object p1, Lcom/baidu/location/ab;->gy:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/location/ao;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/ab;->gA:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/ab;->gA:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/ab;->gB:Landroid/os/Looper;

    new-instance v0, Lcom/baidu/location/ab$a;

    iget-object v1, p0, Lcom/baidu/location/ab;->gB:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/ab$a;-><init>(Lcom/baidu/location/ab;Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/location/ab;->gD:Lcom/baidu/location/ab$a;

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/baidu/location/ab;->gD:Lcom/baidu/location/ab$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/ab;->gz:Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/ab;->gD:Lcom/baidu/location/ab$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/ab$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu location service start1 ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/ab;->gv:Z

    invoke-static {}, Lcom/baidu/location/ar;->bW()Lcom/baidu/location/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ar;->bT()V

    invoke-static {}, Lcom/baidu/location/h;->for()Lcom/baidu/location/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h;->do()V

    invoke-static {}, Lcom/baidu/location/r;->H()Lcom/baidu/location/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/r;->G()V

    invoke-static {}, Lcom/baidu/location/x;->a4()Lcom/baidu/location/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/x;->aW()V

    invoke-static {}, Lcom/baidu/location/aw;->do()Lcom/baidu/location/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aw;->if()V

    sget-object v0, Lcom/baidu/location/ab;->gD:Lcom/baidu/location/ab$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/ab$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUnBind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
