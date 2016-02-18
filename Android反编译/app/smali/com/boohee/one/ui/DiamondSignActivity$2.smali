.class Lcom/boohee/one/ui/DiamondSignActivity$2;
.super Ljava/lang/Object;
.source "DiamondSignActivity.java"

# interfaces
.implements Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/DiamondSignActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/DiamondSignActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/DiamondSignActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/boohee/one/ui/DiamondSignActivity$2;->this$0:Lcom/boohee/one/ui/DiamondSignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 159
    const-string v0, "AnimCheckBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Lcom/boohee/database/OnePreference;->setPrefDiamondSignRemind(Z)V

    .line 161
    return-void
.end method
