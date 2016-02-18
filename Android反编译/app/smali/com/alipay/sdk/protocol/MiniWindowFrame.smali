.class public Lcom/alipay/sdk/protocol/MiniWindowFrame;
.super Lcom/alipay/sdk/protocol/WindowData;
.source "SourceFile"


# instance fields
.field private i:I

.field private j:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/protocol/WindowData;-><init>(Lcom/alipay/sdk/data/Request;Lcom/alipay/sdk/data/Response;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->j:Z

    .line 28
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->j:Z

    return v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/alipay/sdk/protocol/WindowData;->a(Lorg/json/JSONObject;)V

    .line 67
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    const-string v1, "form"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "oneTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 72
    iput-boolean v3, p0, Lcom/alipay/sdk/protocol/WindowData;->h:Z

    .line 73
    const-string v3, "page"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->j:Z

    .line 76
    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v3, "dialog"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x7

    iput v1, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    .line 79
    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->j:Z

    goto :goto_0

    .line 80
    :cond_2
    const-string v3, "toast"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    const-string v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v1

    .line 84
    const/4 v2, 0x6

    iput v2, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-static {v1}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v1

    .line 87
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 88
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->d:Lcom/alipay/sdk/protocol/ActionType;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->e:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v3, v4, :cond_4

    .line 89
    :cond_3
    const/16 v3, 0xa

    iput v3, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_5
    const-string v0, "confirm"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "fullscreen"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->j:Z

    .line 98
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    goto :goto_0

    .line 101
    :cond_6
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/alipay/sdk/protocol/MiniStatus;->a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/MiniStatus;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/alipay/sdk/protocol/MiniStatus;->c:Lcom/alipay/sdk/protocol/MiniStatus;

    if-ne v0, v1, :cond_7

    .line 104
    const/16 v0, -0xa

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    goto :goto_0

    .line 106
    :cond_7
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alipay/sdk/protocol/MiniWindowFrame;->i:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
