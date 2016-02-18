.class public Lcom/alipay/sdk/protocol/FrameData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/alipay/sdk/data/Request;

.field private b:Lcom/alipay/sdk/data/Response;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/sdk/protocol/FrameData;->a:Lcom/alipay/sdk/data/Request;

    .line 23
    iput-object p2, p0, Lcom/alipay/sdk/protocol/FrameData;->b:Lcom/alipay/sdk/data/Response;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/sdk/data/Request;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->a:Lcom/alipay/sdk/data/Request;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/sdk/protocol/FrameData;->c:Lorg/json/JSONObject;

    .line 43
    return-void
.end method

.method public final b()Lcom/alipay/sdk/data/Response;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->b:Lcom/alipay/sdk/data/Response;

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/sdk/protocol/FrameData;->c:Lorg/json/JSONObject;

    return-object v0
.end method
