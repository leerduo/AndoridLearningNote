.class public Lcom/boohee/model/chanllenge/ClockOutPost;
.super Ljava/lang/Object;
.source "ClockOutPost.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clock_outs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRecord;",
            ">;"
        }
    .end annotation
.end field

.field public clock_outs_count:I

.field public comments_count:I

.field public created_at:Ljava/lang/String;

.field public envious_count:I

.field public id:I

.field public isEnvious:Z

.field public user:Lcom/boohee/model/status/StatusUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/boohee/model/chanllenge/ClockOutPost$1;

    invoke-direct {v0}, Lcom/boohee/model/chanllenge/ClockOutPost$1;-><init>()V

    sput-object v0, Lcom/boohee/model/chanllenge/ClockOutPost;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->id:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->envious_count:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->comments_count:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs_count:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->created_at:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->isEnvious:Z

    .line 58
    const-class v0, Lcom/boohee/model/status/StatusUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/StatusUser;

    iput-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->user:Lcom/boohee/model/status/StatusUser;

    .line 59
    iget-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    sget-object v1, Lcom/boohee/model/chanllenge/ClockOutRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/boohee/model/chanllenge/ClockOutPost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/boohee/model/chanllenge/ClockOutPost$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/boohee/model/chanllenge/ClockOutPost;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    iget v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->envious_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->comments_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->created_at:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->isEnvious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->user:Lcom/boohee/model/status/StatusUser;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0
.end method
