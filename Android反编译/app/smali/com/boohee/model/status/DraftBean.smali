.class public Lcom/boohee/model/status/DraftBean;
.super Ljava/lang/Object;
.source "DraftBean.java"


# instance fields
.field public attachMent:Lcom/boohee/model/status/AttachMent;

.field public selectPhotoMsg:Ljava/lang/String;

.field public selectedPictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sendTextMsg:Ljava/lang/String;

.field public takePhotoMsg:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/status/DraftBean;->takePhotoMsg:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/status/DraftBean;->selectPhotoMsg:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/status/DraftBean;->sendTextMsg:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/model/status/DraftBean;->uri:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/boohee/model/status/DraftBean;
    .locals 3
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/boohee/model/status/DraftBean;

    instance-of v2, v0, Lcom/google/gson/Gson;

    if-nez v2, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/boohee/model/status/DraftBean;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getSendTextMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/model/status/DraftBean;->sendTextMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/model/status/DraftBean;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setSendTextMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendTextMsg"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/model/status/DraftBean;->sendTextMsg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/boohee/model/status/DraftBean;->uri:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
