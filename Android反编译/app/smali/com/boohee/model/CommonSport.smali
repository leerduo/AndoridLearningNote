.class public Lcom/boohee/model/CommonSport;
.super Lcom/boohee/model/ModelBase;
.source "CommonSport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x167934742259b7f6L


# instance fields
.field public group_id:I

.field public mets:F

.field public name:Ljava/lang/String;

.field public photo_url:Ljava/lang/String;

.field public score:I

.field public sport_id:I

.field public status:I

.field public updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "group_id"    # I
    .param p3, "sport_id"    # I
    .param p4, "mets"    # F
    .param p5, "score"    # I
    .param p6, "photo_url"    # Ljava/lang/String;
    .param p7, "status"    # I
    .param p8, "updated_at"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/boohee/model/CommonSport;->name:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/boohee/model/CommonSport;->group_id:I

    .line 22
    iput p3, p0, Lcom/boohee/model/CommonSport;->sport_id:I

    .line 23
    iput p4, p0, Lcom/boohee/model/CommonSport;->mets:F

    .line 24
    iput p5, p0, Lcom/boohee/model/CommonSport;->score:I

    .line 25
    iput-object p6, p0, Lcom/boohee/model/CommonSport;->photo_url:Ljava/lang/String;

    .line 26
    iput p7, p0, Lcom/boohee/model/CommonSport;->status:I

    .line 27
    iput-object p8, p0, Lcom/boohee/model/CommonSport;->updated_at:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public calcCalory(F)I
    .locals 6
    .param p1, "weight"    # F

    .prologue
    .line 31
    const-wide v2, 0x3ff570a3d70a3d71L    # 1.34

    iget v1, p0, Lcom/boohee/model/CommonSport;->mets:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 32
    .local v0, "calory":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public calcCalory(FI)I
    .locals 6
    .param p1, "weight"    # F
    .param p2, "duration"    # I

    .prologue
    .line 36
    const-wide v2, 0x3ff570a3d70a3d71L    # 1.34

    iget v1, p0, Lcom/boohee/model/CommonSport;->mets:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    int-to-double v4, p2

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 37
    .local v0, "calory":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
