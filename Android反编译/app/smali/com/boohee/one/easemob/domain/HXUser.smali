.class public Lcom/boohee/one/easemob/domain/HXUser;
.super Lcom/easemob/chat/EMContact;
.source "HXUser.java"


# instance fields
.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_avatar_url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_avatar_url"
    .end annotation
.end field

.field private booheeUserName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_name"
    .end annotation
.end field

.field private group_id:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private role:Ljava/lang/String;

.field private unreadMsgCount:I

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "im_user_name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "im_user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/easemob/chat/EMContact;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/easemob/chat/EMContact;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->username:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/boohee/one/easemob/domain/HXUser;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 108
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/easemob/domain/HXUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/boohee/one/easemob/domain/HXUser;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/boohee/one/easemob/domain/HXUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBooheeUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->booheeUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMsgCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->unreadMsgCount:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/boohee/one/easemob/domain/HXUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->avatar:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setBooheeUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "booheeUserName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->booheeUserName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "group_id"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->group_id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->header:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->role:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUnreadMsgCount(I)V
    .locals 0
    .param p1, "unreadMsgCount"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->unreadMsgCount:I

    .line 72
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/boohee/one/easemob/domain/HXUser;->username:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->nick:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->username:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/domain/HXUser;->nick:Ljava/lang/String;

    goto :goto_0
.end method
