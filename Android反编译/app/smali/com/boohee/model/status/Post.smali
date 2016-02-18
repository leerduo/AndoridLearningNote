.class public Lcom/boohee/model/status/Post;
.super Ljava/lang/Object;
.source "Post.java"


# static fields
.field public static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field public static final SPORT_TYPE:Ljava/lang/String; = "sport"

.field public static final WEIGHT_TYPE:Ljava/lang/String; = "weight"


# instance fields
.field public attachments:Lcom/boohee/model/status/AttachMent;

.field public body:Ljava/lang/String;

.field public comment_count:I

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public created_at:Ljava/lang/String;

.field public current_reposted_user:Ljava/lang/String;

.field public disabled:Z

.field public envious_count:I

.field public favorite:Z

.field public feedback:Ljava/lang/String;

.field public id:I

.field public isPrivate:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "private"
    .end annotation
.end field

.field public isTop:Z

.field public original_post_user:Ljava/lang/String;

.field public own:Z

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public repost:Z

.field public reposted:Z

.field public reposted_count:I

.field public type:Ljava/lang/String;

.field public user:Lcom/boohee/model/status/StatusUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v2, Lcom/boohee/model/status/Post$1;

    invoke-direct {v2}, Lcom/boohee/model/status/Post$1;-><init>()V

    invoke-virtual {v2}, Lcom/boohee/model/status/Post$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 65
    .local v1, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, v2, Lcom/google/gson/Gson;

    if-nez v3, :cond_0

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Ljava/util/ArrayList;

    .line 67
    .end local v1    # "listType":Ljava/lang/reflect/Type;
    :goto_1
    return-object v2

    .line 65
    .restart local v1    # "listType":Ljava/lang/reflect/Type;
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, p0, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 66
    .end local v1    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public static parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/Post;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 56
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    instance-of v2, p0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_1
    const-class v3, Lcom/boohee/model/status/Post;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/boohee/model/status/Post;

    .line 57
    .local v0, "post":Lcom/boohee/model/status/Post;
    goto :goto_0

    .line 56
    .end local v0    # "post":Lcom/boohee/model/status/Post;
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public static removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 79
    :cond_0
    const/4 p0, 0x0

    .line 88
    .end local p0    # "posts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/boohee/model/status/Post;>;"
    :goto_0
    return-object p0

    .line 81
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/boohee/model/status/Post;>;"
    .restart local p0    # "posts":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/boohee/model/status/Post;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    .line 84
    .local v1, "post":Lcom/boohee/model/status/Post;
    iget-boolean v2, v1, Lcom/boohee/model/status/Post;->disabled:Z

    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 88
    .end local v1    # "post":Lcom/boohee/model/status/Post;
    :cond_3
    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0
.end method
