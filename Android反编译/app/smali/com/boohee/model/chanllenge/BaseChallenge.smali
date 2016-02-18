.class public Lcom/boohee/model/chanllenge/BaseChallenge;
.super Ljava/lang/Object;
.source "BaseChallenge.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/boohee/model/chanllenge/BaseChallenge;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEMPLATE_CLOCK_OUT:Ljava/lang/String; = "clock_out"

.field public static final TEMPLATE_FLEX:Ljava/lang/String; = "flex"

.field public static final TEMPLATE_WAGER:Ljava/lang/String; = "wager"

.field public static final TEMPLATE_WALKING:Ljava/lang/String; = "walking"


# instance fields
.field public allow_discuss:Z

.field public allow_quit:Z

.field public avatar_url:Ljava/lang/String;

.field public data_source:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public detail_url:Ljava/lang/String;

.field public id:I

.field public isJoined:Z

.field public isRecommend:Z

.field public max:I

.field public members_count:I

.field public min:I

.field public name:Ljava/lang/String;

.field public open_discuss:Z

.field public page_title:Ljava/lang/String;

.field public page_url:Ljava/lang/String;

.field public posts_count:I

.field public template:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/boohee/model/chanllenge/BaseChallenge$1;

    invoke-direct {v0}, Lcom/boohee/model/chanllenge/BaseChallenge$1;-><init>()V

    sput-object v0, Lcom/boohee/model/chanllenge/BaseChallenge;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->open_discuss:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_quit:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v4, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->open_discuss:Z

    .line 79
    iput-boolean v5, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_quit:Z

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->min:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->unit:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->avatar_url:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->title:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->max:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->members_count:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->posts_count:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->isRecommend:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->detail_url:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_discuss:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->open_discuss:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_quit:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->page_title:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->page_url:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_6

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 134
    goto :goto_0

    :cond_1
    move v3, v5

    .line 135
    goto :goto_1

    :cond_2
    move v3, v5

    .line 137
    goto :goto_2

    :cond_3
    move v3, v5

    .line 138
    goto :goto_3

    :cond_4
    move v3, v5

    .line 139
    goto :goto_4

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    :cond_5
    move v3, v5

    .line 146
    goto :goto_6

    .line 148
    .end local v2    # "key":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 94
    iget v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->min:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->unit:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->avatar_url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->title:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->max:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->members_count:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->posts_count:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->isRecommend:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->detail_url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_discuss:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->open_discuss:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-boolean v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->allow_quit:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->page_title:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->page_url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 114
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    if-lez v0, :cond_6

    .line 116
    iget-object v3, p0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_5

    .end local v0    # "N":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    move v3, v5

    .line 104
    goto :goto_0

    :cond_1
    move v3, v5

    .line 105
    goto :goto_1

    :cond_2
    move v3, v5

    .line 107
    goto :goto_2

    :cond_3
    move v3, v5

    .line 108
    goto :goto_3

    :cond_4
    move v3, v5

    .line 109
    goto :goto_4

    .restart local v0    # "N":I
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    move v3, v5

    .line 118
    goto :goto_6

    .line 121
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method
