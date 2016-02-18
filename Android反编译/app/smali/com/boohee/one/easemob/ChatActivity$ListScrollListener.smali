.class Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/easemob/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/easemob/ChatActivity;)V
    .locals 0

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/easemob/ChatActivity;Lcom/boohee/one/easemob/ChatActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/easemob/ChatActivity;
    .param p2, "x1"    # Lcom/boohee/one/easemob/ChatActivity$1;

    .prologue
    .line 1576
    invoke-direct {p0, p1}, Lcom/boohee/one/easemob/ChatActivity$ListScrollListener;-><init>(Lcom/boohee/one/easemob/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1625
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1580
    .line 1620
    return-void
.end method
