.class public Lcom/boohee/api/OneApi;
.super Ljava/lang/Object;
.source "OneApi.java"


# static fields
.field public static final URL_ADVERTISEMENT:Ljava/lang/String; = "/api/v1/advertisements"

.field public static final URL_ANDROID_RECOMMENDS:Ljava/lang/String; = "/api/v1/android_recommends"

.field public static final URL_BLOCKS:Ljava/lang/String; = "/api/v1/blocks"

.field public static final URL_BROADCASTS:Ljava/lang/String; = "/api/v1/broadcasts"

.field public static final URL_BROADCASTS_CLEAR:Ljava/lang/String; = "/api/v1/broadcasts/clear"

.field public static final URL_BROADCASTS_DETAIL:Ljava/lang/String; = "/api/v1/broadcasts/%1$d?token=%2$s"

.field public static final URL_CLEAR_NOTIFICATION:Ljava/lang/String; = "/api/v1/notifications/clear"

.field public static final URL_DELETE_POST:Ljava/lang/String; = "/api/v1/posts/%1$d"

.field public static final URL_FEEDBACKS:Ljava/lang/String; = "/api/v1/posts/%1$d/feedbacks"

.field public static final URL_FRIENDSHIPS:Ljava/lang/String; = "/api/v1/friendships"

.field public static final URL_GET_CLEAR_NEARBY:Ljava/lang/String; = "/api/v1/users/nearby"

.field public static final URL_GET_COMMENTS:Ljava/lang/String; = "/api/v1/posts/%1$d/comments"

.field public static final URL_GET_FOLLOWERS:Ljava/lang/String; = "/api/v1/followers"

.field public static final URL_GET_FOLLOWINGS:Ljava/lang/String; = "/api/v1/followings"

.field public static final URL_GET_FOLLOWINGS_SEARCH:Ljava/lang/String; = "/api/v1/followings"

.field public static final URL_GET_USER_ALIKE:Ljava/lang/String; = "/api/v1/users/alike"

.field public static final URL_GET_USER_NEARBY:Ljava/lang/String; = "/api/v1/users/nearby"

.field public static final URL_GET_USER_RECOMMENDED:Ljava/lang/String; = "/api/v1/users/recommended"

.field public static final URL_GET_USER_SEARCH:Ljava/lang/String; = "/api/v1/users/search"

.field public static final URL_HOME_TIMELINE:Ljava/lang/String; = "/api/v1/home_timeline"

.field public static final URL_HOT_TOPIC:Ljava/lang/String; = "http://shop.boohee.com/store/pages/more_topic"

.field public static final URL_MC_DELETE:Ljava/lang/String; = "/api/v1/mc/delete"

.field public static final URL_MC_PERIODS:Ljava/lang/String; = "/api/v1/mc_periods"

.field public static final URL_MC_PERIODS_LATEST:Ljava/lang/String; = "/api/v1/mc_periods/latest"

.field public static final URL_MC_PERIODS_MONTH:Ljava/lang/String; = "/api/v1/mc_periods/month"

.field public static final URL_MC_UPDATE_SUMMARIES:Ljava/lang/String; = "/api/v1/mc/update_summaries"

.field public static final URL_NOTIFICATIONS:Ljava/lang/String; = "/api/v1/notifications"

.field public static final URL_REPOST:Ljava/lang/String; = "/api/v1/posts/%1$d/repost"

.field public static final URL_TABBAR_SETTINGS:Ljava/lang/String; = "/api/v1/tabbar_settings"

.field public static final URL_UNREAD_COUNT:Ljava/lang/String; = "/api/v1/notifications/unread_count"

.field public static final URL_USERS_CHANGE_PROFILE:Ljava/lang/String; = "/api/v1/users/change_profile"

.field public static final URL_USERS_PROFILE:Ljava/lang/String; = "/api/v1/users/profile"

.field public static final URL_USER_BEHAVIOR_APPRAISE:Ljava/lang/String; = "/api/v1/user_behavior/inc_envious_after_appraise"

.field public static final URL_USER_BEHAVIOR_SHARE:Ljava/lang/String; = "/api/v1/user_behavior/inc_envious_after_share"

.field public static final URL_USER_TIMELINE:Ljava/lang/String; = "/api/v1/user_timeline"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBroadcasts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 523
    const-string v0, "/api/v1/broadcasts/clear"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 524
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 58
    const-string v0, "/api/v1/notifications/clear"

    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public static createBlocks(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 233
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 234
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 235
    const-string v1, "/api/v1/blocks"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 236
    return-void
.end method

.method public static createFriendshipList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 194
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_ids"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/util/List;)V

    .line 195
    const-string v1, "/api/v1/friendships"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public static createFriendships(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 187
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 188
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 189
    const-string v1, "/api/v1/friendships"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method public static createUsersChangeProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 548
    const-string v0, "/api/v1/users/change_profile"

    invoke-static {v0, p1, p2, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 549
    return-void
.end method

.method public static deleteFeedbacks(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "post_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 381
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 382
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "/api/v1/posts/%1$d/feedbacks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 383
    return-void
.end method

.method public static deleteFriendships(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 206
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 207
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_key"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 209
    const-string v1, "/api/v1/friendships"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public static deleteFriendships(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nick_name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 220
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 221
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "nick_name"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "/api/v1/friendships"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method public static deleteMc(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 463
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 464
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "/api/v1/mc/delete"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 466
    return-void
.end method

.method public static deletePost(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "post_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 356
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 357
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "/api/v1/posts/%1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method public static getAdvertisement(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 501
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 502
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "positions[]"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "/api/v1/advertisements"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 504
    return-void
.end method

.method public static getAndroidRecommends(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 437
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 438
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "version"

    invoke-static {}, Lcom/boohee/utility/Config;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "channel"

    invoke-static {p0}, Lcom/boohee/utility/Config;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "/api/v1/android_recommends"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 441
    return-void
.end method

.method public static getBroadcasts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 513
    const-string v0, "/api/v1/broadcasts"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 514
    return-void
.end method

.method public static getClearNearNby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "district"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 284
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 285
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "province"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "city"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "district"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "/api/v1/users/nearby"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method public static getComments(Landroid/content/Context;IILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "post_id"    # I
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 408
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 409
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 410
    const-string v1, "/api/v1/posts/%1$d/comments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 411
    return-void
.end method

.method public static getFollowers(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 343
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 344
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 345
    const-string v1, "/api/v1/followers"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 346
    return-void
.end method

.method public static getFollowings(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 318
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 319
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 320
    const-string v1, "/api/v1/followings"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method public static getFollowingsSearch(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 331
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 332
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "/api/v1/followings"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 334
    return-void
.end method

.method public static getHomeTimeline(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 74
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 75
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "/api/v1/home_timeline"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public static getMcPeriods(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 451
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 452
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "/api/v1/mc_periods"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 453
    return-void
.end method

.method public static getMcPeriodsLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 488
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 489
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "/api/v1/mc_periods/latest"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 490
    return-void
.end method

.method public static getMcPeriodsMonth(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year_month"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 475
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 476
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "year_month"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "/api/v1/mc_periods/month"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 478
    return-void
.end method

.method public static getMyPreviousTimeline(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previous_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 113
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 114
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 115
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "/api/v1/user_timeline"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public static getMyTimeline(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 100
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 101
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "/api/v1/user_timeline"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public static getNotifications(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 612
    const-string v0, "/api/v1/notifications"

    invoke-static {v0, p1, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 613
    return-void
.end method

.method public static getNotificationsPrevious(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 623
    const-string v0, "/api/v1/notifications"

    invoke-static {v0, p1, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 624
    return-void
.end method

.method public static getPreviousHomeTimeline(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previous_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 87
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 88
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 89
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "/api/v1/home_timeline"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public static getTabbarSettings(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 582
    const-string v0, "/api/v1/tabbar_settings"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 583
    return-void
.end method

.method public static getUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 62
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 63
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "status_api_version"

    const-string v2, "1.3"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "/api/v1/notifications/unread_count"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public static getUserAlike(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 298
    const-string v0, "/api/v1/users/alike"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 299
    return-void
.end method

.method public static getUserBehaviorAppraise(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 633
    const-string v0, "/api/v1/user_behavior/inc_envious_after_appraise"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 634
    return-void
.end method

.method public static getUserNearNby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "province"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "district"    # Ljava/lang/String;
    .param p5, "lng"    # Ljava/lang/String;
    .param p6, "lat"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 264
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 265
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "province"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "city"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "district"

    invoke-virtual {v0, v1, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "lng"

    invoke-virtual {v0, v1, p5}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "lat"

    invoke-virtual {v0, v1, p6}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "/api/v1/users/nearby"

    invoke-static {v1, v0, p7, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 272
    return-void
.end method

.method public static getUserPreviousTimelineById(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "previous_id"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 172
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 173
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 175
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "/api/v1/user_timeline"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public static getUserPreviousTimelineByNickName(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "previous_id"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 142
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 143
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 145
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "/api/v1/user_timeline"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public static getUserRecommended(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 308
    const-string v0, "/api/v1/users/recommended"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 309
    return-void
.end method

.method public static getUserSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 245
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 246
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 248
    const-string v1, "/api/v1/users/search"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public static getUserTimelineById(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 157
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 158
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "/api/v1/user_timeline"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public static getUserTimelineByNickName(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 127
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 128
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "status_api_version"

    const-string v2, "1.1"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "/api/v1/user_timeline"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public static getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 558
    const-string v0, "/api/v1/users/profile"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 559
    return-void
.end method

.method public static putFeedbacks(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "post_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 393
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 394
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "type"

    const-string v2, "envious"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "/api/v1/posts/%1$d/feedbacks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 396
    return-void
.end method

.method public static putUserBehaviorShare(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 643
    const-string v0, "/api/v1/user_behavior/inc_envious_after_share"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/OneClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 644
    return-void
.end method

.method public static repostPost(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "post_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 369
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 370
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "/api/v1/posts/%1$d/repost"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 371
    return-void
.end method

.method public static sendComments(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "post_id"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 422
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 423
    .local v1, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 425
    .local v0, "body":Lcom/boohee/one/http/JsonParams;
    const-string v2, "body"

    invoke-virtual {v0, v2, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v2, "comment"

    invoke-virtual {v1, v2, v0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 427
    const-string v2, "/api/v1/posts/%1$d/comments"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p3, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 428
    return-void
.end method

.method public static updateMcUpdateSummaries(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "cycle"    # I
    .param p3, "record_on"    # Ljava/lang/String;
    .param p4, "end_on"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 596
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 597
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "duration"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 598
    const-string v1, "cycle"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 599
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v1, "end_on"

    invoke-virtual {v0, v1, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "/api/v1/mc/update_summaries"

    invoke-static {v1, v0, p5, p0}, Lcom/boohee/one/http/client/OneClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 602
    return-void
.end method

.method public static updateMcUpdateSummaries(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 570
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 571
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    invoke-virtual {v0, p1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v1, "/api/v1/mc/update_summaries"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/OneClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 573
    return-void
.end method

.method public static updateUsersChangeProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 535
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 536
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    invoke-virtual {v0, p1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v1, "/api/v1/users/change_profile"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/OneClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 538
    return-void
.end method
