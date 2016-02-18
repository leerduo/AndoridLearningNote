.class public Lcom/boohee/model/SuccessStory;
.super Ljava/lang/Object;
.source "SuccessStory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/SuccessStory$Tag;,
        Lcom/boohee/model/SuccessStory$ItemsEntity;,
        Lcom/boohee/model/SuccessStory$SlidersEntity;
    }
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$ItemsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public sliders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$SlidersEntity;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/SuccessStory$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method
