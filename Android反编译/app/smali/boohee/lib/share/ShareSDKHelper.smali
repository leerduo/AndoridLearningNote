.class Lboohee/lib/share/ShareSDKHelper;
.super Ljava/lang/Object;
.source "ShareSDKHelper.java"

# interfaces
.implements Lboohee/lib/share/IShare;


# static fields
.field public static instance:Lboohee/lib/share/ShareSDKHelper;


# instance fields
.field public mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lboohee/lib/share/ShareSDKHelper;

    invoke-direct {v0}, Lboohee/lib/share/ShareSDKHelper;-><init>()V

    sput-object v0, Lboohee/lib/share/ShareSDKHelper;->instance:Lboohee/lib/share/ShareSDKHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    iput-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    .line 26
    invoke-direct {p0}, Lboohee/lib/share/ShareSDKHelper;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 31
    return-void
.end method

.method public static newIntance()Lboohee/lib/share/ShareSDKHelper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lboohee/lib/share/ShareSDKHelper;->instance:Lboohee/lib/share/ShareSDKHelper;

    return-object v0
.end method

.method private varargs setDefaultImageUrlIfNeed(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "picturePath"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    :cond_2
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    sget-object v0, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLocalImagePath([Ljava/lang/String;)V
    .locals 3
    .param p1, "picturePath"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_1

    array-length v0, p1

    if-ne v0, v2, :cond_1

    aget-object v0, p1, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    if-eqz p1, :cond_0

    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 56
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageArray([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "picturePath"    # [Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p6}, Lboohee/lib/share/ShareSDKHelper;->setLocalImagePath([Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p5, p6}, Lboohee/lib/share/ShareSDKHelper;->setDefaultImageUrlIfNeed(Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 42
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSiteUrl(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lboohee/lib/share/ShareSDKHelper;->mOks:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 48
    return-void
.end method
