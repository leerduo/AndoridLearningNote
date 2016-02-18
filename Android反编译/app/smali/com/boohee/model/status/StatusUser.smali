.class public Lcom/boohee/model/status/StatusUser;
.super Ljava/lang/Object;
.source "StatusUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field

.field public static final DONOR:Ljava/lang/String; = "donor"

.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final EVENT_DONOR:Ljava/lang/String; = "event_donor"

.field public static final OFFICIAL:Ljava/lang/String; = "official"

.field public static final VALIDATED:Ljava/lang/String; = "validated"


# instance fields
.field public address:Ljava/lang/String;

.field public avatar_url:Ljava/lang/String;

.field public bmi:F

.field public description:Ljava/lang/String;

.field public envious_count:I

.field public follower_count:I

.field public following:Z

.field public following_count:I

.field public gender:Ljava/lang/String;

.field public hateful_count:I

.field public id:I

.field public invited:Z

.field public jealous_count:I

.field public light:Z

.field public location:[F

.field public nickname:Ljava/lang/String;

.field public post_count:I

.field public realname:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/boohee/model/status/StatusUser$2;

    invoke-direct {v0}, Lcom/boohee/model/status/StatusUser$2;-><init>()V

    sput-object v0, Lcom/boohee/model/status/StatusUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "avatar_url"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/boohee/model/status/StatusUser;->id:I

    .line 54
    iput-object p2, p0, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->id:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->realname:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->location:[F

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->address:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->bmi:F

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->gender:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->follower_count:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->following_count:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->post_count:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->envious_count:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->jealous_count:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/status/StatusUser;->hateful_count:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/boohee/model/status/StatusUser;->following:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/boohee/model/status/StatusUser;->invited:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/boohee/model/status/StatusUser;->light:Z

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v0, v2

    .line 145
    goto :goto_1

    :cond_2
    move v1, v2

    .line 147
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/boohee/model/status/StatusUser$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/boohee/model/status/StatusUser$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/boohee/model/status/StatusUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/status/StatusUser;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 61
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
    const-class v3, Lcom/boohee/model/status/StatusUser;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/boohee/model/status/StatusUser;

    .line 62
    .local v0, "user":Lcom/boohee/model/status/StatusUser;
    goto :goto_0

    .line 61
    .end local v0    # "user":Lcom/boohee/model/status/StatusUser;
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

.method public static parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Lcom/boohee/model/status/StatusUser$1;

    invoke-direct {v2}, Lcom/boohee/model/status/StatusUser$1;-><init>()V

    invoke-virtual {v2}, Lcom/boohee/model/status/StatusUser$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 68
    .local v0, "listType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    instance-of v3, v2, Lcom/google/gson/Gson;

    if-nez v3, :cond_0

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/ArrayList;

    .line 69
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/StatusUser;>;"
    return-object v1

    .line 68
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/StatusUser;>;"
    :cond_0
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, p0, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public displayCount(I)Ljava/lang/String;
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 73
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 74
    const-string v0, "%.1f\u4e07"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v3, p1

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAvatarTagResource()I
    .locals 2

    .prologue
    .line 85
    const-string v0, "official"

    iget-object v1, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const v0, 0x7f02060e

    .line 96
    :goto_0
    return v0

    .line 87
    :cond_0
    const-string v0, "donor"

    iget-object v1, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const v0, 0x7f02060f

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "validated"

    iget-object v1, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const v0, 0x7f020610

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "event"

    iget-object v1, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const v0, 0x7f02060c

    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "event_donor"

    iget-object v1, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const v0, 0x7f02060d

    goto :goto_0

    .line 96
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->realname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->location:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 111
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->bmi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 113
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->follower_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->following_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->post_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->envious_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->jealous_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/boohee/model/status/StatusUser;->hateful_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean v0, p0, Lcom/boohee/model/status/StatusUser;->following:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-boolean v0, p0, Lcom/boohee/model/status/StatusUser;->invited:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-object v0, p0, Lcom/boohee/model/status/StatusUser;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Lcom/boohee/model/status/StatusUser;->light:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v0, v2

    .line 123
    goto :goto_1

    :cond_2
    move v1, v2

    .line 125
    goto :goto_2
.end method
