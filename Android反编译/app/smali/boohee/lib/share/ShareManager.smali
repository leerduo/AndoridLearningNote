.class public Lboohee/lib/share/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# static fields
.field static DEF_IMAGE_URL:Ljava/lang/String; = null

.field private static DEF_TITLE:Ljava/lang/String; = null

.field public static final DEF_URL:Ljava/lang/String; = "http://www.boohee.com"

.field private static mShare:Lboohee/lib/share/IShare;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defImageUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context \u4e0d\u80fd\u4e3anull\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    sput-object p1, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lboohee/lib/share/R$string;->share_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lboohee/lib/share/ShareManager;->DEF_TITLE:Ljava/lang/String;

    .line 38
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lboohee/lib/share/ShareSDKHelper;->newIntance()Lboohee/lib/share/ShareSDKHelper;

    move-result-object v0

    sput-object v0, Lboohee/lib/share/ShareManager;->mShare:Lboohee/lib/share/IShare;

    .line 40
    return-void
.end method

.method private static isInit()Z
    .locals 2

    .prologue
    .line 44
    const-string v1, "ShareLib"

    sget-object v0, Lboohee/lib/share/ShareManager;->mShare:Lboohee/lib/share/IShare;

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u5148\u521d\u59cb\u5316\uff01"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lboohee/lib/share/ShareManager;->mShare:Lboohee/lib/share/IShare;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 44
    :cond_0
    const-string v0, "ShareLib\u521d\u59cb\u5316\u6210\u529f\uff01"

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lboohee/lib/share/ShareManager;->DEF_TITLE:Ljava/lang/String;

    sget-object v1, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    invoke-static {p0, v0, p1, v1}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    const-string v3, "http://www.boohee.com"

    new-array v5, v2, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v3, "http://www.boohee.com"

    const-string v4, ""

    new-array v5, v2, [Ljava/lang/String;

    aput-object p3, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "image"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    new-array v5, v2, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v4, ""

    new-array v5, v2, [Ljava/lang/String;

    aput-object p4, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "picturePath"    # [Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Lboohee/lib/share/ShareManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lboohee/lib/share/ShareManager;->DEF_TITLE:Ljava/lang/String;

    .line 171
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p3, "http://www.boohee.com"

    .line 172
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p4, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    .line 173
    :cond_3
    sget-object v0, Lboohee/lib/share/ShareManager;->mShare:Lboohee/lib/share/IShare;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lboohee/lib/share/IShare;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "picturePath"    # [Ljava/lang/String;

    .prologue
    .line 129
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "picturePath"    # [Ljava/lang/String;

    .prologue
    .line 115
    const-string v3, "http://www.boohee.com"

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static shareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const-string v3, ""

    new-array v5, v2, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->shareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v3, ""

    const-string v4, ""

    new-array v5, v2, [Ljava/lang/String;

    aput-object p3, v5, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lboohee/lib/share/ShareManager;->shareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static varargs shareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "picturePath"    # [Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lboohee/lib/share/ShareManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lboohee/lib/share/ShareManager;->DEF_TITLE:Ljava/lang/String;

    .line 153
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p4, Lboohee/lib/share/ShareManager;->DEF_IMAGE_URL:Ljava/lang/String;

    .line 154
    :cond_2
    sget-object v0, Lboohee/lib/share/ShareManager;->mShare:Lboohee/lib/share/IShare;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lboohee/lib/share/IShare;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
