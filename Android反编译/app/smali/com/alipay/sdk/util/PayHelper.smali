.class public Lcom/alipay/sdk/util/PayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "failed"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    .line 38
    new-instance v0, Lcom/alipay/sdk/util/PayHelper$1;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/PayHelper$1;-><init>(Lcom/alipay/sdk/util/PayHelper;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    .line 140
    new-instance v0, Lcom/alipay/sdk/util/PayHelper$2;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/PayHelper$2;-><init>(Lcom/alipay/sdk/util/PayHelper;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/PayHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 97
    .line 99
    iget-boolean v0, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, ""

    .line 137
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iput-boolean v3, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    .line 104
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 110
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 113
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_3

    .line 116
    const-string v0, "failed"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    :try_start_3
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    :goto_1
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 128
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 133
    :goto_3
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    goto :goto_0

    .line 130
    :catch_1
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_1

    .line 118
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 121
    :try_start_7
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 128
    :try_start_8
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 133
    :goto_4
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    goto :goto_0

    .line 130
    :catch_2
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_4

    :catch_3
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    :try_start_9
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 133
    :goto_5
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    throw v0

    .line 130
    :catch_4
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/sdk/util/PayHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/Utils;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    const-string v1, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/sdk/app/Result;->c()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.alipay.android.app.MspService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
