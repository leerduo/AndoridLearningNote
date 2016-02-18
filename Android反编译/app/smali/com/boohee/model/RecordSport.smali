.class public Lcom/boohee/model/RecordSport;
.super Ljava/lang/Object;
.source "RecordSport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activity_id:I

.field public activity_name:Ljava/lang/String;

.field public calory:F

.field public duration:F

.field public id:I

.field public isChecked:Z

.field public mets:F

.field public record_on:Ljava/lang/String;

.field public thumb_img_url:Ljava/lang/String;

.field public unit_name:Ljava/lang/String;

.field public user_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/boohee/model/RecordSport$1;

    invoke-direct {v0}, Lcom/boohee/model/RecordSport$1;-><init>()V

    sput-object v0, Lcom/boohee/model/RecordSport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/model/RecordSport;->isChecked:Z

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FILjava/lang/String;FLjava/lang/String;FLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "duration"    # F
    .param p4, "activity_id"    # I
    .param p5, "activity_name"    # Ljava/lang/String;
    .param p6, "calory"    # F
    .param p7, "unit_name"    # Ljava/lang/String;
    .param p8, "mets"    # F
    .param p9, "user_key"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/model/RecordSport;->isChecked:Z

    .line 34
    iput p1, p0, Lcom/boohee/model/RecordSport;->id:I

    .line 35
    iput-object p2, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/boohee/model/RecordSport;->duration:F

    .line 37
    iput p4, p0, Lcom/boohee/model/RecordSport;->activity_id:I

    .line 38
    iput-object p5, p0, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    .line 39
    iput p6, p0, Lcom/boohee/model/RecordSport;->calory:F

    .line 40
    iput-object p7, p0, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    .line 41
    iput p8, p0, Lcom/boohee/model/RecordSport;->mets:F

    .line 42
    iput-object p9, p0, Lcom/boohee/model/RecordSport;->user_key:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/boohee/model/RecordSport;->isChecked:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordSport;->id:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordSport;->duration:F

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordSport;->activity_id:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordSport;->calory:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordSport;->mets:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/boohee/model/RecordSport;->isChecked:Z

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/boohee/model/RecordSport;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    instance-of v2, p0, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    const-class v3, Lcom/boohee/model/RecordSport;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_1

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/boohee/model/RecordSport;

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    return-object v1

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static parseList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "res"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/model/RecordSport$2;

    invoke-direct {v3}, Lcom/boohee/model/RecordSport$2;-><init>()V

    invoke-virtual {v3}, Lcom/boohee/model/RecordSport$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/ArrayList;

    .line 112
    :goto_1
    return-object v1

    .line 107
    :cond_0
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public calcCalory(F)I
    .locals 6
    .param p1, "weight"    # F

    .prologue
    .line 46
    const-wide v2, 0x3ff570a3d70a3d71L    # 1.34

    iget v1, p0, Lcom/boohee/model/RecordSport;->mets:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 47
    .local v0, "calory":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public caloryWithDuration(F)I
    .locals 2
    .param p1, "duration"    # F

    .prologue
    .line 51
    const/high16 v0, 0x42700000    # 60.0f

    div-float v0, p1, v0

    iget v1, p0, Lcom/boohee/model/RecordSport;->calory:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/boohee/model/RecordSport;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    iget v0, p0, Lcom/boohee/model/RecordSport;->activity_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/boohee/model/RecordSport;->calory:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 67
    iget-object v0, p0, Lcom/boohee/model/RecordSport;->thumb_img_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/boohee/model/RecordSport;->mets:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    iget-boolean v0, p0, Lcom/boohee/model/RecordSport;->isChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
