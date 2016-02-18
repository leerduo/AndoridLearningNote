.class public Lcom/boohee/one/video/manager/VideoPreference;
.super Ljava/lang/Object;
.source "VideoPreference.java"


# static fields
.field public static final KEY_BGM:Ljava/lang/String; = "KEY_BGM"

.field public static final KEY_BGM_IS_OPEN:Ljava/lang/String; = "bgm_is_open"

.field public static final PREF_NAME:Ljava/lang/String; = "SPORT_VIDEO"

.field public static final TODAY_IS_COMPLETE:Ljava/lang/String; = "today_is_complete"

.field private static preference:Landroid/content/SharedPreferences;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "SPORT_VIDEO"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method


# virtual methods
.method public getBgm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    const-string v1, "KEY_BGM"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBgmOpen()Z
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    const-string v1, "bgm_is_open"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDownloaded(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBgm(Ljava/lang/String;)V
    .locals 2
    .param p1, "bgm"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_BGM"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    :cond_0
    return-void
.end method

.method public putBgmState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 59
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bgm_is_open"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    return-void
.end method

.method public putComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public putDownload(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 25
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public putNotDownload(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 29
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public todayIsComplete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/boohee/one/video/manager/VideoPreference;->preference:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
