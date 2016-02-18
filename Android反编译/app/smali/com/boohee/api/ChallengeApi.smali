.class public Lcom/boohee/api/ChallengeApi;
.super Ljava/lang/Object;
.source "ChallengeApi.java"


# static fields
.field public static final CHALLENGE_HISTORY:Ljava/lang/String; = "/api/v1/challenges/history"

.field public static final CHALLENGE_HOME:Ljava/lang/String; = "/api/v1/challenges/%1$d"

.field public static final CHALLENGE_POSTS:Ljava/lang/String; = "/api/v1/challenges/%1$d/posts"

.field public static final CHENLLENGE_MEMBERS:Ljava/lang/String; = "/api/v1/challenges/%1$d/members?page=%2$d&per_page=%3$d"

.field public static final CREATE_CLOCK_OUT:Ljava/lang/String; = "/api/v1/challenges/%1$d/clock_outs"

.field public static final CREATE_CLOCK_OUT_COMMENTS:Ljava/lang/String; = "/api/v1/clock_out_summaries/%1$d/comments"

.field public static final CREATE_CLOCK_OUT_FEEDBACK:Ljava/lang/String; = "/api/v1/clock_out_summaries/%1$d/feedback"

.field public static final CREATE_WALKING_FEEDBACK:Ljava/lang/String; = "/api/v1/walkings/%d/users/%d/feedback"

.field public static final DEFAULT_PER_PAGE:I = 0x14

.field public static final DELETE_CHALLENGE:Ljava/lang/String; = "/api/v1/challenges/%1$d/members"

.field public static final DELETE_CLOCK_OUT_COMMENTS:Ljava/lang/String; = "/api/v1/clock_out_summaries/%1$d/comments/%2$d"

.field public static final DELETE_CLOCK_OUT_FEEDBACK:Ljava/lang/String; = "/api/v1/clock_out_summaries/%1$d/feedback"

.field public static final GET_CHALLENGES:Ljava/lang/String; = "/api/v1/challenges?page=%1$d&per_page=%2$d"

.field public static final GET_CHALLENGE_POSTS:Ljava/lang/String; = "/api/v1/challenges/%1$d/posts"

.field public static final GET_CLOCK_OUTS:Ljava/lang/String; = "/api/v1/challenges/%1$d/clock_outs?page=%2$d&per_page=%3$d"

.field public static final GET_CLOCK_OUTS_RANKS:Ljava/lang/String; = "/api/v1/clock_outs/%1$d/ranks?page=%2$d&per_page=%3$d"

.field public static final GET_CLOCK_OUT_COMMENTS:Ljava/lang/String; = "/api/v1/clock_out_summaries/%1$d/comments?page=%2$d&per_page=%3$d"

.field public static final GET_WALKING_RANKS:Ljava/lang/String; = "/api/v1/walkings/%1$d/ranks?page=%2$d&per_page=%3$d"

.field public static final JOIN_CHALLENGE:Ljava/lang/String; = "/api/v1/challenges/%1$d/members"

.field public static final MY_CHALLENGES:Ljava/lang/String; = "/api/v1/challenges/my"

.field public static final UPLOAD_WALKING_STEPS:Ljava/lang/String; = "/api/v1/challenges/%d/walkings"

.field public static final USER_GUIDE_CHALLENGES:Ljava/lang/String; = "/api/v1/challenges/guide?page=%1$d&per_page=%2$d"

.field public static final WAGER_WEIGHT:Ljava/lang/String; = "/api/v1/wagers/%d/weights"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static challengePosts(ILcom/boohee/model/status/Post;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "challenge_id"    # I
    .param p1, "post"    # Lcom/boohee/model/status/Post;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 184
    const-string v0, "/api/v1/challenges/%1$d/posts"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public static createClockOut(ILcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "challenge_id"    # I
    .param p1, "params"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 216
    const-string v0, "/api/v1/challenges/%1$d/clock_outs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public static createClockOutComment(ILjava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "clock_out_summary_id"    # I
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 268
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 269
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "/api/v1/clock_out_summaries/%1$d/comments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public static createClockOutFeedback(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "clock_out_summary_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 227
    const-string v0, "/api/v1/clock_out_summaries/%1$d/feedback"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method public static createWalkingFeedback(ZIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "isFav"    # Z
    .param p1, "challengeId"    # I
    .param p2, "userId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    if-eqz p0, :cond_0

    .line 294
    const-string v0, "/api/v1/walkings/%d/users/%d/feedback"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v0, "/api/v1/walkings/%d/users/%d/feedback"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteChallenge(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "challenge_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 99
    const-string v0, "/api/v1/challenges/%1$d/members"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public static deleteClockOutComment(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "clock_out_summary_id"    # I
    .param p1, "comment_id"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 282
    const-string v0, "/api/v1/clock_out_summaries/%1$d/comments/%2$d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public static deleteClockOutFeedback(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "clock_out_summary_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 238
    const-string v0, "/api/v1/clock_out_summaries/%1$d/feedback"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method public static exitChallenge(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "challenge_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 84
    const-string v0, "/api/v1/challenges/%1$d/members"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public static getChallengeHistory(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 88
    const-string v0, "/api/v1/challenges/history"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public static getChallengeHome(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "challenge_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 126
    :try_start_0
    const-string v1, "mock/challenge_home.json"

    invoke-static {p1, v1}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    const-string v1, "/api/v1/challenges/%1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChallengeMembers(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "challenge_id"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 143
    if-gtz p1, :cond_0

    move p1, v1

    .line 144
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 146
    :cond_1
    :try_start_0
    const-string v2, "mock/challenge_members.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const-string v2, "/api/v1/challenges/%1$d/members?page=%2$d&per_page=%3$d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 151
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChallengePosts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "challenge_id"    # I
    .param p1, "previous_id"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    :try_start_0
    const-string v1, "mock/challenge_posts.json"

    invoke-static {p2, v1}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    if-lez p1, :cond_0

    .line 168
    const-string v1, "/api/v1/challenges/%1$d/posts?previous_id=%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 172
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v1, "/api/v1/challenges/%1$d/posts"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getChallenges(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "page"    # I
    .param p1, "per_page"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 62
    if-gtz p0, :cond_0

    move p0, v1

    .line 63
    :cond_0
    if-gtz p1, :cond_1

    const/16 p1, 0x14

    .line 65
    :cond_1
    :try_start_0
    const-string v2, "mock/challenges.json"

    invoke-static {p2, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const-string v2, "/api/v1/challenges?page=%1$d&per_page=%2$d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getClockOutComments(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "clock_out_summary_id"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 250
    if-gtz p1, :cond_0

    move p1, v1

    .line 251
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 253
    :cond_1
    :try_start_0
    const-string v2, "mock/clock_out_comments.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    const-string v2, "/api/v1/clock_out_summaries/%1$d/comments?page=%2$d&per_page=%3$d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getClockOuts(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "id"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 196
    if-gtz p1, :cond_0

    move p1, v1

    .line 197
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 199
    :cond_1
    :try_start_0
    const-string v2, "mock/clock_outs.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    const-string v2, "/api/v1/challenges/%1$d/clock_outs?page=%2$d&per_page=%3$d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getClockOutsRanks(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "challengeId"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 309
    if-gtz p1, :cond_0

    move p1, v1

    .line 310
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 312
    :cond_1
    :try_start_0
    const-string v2, "mock/clock_outs_ranks.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    const-string v2, "/api/v1/clock_outs/%1$d/ranks?page=%2$d&per_page=%3$d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 317
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getClockOutsRanksHistory(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "challengeId"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 328
    if-gtz p1, :cond_0

    move p1, v1

    .line 329
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 331
    :cond_1
    :try_start_0
    const-string v2, "mock/clock_outs_ranks.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    const-string v2, "/api/v1/clock_outs/%1$d/ranks?page=%2$d&per_page=%3$d&last=true"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 336
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMyChallenges(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 110
    :try_start_0
    const-string v1, "mock/my_challenges.json"

    invoke-static {p0, v1}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const-string v1, "/api/v1/challenges/my"

    invoke-static {v1, p1, p0}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 115
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserGuideChallenges(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "page"    # I
    .param p1, "per_page"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v0, 0x1

    .line 437
    if-gtz p0, :cond_0

    move p0, v0

    .line 438
    :cond_0
    if-gtz p1, :cond_1

    const/16 p1, 0x14

    .line 439
    :cond_1
    const-string v1, "/api/v1/challenges/guide?page=%1$d&per_page=%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 440
    return-void
.end method

.method public static getWagerWeight(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 5
    .param p0, "wager_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 367
    :try_start_0
    const-string v1, "mock/wagerWeight.json"

    invoke-static {p1, v1}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    const-string v1, "/api/v1/wagers/%d/weights"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 372
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWalkingRanks(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "challenge_id"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 348
    if-gtz p1, :cond_0

    move p1, v1

    .line 349
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 351
    :cond_1
    :try_start_0
    const-string v2, "mock/walking_ranks.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    const-string v2, "/api/v1/walkings/%1$d/ranks?page=%2$d&per_page=%3$d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 356
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWalkingRanksHistory(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 6
    .param p0, "challenge_id"    # I
    .param p1, "page"    # I
    .param p2, "per_page"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    const/4 v1, 0x1

    .line 408
    if-gtz p1, :cond_0

    move p1, v1

    .line 409
    :cond_0
    if-gtz p2, :cond_1

    const/16 p2, 0x14

    .line 411
    :cond_1
    :try_start_0
    const-string v2, "mock/walking_ranks.json"

    invoke-static {p3, v2}, Lcom/boohee/utils/AssetUtils;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/boohee/one/http/JsonCallback;->setMock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    const-string v2, "/api/v1/walkings/%1$d/ranks?page=%2$d&per_page=%3$d&last=true"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p4, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 416
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static joinChallenge(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "challenge_id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 80
    const-string v0, "/api/v1/challenges/%1$d/members"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public static postWagerWeight(ILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 4
    .param p0, "wager_id"    # I
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    const-string v0, "/api/v1/wagers/%d/weights"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 384
    return-void
.end method

.method public static putWagerWeight(ILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 4
    .param p0, "wager_id"    # I
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    const-string v0, "/api/v1/wagers/%d/weights"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/boohee/one/http/client/StatusClient;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 396
    return-void
.end method

.method public static uploadWalkingSteps(ILcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "challengeId"    # I
    .param p1, "params"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 427
    const-string v0, "/api/v1/challenges/%d/walkings"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 428
    return-void
.end method
