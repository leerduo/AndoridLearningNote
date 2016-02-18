.class public final enum Lcom/alipay/sdk/protocol/ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/sdk/protocol/ActionType;

.field public static final enum b:Lcom/alipay/sdk/protocol/ActionType;

.field public static final enum c:Lcom/alipay/sdk/protocol/ActionType;

.field public static final enum d:Lcom/alipay/sdk/protocol/ActionType;

.field public static final enum e:Lcom/alipay/sdk/protocol/ActionType;

.field public static final enum f:Lcom/alipay/sdk/protocol/ActionType;

.field public static final enum g:Lcom/alipay/sdk/protocol/ActionType;

.field private static final synthetic v:[Lcom/alipay/sdk/protocol/ActionType;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "WapPay"

    const-string v2, "js://wappay"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    .line 15
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "DownLoad"

    const-string v2, "js://download"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->b:Lcom/alipay/sdk/protocol/ActionType;

    .line 17
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "Submit"

    const-string v2, "submit"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    .line 19
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "Confirm"

    const-string v2, "js://confirm"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->d:Lcom/alipay/sdk/protocol/ActionType;

    .line 21
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "Alert"

    const-string v2, "js://alert"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->e:Lcom/alipay/sdk/protocol/ActionType;

    .line 23
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "Update"

    const/4 v2, 0x5

    const-string v3, "js://update"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->f:Lcom/alipay/sdk/protocol/ActionType;

    .line 25
    new-instance v0, Lcom/alipay/sdk/protocol/ActionType;

    const-string v1, "Exit"

    const/4 v2, 0x6

    const-string v3, "js://exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/protocol/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->g:Lcom/alipay/sdk/protocol/ActionType;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/sdk/protocol/ActionType;

    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->b:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->d:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->e:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/sdk/protocol/ActionType;->f:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/sdk/protocol/ActionType;->g:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/sdk/protocol/ActionType;->v:[Lcom/alipay/sdk/protocol/ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/alipay/sdk/protocol/ActionType;->h:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    if-eqz p0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 110
    :goto_0
    if-nez v7, :cond_0

    .line 111
    new-array v0, v3, [Lcom/alipay/sdk/protocol/ActionType;

    .line 112
    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v4

    .line 146
    :goto_1
    return-object v0

    .line 115
    :cond_0
    array-length v0, v7

    new-array v2, v0, [Lcom/alipay/sdk/protocol/ActionType;

    .line 117
    array-length v8, v7

    move v5, v4

    move v6, v4

    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v9, v7, v5

    .line 118
    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    .line 119
    invoke-static {}, Lcom/alipay/sdk/protocol/ActionType;->values()[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v10

    array-length v11, v10

    move v3, v4

    :goto_3
    if-ge v3, v11, :cond_4

    aget-object v0, v10, v3

    .line 120
    iget-object v12, v0, Lcom/alipay/sdk/protocol/ActionType;->h:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 126
    :goto_4
    iput-object v9, v0, Lcom/alipay/sdk/protocol/ActionType;->i:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->j:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->h()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->k:Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->l:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->m:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->n:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->k()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/sdk/protocol/ActionType;->o:Z

    .line 133
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->l()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/sdk/protocol/ActionType;->p:Z

    .line 134
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->m()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/sdk/protocol/ActionType;->q:Z

    .line 135
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->r:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->s:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->t:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/alipay/sdk/protocol/ElementAction;->a()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/protocol/ActionType;->u:Lorg/json/JSONObject;

    .line 139
    aput-object v0, v2, v6

    .line 140
    add-int/lit8 v1, v6, 0x1

    .line 117
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_2

    .line 119
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    move-object v0, v2

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    new-array v0, v3, [Lcom/alipay/sdk/protocol/ActionType;

    .line 144
    sget-object v1, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    aput-object v1, v0, v4

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v7, v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method private m()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/ActionType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/alipay/sdk/protocol/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/ActionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/protocol/ActionType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/sdk/protocol/ActionType;->v:[Lcom/alipay/sdk/protocol/ActionType;

    invoke-virtual {v0}, [Lcom/alipay/sdk/protocol/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/protocol/ActionType;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->u:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ActionType;->o:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ActionType;->p:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alipay/sdk/protocol/ActionType;->q:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/sdk/protocol/ActionType;->l:Ljava/lang/String;

    return-object v0
.end method
