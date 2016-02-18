.class public Lcom/boohee/model/MonthMc$Section;
.super Ljava/lang/Object;
.source "MonthMc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/model/MonthMc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Section"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field final synthetic this$0:Lcom/boohee/model/MonthMc;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/boohee/model/MonthMc;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/boohee/model/MonthMc$Section;->this$0:Lcom/boohee/model/MonthMc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
