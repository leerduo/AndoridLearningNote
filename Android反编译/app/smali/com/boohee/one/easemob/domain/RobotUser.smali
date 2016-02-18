.class public Lcom/boohee/one/easemob/domain/RobotUser;
.super Lcom/easemob/chat/EMContact;
.source "RobotUser.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/easemob/chat/EMContact;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/RobotUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/RobotUser;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/RobotUser;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/RobotUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/RobotUser;->avatar:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/RobotUser;->header:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/RobotUser;->nick:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/RobotUser;->username:Ljava/lang/String;

    .line 19
    return-void
.end method
