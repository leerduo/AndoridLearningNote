.class public Lcom/boohee/model/RecordFood;
.super Lcom/boohee/model/ModelBase;
.source "RecordFood.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public amount:F

.field public calory:F

.field public code:Ljava/lang/String;

.field public food_name:Ljava/lang/String;

.field public food_unit_id:I

.field public health_light:I

.field public isChecked:Z

.field public record_on:Ljava/lang/String;

.field public thumb_img_url:Ljava/lang/String;

.field public time_type:I

.field public unit_name:Ljava/lang/String;

.field public user_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/boohee/model/RecordFood$1;

    invoke-direct {v0}, Lcom/boohee/model/RecordFood$1;-><init>()V

    sput-object v0, Lcom/boohee/model/RecordFood;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/model/RecordFood;->isChecked:Z

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FILjava/lang/String;F)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "user_key"    # Ljava/lang/String;
    .param p3, "food_name"    # Ljava/lang/String;
    .param p4, "time_type"    # I
    .param p5, "record_on"    # Ljava/lang/String;
    .param p6, "code"    # Ljava/lang/String;
    .param p7, "amount"    # F
    .param p8, "food_unit_id"    # I
    .param p9, "unit_name"    # Ljava/lang/String;
    .param p10, "calory"    # F

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/boohee/model/RecordFood;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FILjava/lang/String;F)V

    .line 43
    iput p1, p0, Lcom/boohee/model/RecordFood;->id:I

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/boohee/model/RecordFood;->isChecked:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordFood;->id:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordFood;->time_type:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordFood;->amount:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordFood;->calory:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordFood;->food_unit_id:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/boohee/model/RecordFood;->health_light:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/model/RecordFood;->thumb_img_url:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/boohee/model/RecordFood;->isChecked:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FILjava/lang/String;F)V
    .locals 1
    .param p1, "user_key"    # Ljava/lang/String;
    .param p2, "food_name"    # Ljava/lang/String;
    .param p3, "time_type"    # I
    .param p4, "record_on"    # Ljava/lang/String;
    .param p5, "code"    # Ljava/lang/String;
    .param p6, "amount"    # F
    .param p7, "food_unit_id"    # I
    .param p8, "unit_name"    # Ljava/lang/String;
    .param p9, "calory"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/model/RecordFood;->isChecked:Z

    .line 29
    iput-object p1, p0, Lcom/boohee/model/RecordFood;->user_key:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/boohee/model/RecordFood;->time_type:I

    .line 32
    iput-object p4, p0, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    .line 34
    iput p6, p0, Lcom/boohee/model/RecordFood;->amount:F

    .line 35
    iput p7, p0, Lcom/boohee/model/RecordFood;->food_unit_id:I

    .line 36
    iput-object p8, p0, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    .line 37
    iput p9, p0, Lcom/boohee/model/RecordFood;->calory:F

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/boohee/model/RecordFood;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/boohee/model/RecordFood;->time_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/boohee/model/RecordFood;->amount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    iget v0, p0, Lcom/boohee/model/RecordFood;->calory:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 60
    iget v0, p0, Lcom/boohee/model/RecordFood;->food_unit_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/boohee/model/RecordFood;->health_light:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/boohee/model/RecordFood;->thumb_img_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/boohee/model/RecordFood;->isChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
