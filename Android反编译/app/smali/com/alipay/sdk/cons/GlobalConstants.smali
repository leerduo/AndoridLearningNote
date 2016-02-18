.class public Lcom/alipay/sdk/cons/GlobalConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = false

.field public static b:Ljava/lang/String; = null

.field public static final c:Ljava/lang/String; = "https://mobiletestabc.alipaydev.com/mobileclientgw/stable/gateway.do"

.field public static d:Ljava/lang/String; = null

.field public static final e:Ljava/lang/String; = "2014052600006128"

.field public static final f:Ljava/lang/String; = "1"

.field public static final g:Ljava/lang/String; = "9.1.8"

.field public static final h:Ljava/lang/String; = "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

.field public static final i:Ljava/lang/String; = "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

.field public static final j:Ljava/lang/String; = "https://mclient.alipay.com/home/exterfaceAssign.htm?"

.field public static final k:Ljava/lang/String; = "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

.field public static final l:Ljava/lang/String; = "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

.field public static final m:Ljava/lang/String; = "service=alipay.acquire.mr.ord.createandpay"

.field public static n:Z = false

.field public static final o:Ljava/lang/String; = "sdklite://h5quit?result="

.field public static final p:Ljava/lang/String; = "sdklite://h5quit"

.field public static final q:Ljava/lang/String; = "http://m.alipay.com/?action=h5quit"

.field public static final r:Ljava/lang/String; = "&end_code="

.field public static final s:Ljava/lang/String; = "&return_url=\""

.field public static final t:Ljava/lang/String; = "&return_url="

.field public static final u:Ljava/lang/String; = "alipays://platformapi/startApp?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "http://mcgw.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    .line 26
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    sput-object v0, Lcom/alipay/sdk/cons/GlobalConstants;->d:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/sdk/cons/GlobalConstants;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
