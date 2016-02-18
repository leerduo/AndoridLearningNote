.class public Lcom/boohee/one/http/IPCheck;
.super Ljava/lang/Object;
.source "IPCheck.java"


# static fields
.field public static final IP_TEST:Ljava/lang/String; = "/iptest.txt"

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/boohee/one/http/IPCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/http/IPCheck;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheIpAndApiTest()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/boohee/one/http/client/ApiClient;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/http/IPCheck$1;

    invoke-direct {v1}, Lcom/boohee/one/http/IPCheck$1;-><init>()V

    invoke-static {v0, v1}, Lcom/boohee/one/http/DnspodFree;->getIpWithHost(Ljava/lang/String;Lcom/boohee/one/http/DnspodFree$OnIpGetListener;)V

    .line 27
    return-void
.end method

.method public static ipTest()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "/iptest.txt"

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/boohee/one/http/IPCheck$2;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/boohee/one/http/IPCheck$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/ApiClient;->get(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 46
    return-void
.end method
