.class public Lcom/alipay/sdk/protocol/ElementAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->g:Z

    .line 27
    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->h:Z

    .line 34
    iput-object p1, p0, Lcom/alipay/sdk/protocol/ElementAction;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;
    .locals 12

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->i()Z

    move-result v5

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->j()Z

    move-result v6

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->k()Z

    move-result v7

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->a()Lorg/json/JSONObject;

    move-result-object v11

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :goto_0
    return-object v0

    .line 121
    :cond_0
    new-instance v1, Lcom/alipay/sdk/protocol/ElementAction;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/protocol/ElementAction;-><init>(Ljava/lang/String;)V

    .line 122
    iput-object p0, v1, Lcom/alipay/sdk/protocol/ElementAction;->a:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-object v0, v1, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    .line 124
    iput-object p2, v1, Lcom/alipay/sdk/protocol/ElementAction;->c:Ljava/lang/String;

    .line 125
    iput-object p3, v1, Lcom/alipay/sdk/protocol/ElementAction;->d:Ljava/lang/String;

    .line 126
    iput-object p4, v1, Lcom/alipay/sdk/protocol/ElementAction;->e:Ljava/lang/String;

    .line 127
    iput-boolean p5, v1, Lcom/alipay/sdk/protocol/ElementAction;->f:Z

    .line 128
    iput-boolean p6, v1, Lcom/alipay/sdk/protocol/ElementAction;->g:Z

    .line 129
    iput-boolean p7, v1, Lcom/alipay/sdk/protocol/ElementAction;->h:Z

    .line 130
    iput-object p8, v1, Lcom/alipay/sdk/protocol/ElementAction;->i:Ljava/lang/String;

    .line 131
    iput-object p9, v1, Lcom/alipay/sdk/protocol/ElementAction;->j:Ljava/lang/String;

    .line 132
    iput-object p10, v1, Lcom/alipay/sdk/protocol/ElementAction;->k:Ljava/lang/String;

    .line 133
    iput-object p11, v1, Lcom/alipay/sdk/protocol/ElementAction;->l:Lorg/json/JSONObject;

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 55
    .line 56
    if-eqz p0, :cond_b

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    if-eqz p0, :cond_a

    const-string v1, "host"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 61
    const-string v1, "host"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_1
    if-eqz p0, :cond_9

    const-string v2, "params"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    const-string v2, "params"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    :goto_2
    if-eqz p0, :cond_8

    const-string v3, "enctype"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 69
    const-string v3, "enctype"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    :goto_3
    if-eqz p0, :cond_0

    const-string v5, "request_param"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    const-string v4, "request_param"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_0
    if-eqz p0, :cond_7

    const-string v5, "validate"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 77
    const-string v5, "validate"

    invoke-virtual {p0, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 81
    :goto_4
    if-eqz p0, :cond_6

    const-string v6, "https"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 82
    const-string v6, "https"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    .line 86
    :goto_5
    if-eqz p0, :cond_1

    const-string v8, "formSubmit"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    const-string v7, "formSubmit"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 90
    :cond_1
    const-string v8, ""

    .line 91
    if-eqz p0, :cond_2

    const-string v9, "namespace"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    const-string v8, "namespace"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    :cond_2
    const-string v9, ""

    .line 96
    if-eqz p0, :cond_3

    const-string v10, "apiVersion"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 97
    const-string v9, "apiVersion"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    :cond_3
    const-string v10, ""

    .line 101
    if-eqz p0, :cond_4

    const-string v11, "apiName"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 102
    const-string v10, "apiName"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    move-object v11, p0

    .line 105
    invoke-static/range {v0 .. v11}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    return-object v0

    .line 82
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    move-object v3, v4

    goto/16 :goto_3

    :cond_9
    move-object v2, v4

    goto/16 :goto_2

    :cond_a
    move-object v1, v4

    goto/16 :goto_1

    :cond_b
    move-object v0, v4

    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 111
    if-eqz v11, :cond_b

    const-string v0, "name"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "name"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v11, :cond_a

    const-string v1, "host"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "host"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v11, :cond_9

    const-string v2, "params"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "params"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v11, :cond_8

    const-string v3, "enctype"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "enctype"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v11, :cond_0

    const-string v5, "request_param"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "request_param"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v11, :cond_7

    const-string v5, "validate"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "validate"

    invoke-virtual {v11, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_4
    if-eqz v11, :cond_6

    const-string v6, "https"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "https"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_5
    if-eqz v11, :cond_1

    const-string v8, "formSubmit"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "formSubmit"

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_1
    const-string v8, ""

    if-eqz v11, :cond_2

    const-string v9, "namespace"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v8, "namespace"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v9, ""

    if-eqz v11, :cond_3

    const-string v10, "apiVersion"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v9, "apiVersion"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_3
    const-string v10, ""

    if-eqz v11, :cond_4

    const-string v12, "apiName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v10, "apiName"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-static/range {v0 .. v11}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    move-object v3, v4

    goto/16 :goto_3

    :cond_9
    move-object v2, v4

    goto/16 :goto_2

    :cond_a
    move-object v1, v4

    goto/16 :goto_1

    :cond_b
    move-object v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/sdk/protocol/ElementAction;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->f:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->g:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ElementAction;->h:Z

    return v0
.end method
