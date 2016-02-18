.class public Lcn/sharesdk/onekeyshare/ReflectableShareContentCustomizeCallback;
.super Ljava/lang/Object;
.source "ReflectableShareContentCustomizeCallback.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;


# instance fields
.field private onShareCallback:Landroid/os/Handler$Callback;

.field private onShareWhat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "paramsToShare"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    .line 26
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/ReflectableShareContentCustomizeCallback;->onShareCallback:Landroid/os/Handler$Callback;

    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 28
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcn/sharesdk/onekeyshare/ReflectableShareContentCustomizeCallback;->onShareWhat:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 29
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/ReflectableShareContentCustomizeCallback;->onShareCallback:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 32
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setOnShareCallback(ILandroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 20
    iput p1, p0, Lcn/sharesdk/onekeyshare/ReflectableShareContentCustomizeCallback;->onShareWhat:I

    .line 21
    iput-object p2, p0, Lcn/sharesdk/onekeyshare/ReflectableShareContentCustomizeCallback;->onShareCallback:Landroid/os/Handler$Callback;

    .line 22
    return-void
.end method
