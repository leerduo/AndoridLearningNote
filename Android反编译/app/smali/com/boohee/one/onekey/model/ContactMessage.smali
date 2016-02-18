.class public Lcom/boohee/one/onekey/model/ContactMessage;
.super Ljava/lang/Object;
.source "ContactMessage.java"


# instance fields
.field public avatar_url:Ljava/lang/String;

.field public big_photo_url:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public msg_id:I

.field public sender:Ljava/lang/String;

.field public small_photo_url:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUser()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/onekey/model/ContactMessage;->sender:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
