.class Lcn/sharesdk/onekeyshare/OnekeyShare$1;
.super Ljava/lang/Object;
.source "OnekeyShare.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/ThemeShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/OnekeyShare;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShare;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doShare(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare$1;->this$0:Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->share(Ljava/util/HashMap;)V

    .line 122
    return-void
.end method
