.class Lcom/boohee/one/ui/HelpInfoActivity$MOnGroupExpandableListener;
.super Ljava/lang/Object;
.source "HelpInfoActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/HelpInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MOnGroupExpandableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/HelpInfoActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/HelpInfoActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/boohee/one/ui/HelpInfoActivity$MOnGroupExpandableListener;->this$0:Lcom/boohee/one/ui/HelpInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/HelpInfoActivity;Lcom/boohee/one/ui/HelpInfoActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/HelpInfoActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/HelpInfoActivity$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/HelpInfoActivity$MOnGroupExpandableListener;-><init>(Lcom/boohee/one/ui/HelpInfoActivity;)V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 83
    return-void
.end method
