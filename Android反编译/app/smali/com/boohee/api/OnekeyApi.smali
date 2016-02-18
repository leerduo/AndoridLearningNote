.class public Lcom/boohee/api/OnekeyApi;
.super Ljava/lang/Object;
.source "OnekeyApi.java"


# static fields
.field public static final BOOKINGS:Ljava/lang/String; = "/api/v1/bookings"

.field public static final CELLPHONE_VERIFICATION:Ljava/lang/String; = "/api/v1/cellphone_verification"

.field public static final CELLPHONE_VERIFICATION_CHECK:Ljava/lang/String; = "/api/v1/cellphone_verification/check"

.field public static final CITIES:Ljava/lang/String; = "/api/v1/cities"

.field public static final CITIES_CHOOSE:Ljava/lang/String; = "/api/v1/cities/choose"

.field public static final CONSULTORS:Ljava/lang/String; = "/api/v1/consultors"

.field public static final CONSULTOR_INFO:Ljava/lang/String; = "/api/v1/consultors/introduce.html"

.field public static final CONSULTOR_UNREAD_COUNT:Ljava/lang/String; = "/api/v1/conversations/status"

.field public static final HOME_API:Ljava/lang/String; = "/api/v1/home/cards"

.field public static final HOME_HEADER:Ljava/lang/String; = "/api/v1/home/talk"

.field public static final MESSAGE_HISTORY:Ljava/lang/String; = "/api/v1/messages/history?count=20"

.field public static final POST_MESSAGE:Ljava/lang/String; = "/api/v1/posts?page=%s"

.field public static final PROFILES:Ljava/lang/String; = "/api/v1/profiles"

.field public static final QUESTION_URL:Ljava/lang/String; = "/api/v1/questions/init.html"

.field public static final SEND_CONTACT_MESSAGE:Ljava/lang/String; = "/api/v1/messages"

.field public static final SOLUTIONS:Ljava/lang/String; = "/api/v1/solutions"

.field public static final STATUS:Ljava/lang/String; = "/api/v1/user/status"

.field public static final USERS:Ljava/lang/String; = "/api/v1/user"

.field public static final WORK_TIMES:Ljava/lang/String; = "/api/v1/work_times"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCityList(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 88
    const-string v0, "/api/v1/cities/choose"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 89
    return-void
.end method
