.class public Lcom/boohee/model/Alarm;
.super Lcom/boohee/model/ModelBase;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/Alarm$AlarmType;
    }
.end annotation


# static fields
.field public static final BREAKFAST:Ljava/lang/String; = "breakfast"

.field public static final DINNER:Ljava/lang/String; = "dinner"

.field public static final DRINK1:Ljava/lang/String; = "drink1"

.field public static final DRINK2:Ljava/lang/String; = "drink2"

.field public static final DRINK3:Ljava/lang/String; = "drink3"

.field public static final DRINK4:Ljava/lang/String; = "drink4"

.field public static final DRINK5:Ljava/lang/String; = "drink5"

.field public static final DRINK6:Ljava/lang/String; = "drink6"

.field public static final DRINK7:Ljava/lang/String; = "drink7"

.field public static final DRINK8:Ljava/lang/String; = "drink8"

.field public static final GREEDY:Ljava/lang/String; = "greedy"

.field public static final LAUNCH:Ljava/lang/String; = "lunch"

.field public static final MORNING:Ljava/lang/String; = "morning"

.field public static final SNACK1:Ljava/lang/String; = "snack1"

.field public static final SNACK2:Ljava/lang/String; = "snack2"

.field public static final SNACK3:Ljava/lang/String; = "snack3"

.field public static final SPORT:Ljava/lang/String; = "sport"

.field public static final TYPE_SNACK1:I = 0x1

.field public static final TYPE_SNACK2:I = 0x2

.field public static final TYPE_SNACK3:I = 0x3


# instance fields
.field public code:Ljava/lang/String;

.field public daysofweek:Ljava/lang/String;

.field public enabled:I

.field public hour:I

.field public minute:I

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "enabled"    # I
    .param p6, "type"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 37
    iput p1, p0, Lcom/boohee/model/Alarm;->id:I

    .line 38
    iput-object p2, p0, Lcom/boohee/model/Alarm;->code:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/boohee/model/Alarm;->hour:I

    .line 40
    iput p4, p0, Lcom/boohee/model/Alarm;->minute:I

    .line 41
    iput p5, p0, Lcom/boohee/model/Alarm;->enabled:I

    .line 42
    iput p6, p0, Lcom/boohee/model/Alarm;->type:I

    .line 43
    return-void
.end method

.method private format(I)Ljava/lang/String;
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 50
    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public formatTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/boohee/model/Alarm;->hour:I

    invoke-direct {p0, v1}, Lcom/boohee/model/Alarm;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/boohee/model/Alarm;->minute:I

    invoke-direct {p0, v1}, Lcom/boohee/model/Alarm;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is_open()Z
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x1

    .line 55
    .local v0, "is_open":Z
    iget v1, p0, Lcom/boohee/model/Alarm;->enabled:I

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return v0

    .line 57
    :pswitch_0
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 60
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
