.class public Lcom/boohee/model/chanllenge/ClockOutCommentData;
.super Ljava/lang/Object;
.source "ClockOutCommentData.java"


# instance fields
.field public clock_out_summary:Lcom/boohee/model/chanllenge/ClockOutPost;

.field public comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public comments_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/model/chanllenge/ClockOutCommentData;->comments:Ljava/util/List;

    return-void
.end method
