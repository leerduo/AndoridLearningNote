.class public Lcom/boohee/model/chanllenge/WalkChallengData;
.super Ljava/lang/Object;
.source "WalkChallengData.java"


# instance fields
.field public header_info:Ljava/lang/String;

.field public members_count:I

.field public mine:Lcom/boohee/model/chanllenge/WalkingRank;

.field public page:I

.field public ranks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/WalkingRank;",
            ">;"
        }
    .end annotation
.end field

.field public total_pages:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
