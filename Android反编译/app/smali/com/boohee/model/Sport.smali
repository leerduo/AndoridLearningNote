.class public Lcom/boohee/model/Sport;
.super Ljava/lang/Object;
.source "Sport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UNIT_AMOUNT:I = 0x3c

.field public static final UNIT_NAME:Ljava/lang/String; = "\u5206\u949f"

.field private static final serialVersionUID:J = 0x5807fabb5e60429L


# instance fields
.field public big_photo_url:Ljava/lang/String;

.field public group_id:I

.field public id:I

.field public inice_photo_url:Ljava/lang/String;

.field public mets:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public score:I

.field public small_photo_url:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcCalory(F)I
    .locals 6
    .param p1, "weight"    # F

    .prologue
    .line 22
    const-wide v2, 0x3ff570a3d70a3d71L    # 1.34

    iget-object v1, p0, Lcom/boohee/model/Sport;->mets:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    float-to-double v4, v1

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 23
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
    .line 27
    const-wide v2, 0x3ff570a3d70a3d71L    # 1.34

    iget-object v1, p0, Lcom/boohee/model/Sport;->mets:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

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

    .line 28
    .local v0, "calory":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
