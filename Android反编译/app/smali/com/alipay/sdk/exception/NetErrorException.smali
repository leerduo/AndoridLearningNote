.class public final Lcom/alipay/sdk/exception/NetErrorException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final NET_CONNECTION_ERROR:I = 0x0

.field public static final SERVER_ERROR:I = 0x1

.field public static final SSL_ERROR:I = 0x2

.field private static final serialVersionUID:J = 0x743720ff0041e99bL


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    .line 45
    invoke-static {p1, p2}, Lcom/alipay/sdk/exception/NetErrorException;->printException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public static printException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "NetError"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetError--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    :try_start_0
    const-string v0, "NetError"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetError--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    return v0
.end method

.method public final setErrorCode(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/alipay/sdk/exception/NetErrorException;->errorCode:I

    .line 54
    return-void
.end method
