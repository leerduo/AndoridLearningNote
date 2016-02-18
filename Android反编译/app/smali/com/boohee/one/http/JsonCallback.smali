.class public Lcom/boohee/one/http/JsonCallback;
.super Ljava/lang/Object;
.source "JsonCallback.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private errorCode:I

.field private hasErrorMsg:Z

.field private mContext:Landroid/content/Context;

.field private mMockObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/boohee/one/http/JsonCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/http/JsonCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/http/JsonCallback;->hasErrorMsg:Z

    .line 43
    iput-object p1, p0, Lcom/boohee/one/http/JsonCallback;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public fail(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "hasError"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 181
    return-void
.end method

.method public finishWithMock(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 195
    return-void
.end method

.method public ok(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 139
    return-void
.end method

.method public ok(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 174
    :cond_0
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 150
    :cond_0
    return-void
.end method

.method public ok(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "hasError"    # Z

    .prologue
    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-static {p1}, Lcom/boohee/model/ApiError;->getErrorMessage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1}, Lcom/boohee/model/ApiError;->getErrorMessage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v4, "Volley/ErrorResponse"

    invoke-static {v4, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 86
    .local v3, "networkResponse":Lcom/android/volley/NetworkResponse;
    if-eqz v3, :cond_1

    .line 87
    iget-object v4, v3, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v2, Ljava/lang/String;

    .end local v2    # "errorMessage":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 91
    .restart local v2    # "errorMessage":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    const-string v4, "errors"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/boohee/one/http/JsonCallback;->hasErrorMsg:Z

    .line 96
    invoke-static {v1}, Lcom/boohee/model/ApiError;->getErrorMessage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1}, Lcom/boohee/model/ApiError;->getErrorCode(Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/boohee/one/http/JsonCallback;->errorCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "error":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    instance-of v4, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/boohee/one/http/JsonCallback;->mContext:Landroid/content/Context;

    const-string v5, "AndroidNoConnectionError"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const-string v2, "NoConnectionError\uff1a\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u7a0d\u540e\u91cd\u8bd5"

    .line 127
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 128
    iget-boolean v4, p0, Lcom/boohee/one/http/JsonCallback;->hasErrorMsg:Z

    iget v5, p0, Lcom/boohee/one/http/JsonCallback;->errorCode:I

    invoke-virtual {p0, v2, v4, v5}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;ZI)V

    .line 130
    invoke-virtual {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 131
    return-void

    .line 99
    .restart local v1    # "error":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "error":Lorg/json/JSONObject;
    :cond_3
    instance-of v4, p1, Lcom/android/volley/ServerError;

    if-eqz v4, :cond_4

    .line 113
    iget-object v4, p0, Lcom/boohee/one/http/JsonCallback;->mContext:Landroid/content/Context;

    const-string v5, "AndroidServerError"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    const-string v2, "ServerError\uff1a\u670d\u52a1\u5668\u51fa\u9519\u5566\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_1

    .line 115
    :cond_4
    instance-of v4, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v4, :cond_5

    .line 116
    sget-object v4, Lcom/boohee/one/http/JsonCallback;->TAG:Ljava/lang/String;

    const-string v5, "AuthFailureError"

    invoke-static {v4, v5}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_5
    instance-of v4, p1, Lcom/android/volley/ParseError;

    if-eqz v4, :cond_6

    .line 118
    sget-object v4, Lcom/boohee/one/http/JsonCallback;->TAG:Ljava/lang/String;

    const-string v5, "ParseError"

    invoke-static {v4, v5}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_6
    instance-of v4, p1, Lcom/android/volley/NetworkError;

    if-eqz v4, :cond_7

    .line 120
    iget-object v4, p0, Lcom/boohee/one/http/JsonCallback;->mContext:Landroid/content/Context;

    const-string v5, "AndroidNetworkError"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    const-string v2, "NetworkError\uff1a\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_1

    .line 122
    :cond_7
    instance-of v4, p1, Lcom/android/volley/TimeoutError;

    if-eqz v4, :cond_2

    .line 123
    iget-object v4, p0, Lcom/boohee/one/http/JsonCallback;->mContext:Landroid/content/Context;

    const-string v5, "AndroidTimeoutError"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    const-string v2, "TimeoutError\uff1a\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/boohee/one/http/JsonCallback;->mMockObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/boohee/one/http/JsonCallback;->mMockObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/boohee/one/http/JsonCallback;->finishWithMock(Lorg/json/JSONObject;)V

    .line 187
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/boohee/one/http/JsonCallback;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/http/JsonCallback;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 79
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    const-string v2, "Volley/Response"

    invoke-static {v2, p1}, Lcom/boohee/utils/Helper;->logJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Ljava/lang/String;)V

    .line 57
    :try_start_0
    const-string v2, "{"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_4

    .line 61
    move-object v1, p1

    :cond_4
    move-object v3, v1

    .line 67
    :goto_1
    instance-of v2, v3, Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    move-object v2, v3

    .line 68
    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "errors"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 69
    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v3}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 78
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    goto :goto_0

    .line 63
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v1

    goto :goto_1

    .line 71
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_6
    iput-boolean v5, p0, Lcom/boohee/one/http/JsonCallback;->hasErrorMsg:Z

    .line 72
    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v5}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;Z)V

    goto :goto_2

    .line 74
    :cond_7
    instance-of v2, v3, Lorg/json/JSONArray;

    if-eqz v2, :cond_5

    .line 75
    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {p0, v3}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONArray;)V

    goto :goto_2
.end method

.method public setMock(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/boohee/one/http/JsonCallback;->mMockObject:Lorg/json/JSONObject;

    .line 199
    return-void
.end method
