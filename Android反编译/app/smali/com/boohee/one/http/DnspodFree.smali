.class public Lcom/boohee/one/http/DnspodFree;
.super Ljava/lang/Object;
.source "DnspodFree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/http/DnspodFree$OnIpGetListener;
    }
.end annotation


# static fields
.field public static final CACHED_TIME:J = 0x5265c00L

.field public static final SPLIT:Ljava/lang/String; = ","

.field static final TAG:Ljava/lang/String;

.field public static freeUrl:Ljava/lang/String;

.field public static hosts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/boohee/one/http/DnspodFree;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/http/DnspodFree;->TAG:Ljava/lang/String;

    .line 43
    const-string v0, "http://119.29.29.29/d?dn=%s"

    sput-object v0, Lcom/boohee/one/http/DnspodFree;->freeUrl:Ljava/lang/String;

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/boohee/one/http/client/ApiClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/boohee/one/http/client/ApnClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/boohee/one/http/client/FoodClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/boohee/one/http/client/IFoodClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/boohee/one/http/client/MessengerClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/boohee/one/http/client/OneClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/boohee/one/http/client/BingoClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/boohee/one/http/client/PassportClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lcom/boohee/one/http/client/RecordClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lcom/boohee/one/http/client/StatusClient;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/one/http/DnspodFree;->hosts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static clearIpCache()V
    .locals 6

    .prologue
    .line 152
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v4

    .line 153
    .local v4, "prefs":Lcom/boohee/database/OnePreference;
    sget-object v0, Lcom/boohee/one/http/DnspodFree;->hosts:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 154
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/boohee/database/OnePreference;->remove(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "host":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getBestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    :cond_0
    invoke-static {}, Lcom/boohee/utils/BlackTech;->isIPDirectConnect()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    .end local p0    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 99
    .restart local p0    # "url":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/boohee/utils/BlackTech;->isIPManualConnect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/one/http/DnspodFree;->getCachedIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "ip":Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/utility/RegularUtils;->isIP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCachedDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "prefString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const/4 v3, 0x0

    .line 145
    :goto_0
    return-object v3

    .line 140
    :cond_0
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "temp":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-le v3, v4, :cond_1

    .line 142
    if-eqz v2, :cond_2

    aget-object v0, v2, v4

    :cond_1
    :goto_1
    move-object v3, v0

    .line 145
    goto :goto_0

    .line 142
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static getCachedIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, ""

    .line 119
    .local v0, "ip":Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "prefString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 125
    .end local v0    # "ip":Ljava/lang/String;
    .local v1, "ip":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 123
    .end local v1    # "ip":Ljava/lang/String;
    .restart local v0    # "ip":Ljava/lang/String;
    :cond_0
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "temp":[Ljava/lang/String;
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    aget-object v0, v3, v4

    :goto_1
    move-object v1, v0

    .line 125
    .end local v0    # "ip":Ljava/lang/String;
    .restart local v1    # "ip":Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v1    # "ip":Ljava/lang/String;
    .restart local v0    # "ip":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getIpWithHost(Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/boohee/one/http/DnspodFree;->getIpWithHost(Ljava/lang/String;Lcom/boohee/one/http/DnspodFree$OnIpGetListener;)V

    .line 53
    return-void
.end method

.method public static getIpWithHost(Ljava/lang/String;Lcom/boohee/one/http/DnspodFree$OnIpGetListener;)V
    .locals 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/boohee/one/http/DnspodFree$OnIpGetListener;

    .prologue
    .line 59
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "now":Ljava/lang/String;
    invoke-static {p0}, Lcom/boohee/one/http/DnspodFree;->getCachedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/boohee/one/http/DnspodFree;->getCachedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/boohee/utils/DateFormatUtils;->getDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 61
    :cond_0
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    sget-object v2, Lcom/boohee/one/http/DnspodFree;->freeUrl:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/http/DnspodFree$1;

    invoke-direct {v3, p0, p1}, Lcom/boohee/one/http/DnspodFree$1;-><init>(Ljava/lang/String;Lcom/boohee/one/http/DnspodFree$OnIpGetListener;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 79
    .local v1, "request":Lcom/android/volley/toolbox/StringRequest;
    sget-object v2, Lcom/boohee/one/http/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 81
    .end local v1    # "request":Lcom/android/volley/toolbox/StringRequest;
    :cond_1
    return-void
.end method
