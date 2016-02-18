.class public Lcom/boohee/main/FeedBackSwitcher;
.super Ljava/lang/Object;
.source "FeedBackSwitcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFeedbackTime()Z
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 19
    .local v1, "now":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 20
    .local v0, "hour":I
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 21
    const/4 v2, 0x1

    .line 23
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
