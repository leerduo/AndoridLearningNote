.class public Lcom/boohee/model/status/ClubHome;
.super Ljava/lang/Object;
.source "ClubHome.java"


# instance fields
.field public act_page_url:Ljava/lang/String;

.field public avatar_url:Ljava/lang/String;

.field public banner_url:Ljava/lang/String;

.field public cover_url:Ljava/lang/String;

.field public exp_page_url:Ljava/lang/String;

.field public id:I

.field public members_count:I

.field public name:Ljava/lang/String;

.field public thumb_img_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public top_members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Member;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/model/status/ClubHome;->id:I

    return-void
.end method
