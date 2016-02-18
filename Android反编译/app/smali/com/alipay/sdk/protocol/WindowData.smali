.class public abstract Lcom/alipay/sdk/protocol/WindowData;
.super Lcom/alipay/sdk/protocol/FrameData;
.source "SourceFile"


# static fields
.field public static final a:I = 0x4

.field public static final b:I = 0x6

.field public static final c:I = 0x7

.field public static final d:I = 0x8

.field public static final e:I = 0x9

.field public static final f:I = 0xa

.field public static final g:I = -0xa


# instance fields
.field h:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/protocol/FrameData;-><init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/WindowData;->h:Z

    .line 36
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/alipay/sdk/protocol/WindowData;->h:Z

    .line 44
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/WindowData;->h:Z

    return v0
.end method


# virtual methods
.method public abstract d()Z
.end method

.method public abstract e()I
.end method

.method public abstract f()Ljava/lang/String;
.end method
