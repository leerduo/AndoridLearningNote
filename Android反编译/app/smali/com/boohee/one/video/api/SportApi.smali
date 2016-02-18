.class public Lcom/boohee/one/video/api/SportApi;
.super Ljava/lang/Object;
.source "SportApi.java"


# static fields
.field public static final DASH_BOARD:Ljava/lang/String; = "/api/v1/lessons/dashboard"

.field public static final EXERCIZE_DETAIL:Ljava/lang/String; = "/api/v1/exercise_plans/"

.field public static final GET_SPORT_PLAN_V3:Ljava/lang/String; = "/api/v1/lessons/courses"

.field public static final GIVE_UP_LESSON:Ljava/lang/String; = "/api/v1/sport_progresses/giveup"

.field public static final POST_JOURNAL_FINISH:Ljava/lang/String; = "/api/v1/sports_journals/finish"

.field public static final POST_LESSON_AGAIN:Ljava/lang/String; = "/api/v1/lessons/again"

.field public static final POST_NEXT_LESSON:Ljava/lang/String; = "/api/v1/lessons/next"

.field public static final POST_SPORTS_JOURNALS:Ljava/lang/String; = "/api/v1/sports_journals"

.field public static final SAVE_PROGRESS:Ljava/lang/String; = "/api/v1/sport_progresses"

.field public static final SPECIAL_LESSON:Ljava/lang/String; = "/api/v1/trainings"

.field public static final URL_LESSONS_SECTION:Ljava/lang/String; = "/api/v1/sections/"

.field public static final URL_LESSON_AGAIN:Ljava/lang/String; = "/api/v1/sport_progresses/again"

.field public static final URL_LESSON_PROGRESS_BEGIN:Ljava/lang/String; = "/api/v1/sport_progresses/begin"

.field public static final URL_LSEEON_COMPLETED:Ljava/lang/String; = "/api/v1/sport_progresses/finish"

.field public static final URL_QUESTION:Ljava/lang/String; = "http://shop.boohee.com/store/pages/befit"

.field public static final URL_TODAY_LESSONS:Ljava/lang/String; = "/api/v1/lessons/today"

.field public static final URL_VIDEO_HISTORY:Ljava/lang/String; = "/api/v1/sport_progresses"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExerciseDetail(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/exercise_plans/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public static getLessonDetail(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sectionId"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/sections/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public static getSpecialLessonDetail(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/trainings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public static getSportPlan(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 117
    const-string v0, "/api/v1/lessons/courses"

    invoke-static {v0, p1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public static getTodayLessons(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 113
    const-string v0, "/api/v1/lessons/today"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public static getVideoHistory(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I
    .param p2, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 152
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 153
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 155
    const-string v1, "/api/v1/sport_progresses"

    invoke-static {v1, v0, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public static postGiveUpLesson(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "section_id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 67
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 68
    .local v1, "sport_progress":Lcom/boohee/one/http/JsonParams;
    const-string v2, "section_id"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 69
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 70
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "sport_progress"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 71
    const-string v2, "/api/v1/sport_progresses/giveup"

    invoke-static {v2, v1, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static postJournalFinish(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "section_id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 99
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 100
    .local v1, "sport_progress":Lcom/boohee/one/http/JsonParams;
    const-string v2, "section_id"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 101
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 102
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "sports_journals"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 103
    const-string v2, "/api/v1/sports_journals/finish"

    invoke-static {v2, v1, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static postLessonAgain(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lesson_id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 136
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 137
    .local v1, "sport_progress":Lcom/boohee/one/http/JsonParams;
    const-string v2, "lesson_id"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 138
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 139
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "sport_progress"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 140
    const-string v2, "/api/v1/sport_progresses/again"

    invoke-static {v2, v0, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public static postLessonAgain(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 75
    const-string v0, "/api/v1/lessons/again"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public static postLessonCompleted(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lesson_id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 144
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 145
    .local v1, "sport_progress":Lcom/boohee/one/http/JsonParams;
    const-string v2, "lesson_id"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 146
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 147
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "sport_progress"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 148
    const-string v2, "/api/v1/sport_progresses/finish"

    invoke-static {v2, v0, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method public static postLessonNext(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 79
    const-string v0, "/api/v1/lessons/next"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public static postLessonProgress(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lesson_id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 164
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 165
    .local v1, "sport_progress":Lcom/boohee/one/http/JsonParams;
    const-string v2, "section_id"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 166
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 167
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "sport_progress"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 168
    const-string v2, "/api/v1/sport_progresses/begin"

    invoke-static {v2, v0, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public static postSportProgress(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonParams"    # Lcom/boohee/one/http/JsonParams;
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 132
    const-string v0, "/api/v1/sport_progresses"

    invoke-static {v0, p1, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public static postSportsJournals(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "section_id"    # I
    .param p2, "jsonCallback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 91
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 92
    .local v1, "sport_progress":Lcom/boohee/one/http/JsonParams;
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 94
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "sports_journals"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 95
    const-string v2, "/api/v1/sports_journals"

    invoke-static {v2, v1, p2, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 96
    return-void
.end method
