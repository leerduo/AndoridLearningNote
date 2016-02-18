.class public Lcom/alipay/sdk/data/InteractionData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "application/octet-stream;binary/octet-stream"


# instance fields
.field private b:[Lorg/apache/http/Header;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->b:[Lorg/apache/http/Header;

    .line 22
    iput-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->c:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/sdk/data/InteractionData;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/sdk/data/InteractionData;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private d()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->b:[Lorg/apache/http/Header;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->d:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->c:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->b:[Lorg/apache/http/Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->b:[Lorg/apache/http/Header;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 56
    :cond_1
    return-object v0

    .line 50
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v2, p0, Lcom/alipay/sdk/data/InteractionData;->b:[Lorg/apache/http/Header;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 52
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a([Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/sdk/data/InteractionData;->b:[Lorg/apache/http/Header;

    .line 33
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/sdk/data/InteractionData;->d:Ljava/lang/String;

    return-object v0
.end method
