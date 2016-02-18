.class public Lcom/boohee/model/mine/WeightRecord;
.super Lcom/boohee/model/mine/BaseRecord;
.source "WeightRecord.java"


# instance fields
.field public cachePhotos:Ljava/lang/String;

.field public created_at:Ljava/lang/String;

.field public photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/boohee/model/mine/BaseRecord;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "weight"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "created_at"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/boohee/model/mine/BaseRecord;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/boohee/model/mine/WeightRecord;->created_at:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "weight"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "created_at"    # Ljava/lang/String;
    .param p4, "cachePhotos"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/boohee/model/mine/BaseRecord;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/boohee/model/mine/WeightRecord;->created_at:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/boohee/model/mine/WeightRecord;->cachePhotos:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "weight"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/WeightPhoto;>;"
    invoke-direct {p0}, Lcom/boohee/model/mine/BaseRecord;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 21
    return-void
.end method
