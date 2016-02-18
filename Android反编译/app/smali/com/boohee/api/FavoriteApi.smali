.class public Lcom/boohee/api/FavoriteApi;
.super Ljava/lang/Object;
.source "FavoriteApi.java"


# static fields
.field public static final ARTICLE_ADD_FAVORITE:Ljava/lang/String; = "/api/v1/favorite_articles"

.field public static final ARTICLE_CHECK:Ljava/lang/String; = "/api/v1/favorite_articles/check"

.field public static final ARTICLE_DELETE_FAVORITE:Ljava/lang/String; = "/api/v1/favorite_articles/%d"

.field public static final ARTICLE_GET_FAVORITE:Ljava/lang/String; = "/api/v1/favorite_articles?page=%1$d&per_page=%2$d"

.field public static final POST_ADD_FAVORITE:Ljava/lang/String; = "/api/v1/posts/%d/favorite"

.field public static final POST_DELETE_FAVORITE:Ljava/lang/String; = "/api/v1/posts/%d/unfavorite"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFavoriteArticle(Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 1
    .param p0, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "/api/v1/favorite_articles"

    invoke-static {v0, p0, p1, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public static addFavoritePost(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 5
    .param p0, "postId"    # I
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v1, "/api/v1/posts/%d/favorite"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public static checkFavoriteArticle(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v0, "/api/v1/favorite_articles/check"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public static deleteFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 4
    .param p0, "articleId"    # I
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v0, "/api/v1/favorite_articles/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/boohee/one/http/client/StatusClient;->delete(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public static deleteFavoritePost(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 5
    .param p0, "postId"    # I
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-string v1, "/api/v1/posts/%d/unfavorite"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/boohee/one/http/client/StatusClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public static getFavoriteArticle(IILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 5
    .param p0, "page"    # I
    .param p1, "perPage"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v1, "/api/v1/favorite_articles?page=%1$d&per_page=%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public static getFavoriteArticle(ILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V
    .locals 1
    .param p0, "page"    # I
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/16 v0, 0x14

    invoke-static {p0, v0, p1, p2}, Lcom/boohee/api/FavoriteApi;->getFavoriteArticle(IILcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 49
    return-void
.end method
