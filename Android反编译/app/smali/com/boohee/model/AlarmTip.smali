.class public Lcom/boohee/model/AlarmTip;
.super Lcom/boohee/model/ModelBase;
.source "AlarmTip.java"


# instance fields
.field public code:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 9
    iput p1, p0, Lcom/boohee/model/AlarmTip;->id:I

    .line 10
    iput-object p2, p0, Lcom/boohee/model/AlarmTip;->message:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/boohee/model/AlarmTip;->code:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/boohee/model/AlarmTip;->name:Ljava/lang/String;

    .line 13
    return-void
.end method
