.class Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;
.super Lcom/mob/tools/FakeActivity;
.source "PlatformListFakeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;

    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v1, "editRes"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "editRes"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 208
    .local v0, "editRes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;

    invoke-interface {v1, v0}, Lcn/sharesdk/onekeyshare/ThemeShareCallback;->doShare(Ljava/util/HashMap;)V

    goto :goto_0
.end method
