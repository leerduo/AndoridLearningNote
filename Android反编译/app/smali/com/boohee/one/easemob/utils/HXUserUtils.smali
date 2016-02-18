.class public Lcom/boohee/one/easemob/utils/HXUserUtils;
.super Ljava/lang/Object;
.source "HXUserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserInfo(Ljava/lang/String;)Lcom/boohee/one/easemob/domain/HXUser;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getContactList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/easemob/domain/HXUser;

    .line 28
    .local v0, "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/boohee/one/easemob/domain/HXUser;

    .end local v0    # "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    invoke-direct {v0, p0}, Lcom/boohee/one/easemob/domain/HXUser;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v0    # "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    :cond_0
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Lcom/boohee/one/easemob/domain/HXUser;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0, p0}, Lcom/boohee/one/easemob/domain/HXUser;->setNick(Ljava/lang/String;)V

    .line 37
    :cond_1
    return-object v0
.end method

.method public static saveUserInfo(Lcom/boohee/one/easemob/domain/HXUser;)V
    .locals 1
    .param p0, "newHXUser"    # Lcom/boohee/one/easemob/domain/HXUser;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/boohee/one/easemob/domain/HXUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v0, p0}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->saveContact(Lcom/boohee/one/easemob/domain/HXUser;)V

    goto :goto_0
.end method

.method public static setCurrentUserAvatar(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 56
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getUserProfileManager()Lcom/boohee/one/easemob/HXUserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXUserProfileManager;->getCurrentUserInfo()Lcom/boohee/one/easemob/domain/HXUser;

    move-result-object v0

    .line 57
    .local v0, "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/boohee/one/easemob/domain/HXUser;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static setCurrentUserNick(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 78
    invoke-static {}, Lcom/boohee/one/easemob/HXSDKHelper;->getInstance()Lcom/boohee/one/easemob/HXSDKHelper;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/easemob/BooheeHXSDKHelper;

    invoke-virtual {v1}, Lcom/boohee/one/easemob/BooheeHXSDKHelper;->getUserProfileManager()Lcom/boohee/one/easemob/HXUserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/easemob/HXUserProfileManager;->getCurrentUserInfo()Lcom/boohee/one/easemob/domain/HXUser;

    move-result-object v0

    .line 79
    .local v0, "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/boohee/one/easemob/domain/HXUser;->getBooheeUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static setUserAvatar(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/boohee/one/easemob/utils/HXUserUtils;->getUserInfo(Ljava/lang/String;)Lcom/boohee/one/easemob/domain/HXUser;

    move-result-object v0

    .line 47
    .local v0, "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/boohee/one/easemob/domain/HXUser;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static setUserNick(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/boohee/one/easemob/utils/HXUserUtils;->getUserInfo(Ljava/lang/String;)Lcom/boohee/one/easemob/domain/HXUser;

    move-result-object v0

    .line 67
    .local v0, "HXUser":Lcom/boohee/one/easemob/domain/HXUser;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/boohee/one/easemob/domain/HXUser;->getBooheeUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
