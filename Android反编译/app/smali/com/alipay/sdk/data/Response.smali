.class public Lcom/alipay/sdk/data/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x1f7

.field public static final c:I


# instance fields
.field d:Lcom/alipay/sdk/data/Envelope;

.field e:[Lorg/apache/http/Header;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/data/Response;->f:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/sdk/data/Response;->h:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/data/Response;->n:Z

    .line 38
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    .line 43
    iput-object v2, p0, Lcom/alipay/sdk/data/Response;->e:[Lorg/apache/http/Header;

    .line 46
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alipay/sdk/data/Response;->n:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/sdk/data/Envelope;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/alipay/sdk/data/Response;->f:I

    .line 69
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/alipay/sdk/data/Response;->h:J

    .line 105
    return-void
.end method

.method public final a(Lcom/alipay/sdk/data/Envelope;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    .line 109
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/Response;->n:Z

    .line 57
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alipay/sdk/data/Response;->f:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->j:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->k:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/sdk/data/Response;->m:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->d:Lcom/alipay/sdk/data/Envelope;

    invoke-virtual {v1}, Lcom/alipay/sdk/data/Envelope;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/sdk/data/Response;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/sdk/data/Response;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reflectedData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/data/Response;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method
