.class public Lcom/boohee/api/StatusApi;
.super Ljava/lang/Object;
.source "StatusApi.java"


# static fields
.field public static final BET_WEIGHT:Ljava/lang/String; = "/api/v1/bets/%1$d/order/%2$d/bet_weight"

.field public static final CHECK_IN:Ljava/lang/String; = "/api/v1/checkin"

.field public static final CHECK_IN_RECORD:Ljava/lang/String; = "/api/v1/checkin/month"

.field public static final CLEAR_STORY_DOT:Ljava/lang/String; = "/api/v1/app_square/%1$d/touch_dot_block"

.field public static final CLUBS:Ljava/lang/String; = "/api/v1/clubs/%d"

.field public static final CLUB_MEMBERS:Ljava/lang/String; = "/api/v1/clubs/%d/club_members"

.field public static final GET_BET_WEIGHT:Ljava/lang/String; = "/api/v1/bets/%1$d/order/%2$d/bet_weights/weight_info"

.field public static final GET_HOME_BLOCKS:Ljava/lang/String; = "/api/v1/app_square/entry"

.field public static final GET_PARTNER_BLOCKS:Ljava/lang/String; = "/api/v1/app_square/entrance"

.field public static final GET_STORY_COMMENT:Ljava/lang/String; = "/api/v1/stories/%1$s/story_comments"

.field public static final GET_STORY_INFO:Ljava/lang/String; = "/api/v1/stories/%1$s/info"

.field public static final PRAISE_STORY:Ljava/lang/String; = "/api/v1/stories/%1$s/story_feedbacks"

.field public static final REPAIR:Ljava/lang/String; = "/api/v1/checkin/repair"

.field public static final URL_CHANNEL_POSTS:Ljava/lang/String; = "/api/v1/channels/posts"

.field public static final URL_CHANNEL_POSTS_PREVIOUS:Ljava/lang/String; = "/api/v1/channels/posts"

.field public static final URL_CLUB_POSTS:Ljava/lang/String; = "/api/v1/clubs/%1$d/club_posts"

.field public static final URL_CLUB_POSTS_PREVIOUS:Ljava/lang/String; = "/api/v1/clubs/%1$d/club_posts"

.field public static final URL_GET_START_UP:Ljava/lang/String; = "/api/v1/app_square/start_up"

.field public static final URL_GET_USERS_PROFILE_FULL:Ljava/lang/String; = "/api/v1/user_profile/full"

.field public static final URL_MILESTONES_FULL_MENU:Ljava/lang/String; = "/api/v1/milestones/full_menu"

.field public static final URL_MILESTONES_RESET:Ljava/lang/String; = "/api/v1/milestones/reset"

.field public static final URL_RECOMMENDED:Ljava/lang/String; = "/api/v1/recommended_posts"

.field public static final URL_RECOMMENDED_MEALS:Ljava/lang/String; = "/api/v1/food_square/recommended_meals"

.field public static final URL_RECOMMENDED_PREVIOUS:Ljava/lang/String; = "/api/v1/recommended_posts"

.field public static final URL_REPORT:Ljava/lang/String; = "/api/v1/reports"

.field public static final URL_TOPIC:Ljava/lang/String; = "/api/v1/topics/posts"

.field public static final URL_TOPICS_RECENT:Ljava/lang/String; = "/api/v1/topics/recent"

.field public static final URL_TOPIC_CHOICE:Ljava/lang/String; = "/api/v1/topics/choices"

.field public static final URL_TOPIC_PREVIOUS:Ljava/lang/String; = "/api/v1/topics/posts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIn(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 337
    const-string v0, "/api/v1/checkin"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public static clearStroyDot(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 85
    const-string v0, "/api/v1/app_square/%1$d/touch_dot_block"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public static deleteMileStonesReset(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 188
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 189
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "/api/v1/milestones/reset"

    invoke-static {v1, v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method public static getBetWeight(Landroid/content/Context;IILcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bet_id"    # I
    .param p2, "order_id"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 373
    const-string v0, "/api/v1/bets/%1$d/order/%2$d/bet_weights/weight_info"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 374
    return-void
.end method

.method public static getChannelPosts(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 136
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 137
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "slug"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "/api/v1/channels/posts"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public static getChannelPostsPrevious(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previous_id"    # I
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 150
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 151
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 152
    const-string v1, "slug"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "/api/v1/channels/posts"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public static getCheckIn(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 327
    const-string v0, "/api/v1/checkin"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 328
    return-void
.end method

.method public static getCheckNumber(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 363
    const-string v0, "/api/v1/checkin"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 364
    return-void
.end method

.method public static getCheckRecord(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "year_month"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 357
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 358
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "year_month"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "/api/v1/checkin/month"

    invoke-static {v1, v0, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 360
    return-void
.end method

.method public static getClubPosts(Landroid/content/Context;ILjava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "club_id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 254
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 255
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "/api/v1/clubs/%1$d/club_posts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 257
    return-void
.end method

.method public static getClubPostsPrevious(Landroid/content/Context;ILjava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "club_id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "previous_id"    # I
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 268
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 269
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 271
    const-string v1, "/api/v1/clubs/%1$d/club_posts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p4, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 272
    return-void
.end method

.method public static getHomeBlocks(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 310
    :try_start_0
    const-string v1, "mock/home_blocks.json"

    invoke-static {p0, v1}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    const-string v1, "/api/v1/app_square/entry"

    invoke-static {v1, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 315
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMileStonesFullMenu(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 199
    const-string v0, "/api/v1/milestones/full_menu"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method public static getMoreCategory(Ljava/lang/String;ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "more_url"    # Ljava/lang/String;
    .param p1, "page"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 175
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 176
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 177
    invoke-static {p0, v0, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public static getPartnerBlocks(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 319
    :try_start_0
    const-string v1, "mock/partner.json"

    invoke-static {p0, v1}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    const-string v1, "/api/v1/app_square/entrance"

    invoke-static {v1, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPreviousRecommended(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previous_id"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 123
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 124
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 125
    const-string v1, "/api/v1/recommended_posts"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public static getRecommended(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 112
    const-string v0, "/api/v1/recommended_posts"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public static getRecommendedMeals(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "meal_type"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 228
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 229
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "meal_type"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 231
    const-string v1, "/api/v1/food_square/recommended_meals"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public static getStartUpUrl(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 102
    const-string v0, "/api/v1/app_square/start_up"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public static getStoryComment(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 69
    const-string v0, "/api/v1/stories/%1$s/story_comments"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static getStoryInfo(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 81
    const-string v0, "/api/v1/stories/%1$s/info"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public static getTopicPosts(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 282
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 283
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "/api/v1/topics/posts"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method public static getTopicPostsPrevious(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "previous_id"    # I
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 296
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 297
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "previous_id"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 299
    const-string v1, "/api/v1/topics/posts"

    invoke-static {v1, v0, p3, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method public static getTopicsRecent(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 163
    const-string v0, "/api/v1/topics/recent"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public static getUsersProfileFull(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 95
    const-string v0, "/api/v1/user_profile/full"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public static postBetWeight(Landroid/content/Context;IILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bet_id"    # I
    .param p2, "order_id"    # I
    .param p3, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 383
    const-string v0, "/api/v1/bets/%1$d/order/%2$d/bet_weight"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4, p0}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 384
    return-void
.end method

.method public static postReport(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 212
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 213
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 214
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "/api/v1/reports"

    invoke-static {v1, v0, p4, p0}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public static postStoryComment(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 60
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 61
    .local v1, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "token"

    invoke-static {p2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 63
    .local v0, "body":Lcom/boohee/one/http/JsonParams;
    const-string v2, "body"

    invoke-virtual {v0, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "story_comment"

    invoke-virtual {v1, v2, v0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 65
    const-string v2, "/api/v1/stories/%1$s/story_comments"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public static praiseStory(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 77
    const-string v0, "/api/v1/stories/%1$s/story_feedbacks"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public static putBetWeight(Landroid/content/Context;IILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bet_id"    # I
    .param p2, "order_id"    # I
    .param p3, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 393
    const-string v0, "/api/v1/bets/%1$d/order/%2$d/bet_weight"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4, p0}, Lcom/boohee/one/http/client/StatusClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 394
    return-void
.end method

.method public static repair(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 344
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 345
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "date"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "/api/v1/checkin/repair"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 347
    return-void
.end method

.method public static sendPost(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 243
    invoke-static {p1, p2, p3, p0}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method public static unPraiseStory(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 73
    const-string v0, "/api/v1/stories/%1$s/story_feedbacks"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 74
    return-void
.end method
